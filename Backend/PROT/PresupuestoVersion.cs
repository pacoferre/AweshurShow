using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;
using LCC.Negocio.Tarifas;
using LCC.Negocio.Divisiones;
using LCC.Negocio.Bases;
using LCC.Negocio.Clientes;
using LCC.Negocio.Presupuestos.Impresion;
using LCC.Negocio.SistemaNumeracion;

namespace LCC.Negocio.Presupuestos
{
	public class PresupuestoVersion : BaseNegocio
	{
		private BasePresupuesto pres = null;
		private PresupuestoContacto pc = null;
        private string firmaAnterior = "";

		public PresupuestoVersion()
		{
			string sql;

			fila = new Fila("PresupuestoVersion");
			nombre = "Versión de Presupuesto";
			genero = "a";
			sinPermisoLeer = true;

			sql = "SELECT PresupuestoVersionDetalle.*"
				+ " FROM PresupuestoVersionDetalle INNER JOIN"
				+ " PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT INNER JOIN"
				+ " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa"
				+ " WHERE (PresupuestoVersionDetalle.IDPresupuestoVersion = {0})"
				+ " ORDER BY Tarifa.Codigo";
			objetosSub.Add("ColPresupuestoVersionDetalle", new ColPresupuestoVersionDetalle(this, "IDPresupuestoVersion", sql));
		}

		#region Gestión de registro

        private string FirmaVersion
        {
            get
            {
                StringBuilder firma = new StringBuilder(100);
                string sql = "SELECT PresupuestoVersionDetalle.Unidades, PresupuestoVersionDetalle.DivisorUnidades, PresupuestoVersionDetalle.Aceptada, PresupuestoVersionDetalle.AceptadaGeo,"
                    + " PresupuestoVersionDetalle.Imprimir, PresupuestoYTarifa.IDTarifa, PresupuestoYTarifa.Precio, PresupuestoYTarifa.Concepto"
                    + " FROM PresupuestoVersionDetalle INNER JOIN"
                    + " PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT"
                    + " WHERE PresupuestoVersionDetalle.IDPresupuestoVersion = " + this.IDActual[0].ToString();
                DataTable dt = Datos.Instancia().getDataTable(sql);

                foreach (DataRow dr in dt.Rows)
                {
                    foreach (DataColumn dc in dt.Columns)
                    {
                        firma.Append("_" + dr[dc.ColumnName].ToString());
                    }
                }

                return firma.ToString();
            }
        }

        public override void LeerObjetosAsociados()
        {
            base.LeerObjetosAsociados();

            firmaAnterior = FirmaVersion;
        }

        public override void Guardar(bool conPermisos)
        {
            bool rehacerDocumentos = false;

            if (!Nuevo && !Eliminar)
            {
                rehacerDocumentos = true;
            }

            if (Eliminar)
            {
                Datos.Instancia().executeSQL("Delete From PresupuestoVersionDocumento Where IDPresupuestoVersion = " + this.IDActual[0]);
            }

            base.Guardar(conPermisos);

            if (rehacerDocumentos)
            {
                if (firmaAnterior != FirmaVersion)
                {
                    foreach(BaseNegocio b in ObjetoAsociado("Presupuesto").Coleccion("ColPresupuestoVersionDocumento"))
                    {
                        if (!b.Nuevo && Lib.NoIntNulo(b["IDPresupuestoVersion"]) == this.IDActual[0]
                            && !(b["IDGenDocModelo"] is DBNull))
                        {
                            b.Metodo(null, "ProcesarProcesando");
                            b.Guardar();
                        }
                    }
                }
            }
        }

        private object FiltroIDTitulo = DBNull.Value;
        private object FiltroIDMaterial = DBNull.Value;

		public override object this[string campo]
		{
			get
			{
                if (campo == "FiltroIDTitulo")
                {
                    return FiltroIDTitulo;
                }
                else if (campo == "FiltroIDMaterial")
                {
                    return FiltroIDMaterial;
                }
                else
                {
                    if (!this.ExisteCampo(campo))
                    {
                        if (ObjetoAsociado("Presupuesto").ExisteCampo(campo))
                        {
                            return pres[campo];
                        }
                    }

                    return base[campo];
                }
			}
			set
			{
                if (campo == "FiltroIDTitulo")
                {
                    FiltroIDTitulo = value;

                    //if (ProveedorListas.ObjetoProveedorNegocio.FiltroActivado("Tarifa"))
                    //{
                        ProveedorListas.ObjetoProveedorNegocio.RecuperaFiltro("Tarifa", null)["Tarifa_IDTitulo"] = value.ToString();
                    //}
                    //else
                    //{
                    //    ProveedorListas.ObjetoProveedorNegocio.RecuperaFiltro("Tarifa", new Tarifa())["Tarifa_IDTitulo"] = value.ToString();
                    //}
                }
                else if (campo == "FiltroIDMaterial")
                {
                    FiltroIDMaterial = value;
                    ProveedorListas.ObjetoProveedorNegocio.RecuperaFiltro("Tarifa", null)["Tarifa_IDMaterial"] = value.ToString();
                
                }
                else
                {
                    if (this.ExisteCampo(campo))
                    {
                        base[campo] = value;
                    }
                }
			}
		}

        /// <summary>
        /// Establece los valores por defecto para un objeto nuevo.
        /// </summary>
		public override void ValoresPorDefecto()
		{
			this["Version"] = 0;
			this["FechaEmision"] = System.DateTime.Today;
			this["Principal"] = true;
			this["Aceptado"] = false;
			this["Ampliacion"] = false;
			this["Modificacion"] = false;
			this["Descartado"] = false;
		}

		public override void ValoresPorDefecto(BaseNegocio origen)
		{
			if (origen is Presupuesto)
			{
				bool existePrincipalAceptada = false;
				ColPresupuestoVersion col = (ColPresupuestoVersion) ObjetoAsociado("Presupuesto").Coleccion("ColPresupuestoVersion");

				this["IDPresupuesto"] = origen["IDPresupuesto"];

				foreach (BaseNegocio b in col)
				{
					if ((int)this["Version"] <= (int) b["Version"])
					{
						this["Version"] = (int)b["Version"] + 1;
					}
					if ((bool)b["Principal"] && (bool)b["Aceptado"])
					{
						existePrincipalAceptada = true;
					}
				}

				// Si no hay presupuestos pues lo dejamos como está.

				if (col.Count > 0)
				{
                    this["Principal"] = false;
                    if (existePrincipalAceptada)
                    {
                        this["Ampliacion"] = true;
                    }
                    else
                    {
                        // Copiar las unidades y tarifas de la última versión.

                        int posicion = 0;
                        ColPresupuestoVersionDetalle colPDT = (ColPresupuestoVersionDetalle)Coleccion("ColPresupuestoVersionDetalle");

                        foreach (BaseNegocio bdt in col[col.Count - 1].Coleccion("ColPresupuestoVersionDetalle"))
                        {
                            colPDT.CrearLinea((int) bdt["IDTarifa"], ref posicion);
                        }
                    }
				}
			}

			base.ValoresPorDefecto(origen);
		}
		#endregion

		#region Objetos Asociados
		/// <summary>
		/// Devuelve Objetos BaseNegocio por nombre.
		/// En general, depende de la situación actual del objeto, de los valores de this.
		/// </summary>
		/// <param name="Nombre">El nombre del Objeto Asociado</param>
		public override BaseNegocio ObjetoAsociado(string Nombre)
		{
			if (Nombre == "Presupuesto" || Nombre == "Oportunidad")
			{
				// Clavado en PresupuestoVersionDocumento
				bool hecho = false;

				if (Padre != null)
				{
					if (Padre.Padre != null)
					{
						if (Padre.Padre is Oportunidad)
						{
							pres = (BasePresupuesto)RecuperaObjetoAsociado((BaseNegocio)pres, "Oportunidad", "IDPresupuesto");
						}
						else
						{
							pres = (BasePresupuesto)RecuperaObjetoAsociado((BaseNegocio)pres, "Presupuesto", "IDPresupuesto");
						}
						hecho = true;
					}
				}
				if (!hecho)
				{
					pres = (BasePresupuesto)RecuperaObjetoAsociado((BaseNegocio)pres, "Presupuesto", "IDPresupuesto");
				}

				return pres;
			}

			if (Nombre == "PresupuestoContacto")
			{
				pc = (PresupuestoContacto)RecuperaObjetoAsociado((BaseNegocio)pc, "PresupuestoContacto", "IDPresupuestoContacto");

				return pc;
			}

			if (Padre != null)
			{
				if (Padre.Padre != null)
				{
					if (Padre.Padre is Oportunidad)
					{
						return ObjetoAsociado("Oportunidad").ObjetoAsociado(Nombre);
					}
				}
			}

			return ObjetoAsociado("Presupuesto").ObjetoAsociado(Nombre);
		}
		#endregion

		#region Permisos
		public override bool MetodoPermitido(string NombreMetodo)
		{
			if (NombreMetodo == "Restaurar" || NombreMetodo == "ModificarLineas")  // Cuidao que se usa desde PresupuestoVersionDetalle
			{
				return PermisoModificar && !((bool)this["Aceptado"]);
			}
			if (NombreMetodo == "Nuevas")
			{
				return PermisoModificar;
			}
			if (NombreMetodo == "EliminarLineasSeleccionadas")
			{
                if (UsuarioActual.Permiso("BD", "PresupuestoVersion", "EliminarLineas"))
                {
                    return PermisoModificar;
                }
                else
                {
                    return PermisoModificar && !((bool)this["Aceptado"]);
                }
			}
			if (NombreMetodo == "EstablecerVersionPrincipal")
			{
				return PermisoModificar && !((bool)this["Principal"]) && !(AceptadoPresupuesto);
			}
			if (NombreMetodo == "AceptarAmpliacion")
			{
				return PermisoModificar && (!(bool)this["Aceptado"]) && (bool)this["Ampliacion"];
			}

			return base.MetodoPermitido(NombreMetodo);
		}

        public override bool PermisoEliminar
        {
            get
            {
                return base.PermisoEliminar;
            }
        }
		#endregion

		#region Métodos Públicos
		public void CopiarTarifas(PresupuestoVersion origenPV)
		{
			ColPresupuestoVersionDetalle cpv = (ColPresupuestoVersionDetalle) this.Coleccion("ColPresupuestoVersionDetalle");
			ColPresupuestoVersionDetalle cpvOrigen = (ColPresupuestoVersionDetalle) origenPV.Coleccion("ColPresupuestoVersionDetalle");

			foreach (BaseNegocio orig in cpvOrigen)
			{
				bool encontrado = false;
				foreach (BaseNegocio existente in cpv)
				{
					if ((int) orig["IDPyT"] == (int) existente["IDPyT"])
					{
						encontrado = true;
						break;
					}
				}

				if (!encontrado)
				{
					cpv.CrearEnBlanco();

					cpv.ObjetoActivo["IDPyT"] = orig["IDPyT"];

					cpv.AnexarObjetoActivo();
				}
			}
		}

		public bool AceptadoPresupuesto
		{
			get
			{
				return ((bool)this["Aceptado"] || (bool) ObjetoAsociado("Presupuesto")["Aceptado"]);
			}
		}

		public bool AceptadoAhoraVersion
		{
			get
			{
				return Datos.Instancia().DameExpresionBool("Select Aceptado From PresupuestoVersion"
						+ " WHERE IDPresupuestoVersion = " + IDActual[0]);
			}
		}

		public bool AceptadoAhoraPresupuesto
		{
			get
			{
				return ((BasePresupuesto) ObjetoAsociado("Presupuesto")).AceptadoAhora
					|| AceptadoAhoraVersion;
			}
		}

		/// <summary>
		/// Realiza llamadas a Métodos de la clase por nombre.
		/// Se pueden realizar cosas como pag.Response.Redirect para abrir otras ventanas.
		/// ErrorMensaje se presentará al usuario.
		/// </summary>
		/// <param name="pag">Objeto Pagina ASPX, mejorable.</param>
		/// <param name="Nombre">Nombre de Método.</param>
		public override void Metodo(System.Web.UI.Page pag, string NombreMetodo)
		{
			if (NombreMetodo == "DireccionAlternativaADelegacion")
			{
				ErrorMensaje = "";

				if (this["IDCliente"] is DBNull)
				{
					ErrorMensaje = "No hay un cliente seleccionado.";
				}
				if (!(this["IDClienteDelegacion"] is DBNull) && ErrorMensaje == "")
				{
					ErrorMensaje = "Ya tiene seleccionada una delegación.";
				}
				if (this["Direccion"] + "" == "" && ErrorMensaje == "")
				{
					ErrorMensaje = "La dirección está en blanco.";
				}

				if (ErrorMensaje == "")
				{
					this["IDClienteDelegacion"] = ClienteDelegacion.CrearClienteDelegacionGenerico(this);
				}
				else
				{
					ErrorMensaje = "No se puede realizar la acción. " + ErrorMensaje;
				}
			}

			if (NombreMetodo == "EstablecerVersionPrincipal")
			{
				bool hecho = false;

				foreach (BaseNegocio b in this.Padre)
				{
					PresupuestoVersion pv = (PresupuestoVersion)b;

					if ((bool)pv["Principal"])
					{
						if (pv.AceptadoAhoraPresupuesto)
						{
							ErrorMensaje = "El presupuesto está aceptado. No se puede cambiar la versión principal.";
						}
						else
						{
							if (this.Clave != pv.Clave)
							{
								pv["Principal"] = false;
                                this["Principal"] = true;

                                ObjetoAsociado("Presupuesto")["FechaEmision"] = (DateTime)this["FechaEmision"];

								hecho = Padre.Correcto;
							}
						}
						break;
					}
				}

				if (hecho)
				{
					ObjetoAsociado("Presupuesto").Coleccion("ColPresupuestoVersion").Guardar();
					ObjetoAsociado("Presupuesto").Coleccion("ColPresupuestoVersion").Usar();
				}
			}

			if (NombreMetodo == "AceptarAmpliacion")
			{
				if (!AceptadoAhoraVersion)
				{
					if ( ((bool)this["Ampliacion"]) && this.Correcto)
					{
						this["Aceptado"] = true;
						this["FechaAceptacion"] = System.DateTime.Today;
						this["FechaApliacion"] = System.DateTime.Today;

						this.Guardar();

                        ((Presupuesto) this.ObjetoAsociado("Presupuesto")).ActualizarPresupuestoEnBaseAntigua(false, false, true);
					}
				}
			}

            if (NombreMetodo == "SeleccionarTarifas")
            {
                string script;

                script = "window.open('" + ((PROT.ControlesEspeciales.RaizPage)pag).ResuelveUrl("~/presupuestos/tarifas/SeleccionarTarifa.aspx") + "?id=" + ObjetoAsociado("Presupuesto").IDActual[0] + "','_blank','width=1000px; height=700px; location=yes; menubar=yes; scrollbars=yes; resizable=yes; status=yes; toolbar=yes');";
//                script = "window.open('" + ((PROT.ControlesEspeciales.RaizPage)pag).ResuelveUrl("~/presupuestos/tarifas/SeleccionarTarifa.aspx") + "?id=" + ObjetoAsociado("Presupuesto").IDActual[0] + "','_blank','width=1000px; height=700px;');";

                ((PROT.ControlesEspeciales.RaizPage)pag).RegistraStartupScript("llamada", script, true);
            }

            if (NombreMetodo == "AgregarTarifasExcel")
            {
                ((PROT.ControlesEspeciales.RaizPage)pag).RegistraClientScriptBlock("inicio",
                    "window.open('../presupuestos/tarifas/AgregarTarifasExcel.aspx?id=" + ObjetoAsociado("Presupuesto").IDActual[0] + "', '_blank', 'toolbar=no, width=800, height=600, menubar=no, scrollbars=no, status=yes, top=200, left=100, resizable=yes');", true);
            }

			if (NombreMetodo == "EliminarLineasSeleccionadas")
			{
				// No se puede hacer foreach porque puede que quitemos objetos de la colección.
				BaseNegocio b;
				ColBaseNegocio col = Coleccion("ColPresupuestoVersionDetalle");

				for (int c = 0; c < col.Count; ++c)
				{
					b = col[c];

					if ((bool)b["MarcarParaEliminar"])
					{
						if (b.Nuevo)
						{
							col.Remove(b);
							--c;
						}
						else
						{
							b.Eliminar = !b.Eliminar;
						}
						b["MarcarParaEliminar"] = false;
					}
				}
			}

			base.Metodo(pag, NombreMetodo);
		}

		public override void Metodo(System.Web.UI.Page pag, string Nombre, int[] Param)
		{
			if (Nombre == "Nuevas")
			{
				//if (AceptadoAhoraVersion)
				//{
				//    ErrorMensaje = "La versión del presupuesto está aceptada. No se pueden añadir tarifas.";
				//}
				//else
				//{
					int posicion = 0;

					foreach (int idTarifa in Param)
					{
						if (idTarifa > 0)
						{
							ColPresupuestoVersionDetalle col = (ColPresupuestoVersionDetalle)Coleccion("ColPresupuestoVersionDetalle");
                            
							col.CrearLinea(idTarifa, ref posicion);
						}
					}
				//}

                string script = "";

                script += "if (window.opener != null) {window.opener." + pag.ClientScript.GetPostBackEventReference(pag, "noguardar") + "}";
                script += "window.close();";

                ((PROT.ControlesEspeciales.RaizPage)pag).RegistraStartupScript("selec", script, true);
			}

			base.Metodo(pag, Nombre, Param);
		}
		#endregion

		#region Propiedades Públicas
        public override bool SoloLectura(string campo)
        {
            if (campo == "FiltroIDTitulo")
            {
                return false;
            }

            if (campo == "FiltroIDMaterial")
            {
                return false;
            }

            if (campo == "FechaEmision")
            {
                if ((bool)this["Aceptado"] || (bool)this["Principal"])
                {
                    return true;
                }
            }
          
            return base.SoloLectura(campo);
        }

        public override TipoBasico Tipo(string campo)
        {
            if (campo == "FiltroIDTitulo")
            {
                return TipoBasico.NUMERO;
            }

            if (campo == "FiltroIDMaterial")
            {
                return TipoBasico.NUMERO;
            }

            return base.Tipo(campo);
        }

        public override bool PermiteNulos(string campo)
        {
            if (campo == "FiltroIDTitulo")
            {
                return true;
            }

            if (campo == "FiltroIDMaterial")
            {
                return true;
            }

            return base.PermiteNulos(campo);
        }

		public override string Propiedad(string NombrePropiedad)
		{
			Decimal Total = 0;
			double Unidades = 0;
			string est = ""; 
			ColPresupuestoVersionDetalle cpvd;

            if (NombrePropiedad == "ESTILO_CSS")
            {
                return CrearTablaHTMLTarifas.CSSTablaHTML;
            }

            if (NombrePropiedad == "TablaPresupuesto")
            {
                return (new CrearTablaHTMLTarifas()).CrearTabla(this);
            }

			if (NombrePropiedad == "Estado")
			{
				if ((bool)this["Principal"])
				{
					est = "Principal";
				}
				else
				{
					if ((bool)this["Ampliacion"])
					{
						est = "Ampliación";
					}
					else
					{
						est = "Versión";
					}
				}

				if ((bool)this["Aceptado"])
				{
					est += " - Aceptado";
				}

				return est;
			}

            if (NombrePropiedad == "DescripcionCorta")
            {
                if ((bool)this["Principal"])
                {
                    est = "Principal";
                }
                else
                {
                    if ((bool)this["Ampliacion"])
                    {
                        est = "Ampliación";
                    }
                    else
                    {
                        est = "Versión";
                    }

                    est += " " + this["Version"].ToString();
                }

                return est;
            }

            if (NombrePropiedad == "EsAmpliacionVersion")
            {
                if ((bool)this["Principal"])
                {
                    est = "";
                }
                else
                {
                    if ((bool)this["Ampliacion"])
                    {
                        est = "Ampliación " + this["Version"].ToString() + ". de tarifas unidades del presupuesto inicial: ";
                    }
                    else
                    {
                        est = "Versión " + this["Version"].ToString() + ". del presupuesto: ";
                    }
                }

                return est;
            }

            if (NombrePropiedad == "NombreArchivoGenerado")
            {
                est = BaseSistemaNumeracion.DescripcionCodigoAnyoSinObra((BasePresupuesto) ObjetoAsociado("Presupuesto")).Replace('/', '_');

                if (!(bool)this["Principal"])
                {
                    if ((bool)this["Ampliacion"])
                    {
                        est += " Ampliación";
                    }
                    else
                    {
                        est += " Versión";
                    }

                    est += " " + this["Version"].ToString();
                }

                return "Presupuesto " + est;
            }

            if (NombrePropiedad == "SumaTotalPresupuesto")
            {
                //if (!(bool)this["Principal"])
                //{ 
                    NombrePropiedad = "TotalVersionAceptado";
                //}
            }

            if (NombrePropiedad == "FechaEmision")
            {
                DateTime fe = new DateTime();

                if ((bool)this["Aceptado"])
                {
                    fe = (DateTime)this["FechaAceptacion"];
                }
                else
                {
                    fe = (DateTime)this["FechaEmision"];
                }

                return Lib.FormateaFecha(fe);
            }

            if (NombrePropiedad == "FechaEmisionLarga")
            {
                DateTime fe = new DateTime();

                if ((bool)this["Aceptado"])
                {
                    fe = (DateTime)this["FechaAceptacion"];
                }
                else
                {
                    fe = (DateTime)this["FechaEmision"];
                }

                return fe.Day.ToString() + " de " + fe.ToString("MMMM") + " de " + fe.Year.ToString();
            }

			if (NombrePropiedad == "TotalVersion" || NombrePropiedad == "TotalUnidades")
			{
				cpvd = (ColPresupuestoVersionDetalle)Coleccion("ColPresupuestoVersionDetalle");

				Total = cpvd.CalcularTotal(false, ref Unidades);

				if (NombrePropiedad == "TotalVersion")
				{
					return LCC.Negocio.Util.DarFormatoMonedaConDecimales(Total);
				}
				else
				{
					return Unidades.ToString("0.##");
				}
			}
			if (NombrePropiedad == "TotalVersionAceptado" || NombrePropiedad == "TotalUnidadesAceptado"
                || NombrePropiedad == "TotalConBonificacion")
			{
				cpvd = (ColPresupuestoVersionDetalle)Coleccion("ColPresupuestoVersionDetalle");

				Total = cpvd.CalcularTotal(true, ref Unidades);

				if (NombrePropiedad == "TotalVersionAceptado")
				{
					return LCC.Negocio.Util.DarFormatoMonedaConDecimales(Total);
				}
                else if (NombrePropiedad == "TotalConBonificacion")
                {
                    float porcentaje = (float)ObjetoAsociado("Presupuesto")["Descuento"];
                    if (porcentaje != 0)
                    {
                        decimal TotalConBonificacion = Total - ((Total * Lib.NoDecimalNulo(porcentaje)) / 100);
                        return "TOTAL PRESUPUESTO CON BONIFICACIÓN: " + LCC.Negocio.Util.DarFormatoMonedaConDecimales(TotalConBonificacion);
                    }
                }
                else
                {
                    return Unidades.ToString("0.##");
                }
			}

            //[Prop.Con1]	[Prop.NF1]	[Prop.Pr1]	[Prop.Importe1] 	[Prop.Precio1]

            for (int p = 1; p <= 9; ++p)
            {
                if (NombrePropiedad == "Con" + p.ToString() || NombrePropiedad == "NF" + p.ToString()
                     || NombrePropiedad == "Pr" + p.ToString() || NombrePropiedad == "Importe" + p.ToString()
                     || NombrePropiedad == "Precio" + p.ToString())
                {
                    PresupuestoVersionDetalle det = null;

                    if (p <= Coleccion("ColPresupuestoVersionDetalle").Count)
                    {
                        det = (PresupuestoVersionDetalle)Coleccion("ColPresupuestoVersionDetalle")[p - 1];
                    }

                    if (det != null)
                    {
                        if (NombrePropiedad.StartsWith("NF"))
                        {
                            return p.ToString();
                        }
                        if (NombrePropiedad.StartsWith("Con"))
                        {
                            return det["Concepto"].ToString();
                        }
                        if (NombrePropiedad.StartsWith("Pr"))
                        {
                            return (det.TotalUnidades * 100).ToString("0") + "%";
                        }
                        if (NombrePropiedad.StartsWith("Importe"))
                        {
                            return String.Format("{0:#,##0 €}", (decimal)det["Total"]);
                        }
                        if (NombrePropiedad.StartsWith("Precio"))
                        {
                            return String.Format("{0:#,##0 €}", (decimal)det["Precio"]);
                        }
                    }

                    return "";
                }
            }

			return ObjetoAsociado("Presupuesto").Propiedad(NombrePropiedad);
		}

		public Decimal TotalTarifasAceptadas
		{
			get
			{
				double Unidades = 0;
				ColPresupuestoVersionDetalle cpvd = (ColPresupuestoVersionDetalle)Coleccion("ColPresupuestoVersionDetalle");

				return cpvd.CalcularTotal(true, ref Unidades);
			}
		}
		#endregion

		#region Vistas
		public override System.Data.DataView Vista(string NombreVista)
		{
            string sql;

			if (NombreVista == "Delegaciones" || NombreVista == "Contactos")
			{
				return ObjetoAsociado("Presupuesto").Vista(NombreVista);
			}

			if (NombreVista == "TablaPresupuesto")
			{
				sql = "SELECT Tarifa.Codigo, PresupuestoVersionDetalle.Unidades, PresupuestoVersionDetalle.DivisorUnidades, PresupuestoYTarifa.Precio,"
					+ " CASE WHEN PresupuestoYTarifa.Concepto IS NULL THEN Tarifa.Desclarga"
					+ " ELSE PresupuestoYTarifa.Concepto END AS Descripcion,"
					+ " " + LCC.Negocio.Presupuestos.PresupuestoVersionDetalle.SQLCampoTotalSinAs + " AS Total,"
					+ " Titulo.DescLarga As Titulo, Material.Nombre As Material"
					+ " FROM PresupuestoVersion INNER JOIN"
					+ " PresupuestoVersionDetalle ON PresupuestoVersion.IDPresupuestoVersion = PresupuestoVersionDetalle.IDPresupuestoVersion INNER JOIN"
					+ " PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT INNER JOIN"
					+ " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa INNER JOIN"
					+ " Titulo ON Tarifa.IDTitulo = Titulo.IDTitulo INNER JOIN"
					+ " Material ON Tarifa.IDMaterial = Material.IDMaterial"
					+ " WHERE (PresupuestoVersionDetalle.Aceptada = 1) AND (PresupuestoVersionDetalle.Imprimir = 1) AND"
					+ " PresupuestoVersion.IDPresupuestoVersion = " + this.IDActual[0]
					+ " ORDER BY Tarifa.Codigo";

				return Datos.Instancia().getDataView(sql);
			}
            if (NombreVista == "TitulosTarifa")
            {
                List<int> ids = new List<int>(10);

                foreach (BaseNegocio b in Coleccion("ColPresupuestoVersionDetalle"))
                {
                    int idTitulo = (int)b.ObjetoAsociado("Tarifa")["IDTitulo"];

                    if (!ids.Contains(idTitulo))
                    {
                        ids.Add(idTitulo);
                    }
                }

                sql = "SELECT Titulo.IDTitulo AS ID,"
						+ " LTRIM(STR(Titulo.Codigo))"
						+ " + ' - ' + Titulo.DescTitulo As NomCompleto"
						+ " FROM Titulo"
						+ " WHERE Titulo.IDTitulo IN " + Datos.InDesdeList(ids)
						+ " ORDER BY Titulo.Codigo";

                return Datos.Instancia().getDataViewCache(sql, 0, 5);
            }

            if (NombreVista == "Material")
            {
                List<int> ids = new List<int>(10);

                foreach (BaseNegocio b in Coleccion("ColPresupuestoVersionDetalle").Filtro("IDTitulo"))
                {
                    int idMaterial = (int)b.ObjetoAsociado("Tarifa")["IDMaterial"];

                    if (!ids.Contains(idMaterial))
                    {
                        ids.Add(idMaterial);
                    }
                }
                
                sql = "SELECT DISTINCT Material.IDMaterial AS ID, "
                    + " LTRIM(CONVERT(varchar, Material.Nombre)) AS NomCompleto"
                    + " FROM Tarifa INNER JOIN Material ON Tarifa.IDMaterial = Material.IDMaterial "
                    + " WHERE Tarifa.IDMaterial IN " + Datos.InDesdeList(ids)
                    + " ORDER BY NomCompleto";

                return Datos.Instancia().getDataViewCache(sql, 0, 5);
            }

			return base.Vista(NombreVista);
		}
		#endregion
	}

	class ColPresupuestoVersion : ColBaseNegocio
	{
		public ColPresupuestoVersion(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
			: base(Padre, CampoRelacionPadre, Sql)
		{

		}

        public override BaseNegocio ObjetoActivo
        {
            get
            {
                return base.ObjetoActivo;
            }
            set
            {
                base.ObjetoActivo = value;
            }
        }

        public PresupuestoVersion VersionPrincipal
        {
            get
            {
                foreach (BaseNegocio b in this)
                {
                    if ((bool)b["Principal"])
                    {
                        return (PresupuestoVersion)b;
                    }
                }

                throw new Exception("No existe versión principal");
            }
        }

		public override BaseNegocio CrearInstanciaHijo()
		{
			BaseNegocio b;

			b = new PresupuestoVersion();

			return b;
		}

        public override void AnexarObjetoActivo()
        {
            base.AnexarObjetoActivo();

            bool existePrincipalAceptada = false;

            foreach (BaseNegocio b in this)
            {
                if ((bool)b["Principal"] && (bool)b["Aceptado"])
                {
                    existePrincipalAceptada = true;
                }
            }

            if (!existePrincipalAceptada)
            {
                foreach (BaseNegocio b in this)
                {
                    b["Principal"] = false;
                }

                ObjetoActivo["Principal"] = true;
            }
        }

		public override void DespuesDePoblar()
		{
			base.DespuesDePoblar();

            //if (!Padre.Nuevo)
            //{
            //    foreach (BaseNegocio b in this)
            //    {
            //        if ((bool)b["Principal"])
            //        {
            //            this.ObjetoActivo = b;

            //            break;
            //        }
            //    }
            //}

            // Con esto, en los nuevos presupuestos/oportunidades, se crea por defecto la versión 0.
            if (CuantosQuedaranAlGuardar == 0)
            {
                // Innecesario posiblemente.
                CrearEnBlanco();

                // Creamos la primera versión 0 que será la Principal.
                AnexarObjetoActivo();

                // Además queda seleccionada para los Editores.
            }
            //if (!this.Contains(this.ObjetoActivo))
            //{
            //    // Cuando acabamos de leer el presupuesto,
            //    // hay que seleccionar la versión principal.
            //    foreach (BaseNegocio b in this)
            //    {
            //        if ((bool)b["Principal"])
            //        {
            //            this.ObjetoActivo = b;

            //            break;
            //        }
            //    }
            //}
		}

		public override void Guardar(bool conPermisos)
		{
			base.Guardar(conPermisos);

            //foreach (BaseNegocio b in this)
            //{  
            //    if ((bool)b["Principal"])
            //    {
            //        this.ObjetoActivo = b;

            //        break;
            //    }
            //}
		}

		public Decimal CalcularTotal(bool SoloAceptadas, bool ConAmpliaciones)
		{
			double Unidades = 0;
			Decimal total = 0;
            
			foreach (BaseNegocio b in this)
			{
				// Excluimos las eliminadas.
				if (!b.Eliminar 
					&& ( (bool)b["Principal"] || (((bool)b["Aceptado"] || !SoloAceptadas)
												&& ((bool)b["Ampliacion"] || !ConAmpliaciones) )))
				{
					total += ((ColPresupuestoVersionDetalle) b.Coleccion("ColPresupuestoVersionDetalle")).CalcularTotal(SoloAceptadas, ref Unidades);
				}
			}

			return total;
		}
	}
}
