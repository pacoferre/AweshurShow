using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;
using LCC.Negocio.Tarifas;

namespace LCC.Negocio.Presupuestos
{
    public class PresupuestoYTarifa : BaseNegocio 
    {
        private Presupuesto pres = null;
        private Tarifa tar = null;
        private PresupuestoVersionDetalle pvd = null;
        private Obras.Obra obr = null;
		private bool marcarParaEliminar = false;
        private int CambiarIDPyT = 0;
        private int CambiarIDPresupuestoVersion = 0;
        private string CambiarConcepto = "";
        private decimal CambiarPrecio = 0;
        private double CambiarUnidades = 0;
        private object CambiarDivisor = null;
        public bool Facturas = false;

        public PresupuestoYTarifa()
		{
            fila = new Fila("PresupuestoYTarifa");
			sinPermisoLeer = true;
            nombre = "Cambio de tarifas";
        }

        public override string DescripcionNormal
        {
            get
            {
                return "";
            }
        }

        #region Objetos Asociados
        /// <summary>
        /// Devuelve Objetos BaseNegocio por nombre.
        /// En general, depende de la situación actual del objeto, de los valores de this.
        /// </summary>
        /// <param name="Nombre">El nombre del Objeto Asociado</param>
        public override BaseNegocio ObjetoAsociado(string Nombre)
        {
            if (Nombre == "Presupuesto")
            {
                pres = (Presupuesto)RecuperaObjetoAsociado((BaseNegocio)pres, "Presupuesto", "IDPresupuesto");

                return pres;
            }
            if (Nombre == "Tarifa")
            {
                tar = (Tarifa)RecuperaObjetoAsociado((BaseNegocio)tar, "Tarifa", "IDTarifa");

                return tar;
            }
            if (Nombre == "Obra")
            {
                obr = (Obras.Obra)RecuperaObjetoAsociado((BaseNegocio)pres, "Presupuesto", "IDPresupuesto").ObjetoAsociado("Obra");

                return obr;
            }
            if (Nombre == "PresupuestoYTarifa")
            {
                return this;
            }
           
            return base.ObjetoAsociado(Nombre);
        }
        #endregion

        #region Gestión de registro
        public override TipoBasico Tipo(string campo)
        {
            if (campo == "Codigo" || campo == "CodigoENAC")
            {
                return ObjetoAsociado("Tarifa").Tipo(campo);
            }
            else if (campo == "Total" || campo == "CambiarPrecio" 
                || campo == "CambiarUnidades" || campo == "CambiarDivisior" || campo == "CambiarIDPyT"
                || campo == "CambiarIDPresupuestoVersion")
            {
                return TipoBasico.NUMERO;
            }
			else if (campo == "MarcarParaEliminar")
			{
				return TipoBasico.BIT;
			}
            else if (campo == "CambiarConcepto")
            {
                return TipoBasico.TEXTO;
            }
            else
            {
                return base.Tipo(campo);
            }
        }

        public override bool SoloLectura(string campo)
        {
            if (campo == "Codigo" || campo == "CodigoENAC" || campo == "Total" || campo == "CambiarIDPyT")
            {
                return true;
            }
			else if (campo == "MarcarParaEliminar" || campo == "CambiarConcepto" || campo == "CambiarUnidades"
                || campo == "CambiarPrecio" || campo == "CambiarDivisor")
			{
				return false;
			}
			else
			{
				return base.SoloLectura(campo);
			}
        }

        public override int MaxLength(string campo)
        {
            if (campo == "CodigoENAC")
            {
                return ObjetoAsociado("Tarifa").MaxLength(campo);
            }
            else if (campo == "CambiarConcepto")
            {
                return 2000;
            }
            else
            {
                return base.MaxLength(campo);
            }
        }

        public override object this[string campo]
        {
            get
            {
                if (campo == "Codigo" || campo == "CodigoENAC")
                {
                    return ObjetoAsociado("Tarifa")[campo];
                }
                else if (campo == "Concepto")
                {
                    if (base[campo] is DBNull)
                    {
                        return ObjetoAsociado("Tarifa")["DescLarga"].ToString().Trim();
                    }
                    else
                    {
                        return base[campo];
                    }
                }
                else if (campo == "Total")
                {
                    if (this["Unidades"] is DBNull || this["Precio"] is DBNull)
                    {
                        return (Decimal)0;
                    }
                    else
                    {
                        return System.Convert.ToDecimal((double)this["Unidades"]) * ((Decimal)this["Precio"]);
                    }
                }
				else if (campo == "MarcarParaEliminar")
				{
					return marcarParaEliminar;
				}
                else if (campo == "CambiarConcepto")
                {
                    return CambiarConcepto;
                }
                else if (campo == "CambiarUnidades")
                {
                    return CambiarUnidades;
                }
                else if (campo == "CambiarPrecio")
                {
                    return CambiarPrecio;
                }
                else if (campo == "CambiarDivisor")
                {
                    return CambiarDivisor;
                }
                else if (campo == "CambiarIDPyT")
                {
                    return CambiarIDPyT;
                }
                else if (campo == "CambiarIDPresupuestoVersion")
                {
                    return CambiarIDPresupuestoVersion;
                }
                else
                {
                    return base[campo];
                }
            }
            set
            {
                if (campo == "Concepto")
                {
                    if (!(value is DBNull))
                    {
                        if (value.ToString() == ObjetoAsociado("Tarifa")["DescLarga"].ToString().Trim())
                        {
                            base[campo] = DBNull.Value;
                        }
                        else
                        {
                            base[campo] = value;
                        }
                    }
                    else
                    {
                        base[campo] = value;
                    }
                }
				else if (campo == "MarcarParaEliminar")
				{
					marcarParaEliminar = (bool) value;
				}
                else if (campo == "CambiarConcepto")
                {
                    CambiarConcepto = (string)value;
                }
                else if (campo == "CambiarPrecio")
                {
                    CambiarPrecio = (decimal)value;
                }
                else if (campo == "CambiarUnidades")
                {
                    CambiarUnidades = (double)value;
                }
                else if (campo == "CambiarDivisor")
                {
                    CambiarDivisor = (object)value;
                }
                else if (campo == "CambiarIDPyT")
                {
                    CambiarIDPyT = (int)value;
                }
                else if (campo == "CambiarIDPresupuestoVersion")
                {
                    CambiarIDPresupuestoVersion = (int)value;
                }
                else
                {
                    base[campo] = value;
                }
            }
        }

        /// <summary>
        /// Devuelve si el objeto es correcto para guardar.
        /// </summary>
        public override bool Correcto
        {
            get
            {
                bool correcto = base.Correcto;

                // No sé si Unidades < 0 sería un error.

                if (correcto)
                {
                    if (this["IDTarifa"] is DBNull)
                    {
                        ErrorMensaje = "Debe seleccionar una Tarifa.";
                        correcto = false;
                    }
                }

                if (correcto)
                {
                    //if ((Decimal)this["Precio"] < 0)
                    //{
                    //    ErrorCampo = "Precio";
                    //    ErrorMensaje = "El precio no puede ser menor que 0.";

                    //    correcto = false;
                    //}
                }

                return correcto;
            }
        }

        /// <summary>
        /// Establece los valores por defecto para un objeto nuevo.
        /// </summary>
        public override void ValoresPorDefecto()
        {
			this["FechaAplicacion"] = System.DateTime.Today;

            base.ValoresPorDefecto();
        }

        public override void ValoresPorDefecto(BaseNegocio origen)
        {
            if (origen is Tarifa)
            {
                this["IDTarifa"] = origen["IDTarifa"];
				if ((int)ObjetoAsociado("Presupuesto")["IDPresupuestoClase"] == 2)
				{
					// Es Oferta%

					this["Precio"] = ((ColPresupuestoMision)pres.Coleccion("ColPresupuestoMision")).Total();
				}
				else
				{
					this["Precio"] = origen["Precio"];
				}
            }

            base.ValoresPorDefecto(origen);
        }


        #endregion

        #region Propiedades Publicas
        /// <summary>
        /// Devuelve un string según una propiedad.
        /// </summary>
        /// <param name="Nombre">Nombre de la propiedad</param>
        public override string Propiedad(string Nombre)
        {
            if (Nombre == "DescripcionTarifa")
            {
                if (this["Concepto"] is DBNull)
                {
                    return ((Tarifa)ObjetoAsociado("Tarifa"))["DescCorta"].ToString();
                }

                return this["Concepto"].ToString();
            }
            return base.Propiedad(Nombre);
        }
        #endregion

        #region Permisos
        #endregion

        #region Vistas


        public override DataView Vista(string NombreVista)
        {

            if (NombreVista == "TrabajosTarifas")
            {
                string sql = "";

                sql = "SELECT Trabajo.IDTrabajo, Trabajo.Codigo, CASE WHEN Trabajo.IDFactura IS NULL THEN 'No' ELSE 'Si' END AS Facturado "
                    + " FROM TrabajoDetalle INNER JOIN "
                    + " Trabajo ON TrabajoDetalle.IDTrabajo = Trabajo.IDTrabajo "
                    + " WHERE TrabajoDetalle.IDPyT = " + this.IDActual[0];

                return Datos.Instancia().getDataView(sql);
            }

            if (NombreVista == "VersionesTarifas")
            {
                string sql = "";

                sql = "SELECT PresupuestoVersionDetalle.IDPresupuestoVersion, PresupuestoYTarifa.IDPyT, PresupuestoVersion.Version, Tarifa.Codigo, "
                    + " PresupuestoVersionDetalle.Unidades, PresupuestoVersionDetalle.DivisorUnidades "
                    + " FROM PresupuestoVersion INNER JOIN PresupuestoVersionDetalle ON PresupuestoVersion.IDPresupuestoVersion = PresupuestoVersionDetalle.IDPresupuestoVersion "
                    + " INNER JOIN PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT INNER JOIN "
                    + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa "
                    + " WHERE (PresupuestoVersion.Aceptado = 1) AND PresupuestoYTarifa.IDPyT = " + this.IDActual[0];
                
                return Datos.Instancia().getDataView(sql);
            }
           
            return base.Vista(NombreVista);
        }
        #endregion

        #region Métodos Públicos
        private string mensajeMetodosModificar = "";

        public string MensajeMetodosModificar
        {
            get
            {
                return mensajeMetodosModificar;
            }
            set
            {
                mensajeMetodosModificar = value;
            }
        }

        /// <summary>
        /// Realiza llamadas a Métodos de la clase por nombre.
        /// Se pueden realizar cosas como pag.Response.Redirect para abrir otras ventanas.
        /// ErrorMensaje se presentará al usuario.
        /// </summary>
        /// <param name="pag">Objeto Pagina ASPX, mejorable.</param>
        /// <param name="Nombre">Nombre de Método.</param>
        public override void Metodo(System.Web.UI.Page pag, string Nombre)
        {
            if (Nombre == "DespuesDeModificarTarifas")
            {
                Presupuesto pres = (Presupuesto) ProveedorListas.ObjetoProveedorNegocio.RecuperaObjeto("Presupuesto", this["IDPresupuesto"].ToString());

                pres.Coleccion("ColPresupuestoYTarifa").Reset();
                pres.Coleccion("ColPresupuestoYTarifa").Usar();
                pres.Coleccion("ColPresupuestoVersion").Reset();
                pres.Coleccion("ColPresupuestoVersion").Usar();

                pres.Guardar();

                pres.ActualizarPresupuestoEnBaseAntigua(false, false, true);
            }

            if (Nombre == "ModificarConceptoPrecioTarifas")
            {
                // Importa el precio
                // Contar cuantas facturas existen con este IDPyT.
                bool TieneFacturas = false;
                bool PasadasAcontabilidad = false;
                bool sePuedeModificarElPrecio = false;
                string ResultadoLog = "";

                this.IDActual[0] = CambiarIDPyT;
                this.Leer();

                //El concepto se puede cambiar siempre
                string ConceptoAntiguo = (string)this["Concepto"];
                if (ConceptoAntiguo != CambiarConcepto)
                {
                    Datos.Instancia().executeSQL("UPDATE PresupuestoYTarifa SET Concepto = '" + CambiarConcepto.Replace("'", "''")
                        + "' WHERE IDPyT = " + this["IDPyT"].ToString());

                    ResultadoLog = "Presupuesto: " + this.ObjetoAsociado("Presupuesto").DescripcionNormal
                        + ". Tarifa Modificada: " + this.ObjetoAsociado("Tarifa")["Codigo"].ToString();

                    ResultadoLog += ". Concepto Antiguo: " + ConceptoAntiguo.ToString()
                        + ". Concepto Nuevo: " + CambiarConcepto.ToString();

                    mensajeMetodosModificar = "Se ha modificado el concepto. " + Datos.CRLF;
                    
                    PROT.NegocioGeneral.Log.Log.GrabarLog(UsuarioActual, PROT.NegocioGeneral.Log.LogTipoEnum.CambiosEnTarifas, ResultadoLog);
                }

                decimal PrecioAntiguo = (decimal)this["Precio"];
                if (PrecioAntiguo != CambiarPrecio)
                {
                    string sql = "SELECT DISTINCT IDFactura FROM FacturaDetalle WHERE IDPYT = " + this.IDActual[0];
                    DataTable dt = Datos.Instancia().getDataTable(sql);

                    if (dt.Rows.Count != 0)
                    {
                        TieneFacturas = true;
                    }

                    // Se puede modificar cuando.
                    // - No hay facturas.
                    // - Existen facturas, pero tiene permiso para modificar y no están pasadas a contabilidad
                    // - Existen facturas, tiene permiso para modificar y además un permiso especial para cuando están pasadas a contabilidad

                    if (!TieneFacturas || UsuarioActual.Permiso("MET", "Presupuesto", "ModificarTarifasConFacturas"))
                    {
                        if (TieneFacturas)
                        {
                            foreach (DataRow dr in dt.Rows)
                            {
                                LCC.Negocio.Facturas.Factura fac = new LCC.Negocio.Facturas.Factura();
                                fac.IDActual[0] = (int)dr[0];
                                fac.Leer();

                                if ((bool)fac["Contabilidad"])
                                {
                                    PasadasAcontabilidad = true;
                                    break;
                                }
                            }

                            // - Existen facturas, pero tiene permiso para modificar y no están pasadas a contabilidad
                            if (!PasadasAcontabilidad)
                            {
                                sePuedeModificarElPrecio = true;
                            }

                            // - Existen facturas, tiene permiso para modificar y además un permiso especial para cuando están pasadas a contabilidad
                            if (PasadasAcontabilidad && UsuarioActual.Permiso("MET", "Presupuesto", "ModificarTarifasConFacturasContabilidad"))
                            {
                                sePuedeModificarElPrecio = true;
                            }
                        }
                        else
                        {
                            // - No hay facturas.
                            sePuedeModificarElPrecio = true;
                        }
                    }

                    //Modificación del precio
                    if (sePuedeModificarElPrecio)
                    {
                        ResultadoLog = "Presupuesto: " + this.ObjetoAsociado("Presupuesto").DescripcionNormal
                            + ". Tarifa Modificada: " + this.ObjetoAsociado("Tarifa")["Codigo"].ToString();
                        
                        Datos.Instancia().executeSQL("UPDATE PresupuestoYTarifa SET Precio = " + CambiarPrecio.ToString().Replace(",", ".")
                            + " WHERE IDPyT = " + this["IDPyT"].ToString());
                        
                        ResultadoLog += ". Precio Antiguo: " + PrecioAntiguo.ToString()
                            + ". Precio Nuevo: " + CambiarPrecio.ToString();
                        
                        mensajeMetodosModificar += "Se ha modificado el precio. ";

                        PROT.NegocioGeneral.Log.Log.GrabarLog(UsuarioActual, PROT.NegocioGeneral.Log.LogTipoEnum.CambiosEnTarifas, ResultadoLog);

                        //Regenera las facturas
                        if (TieneFacturas)
                        {
                            foreach (DataRow dr in dt.Rows)
                            {
                                LCC.Negocio.Facturas.Factura fac = new LCC.Negocio.Facturas.Factura();
                                fac.IDActual[0] = (int)dr[0];
                                fac.Leer();
                                fac.Guardar();
                            }
                        }
                    }
                    else
                    {
                        mensajeMetodosModificar += "No se puede modificar el precio porque existen facturas.";
                    }
                }
            }

            if (Nombre == "ModificarUnidadesTarifas")
            {
                //Las unidades y el divisior se pueden cambiar siempre.
                double UnidadesAntiguo;
                object DivisorAntiguo;
                string ResultadoLog = "";

                PresupuestoVersionDetalle pv = new PresupuestoVersionDetalle();
                pv.IDActual[0] = CambiarIDPresupuestoVersion;
                pv.IDActual[1] = (int)this["IDPyT"];
                pv.Leer();

                if (CambiarDivisor == null)
                {
                    CambiarDivisor = DBNull.Value;
                }
                
                UnidadesAntiguo = (double)pv["Unidades"];
                DivisorAntiguo = pv["DivisorUnidades"];
                
                if (UnidadesAntiguo != CambiarUnidades || DivisorAntiguo != CambiarDivisor)
                {
                    pv["Unidades"] = CambiarUnidades;
                    pv["DivisorUnidades"] = CambiarDivisor;
                    
                    pv.Guardar(false);
                    
                    ResultadoLog += ". Unidades Antiguas: " + UnidadesAntiguo.ToString()
                        + ". Unidades Nuevas: " + CambiarUnidades.ToString()
                        + ". Divisor Antiguo: " + DivisorAntiguo.ToString()
                        + ". Divisor Nuevo: " + CambiarDivisor.ToString();

                    PROT.NegocioGeneral.Log.Log.GrabarLog(UsuarioActual, PROT.NegocioGeneral.Log.LogTipoEnum.CambiosEnTarifas, ResultadoLog);

                    mensajeMetodosModificar += "Se ha modificado las unidades de la tarifa " + ObjetoAsociado("Tarifa")["Codigo"].ToString() 
                        + Datos.CRLF;
                }
            }

            if (Nombre == "Restaurar")
            {
                if (this.PermisoModificar)
                {
                    this["Concepto"] = DBNull.Value;
                }

                return;
            }

            base.Metodo(pag, Nombre);
        }

        #endregion
    }

    public class ColPresupuestoYTarifa : ColBaseNegocio
    {
        public ColPresupuestoYTarifa(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
            : base(Padre, CampoRelacionPadre, Sql)
        {
        }

        public override BaseNegocio CrearInstanciaHijo()
        {
            BaseNegocio b;

            b = new PresupuestoYTarifa();

            return b;
        }

		public PresupuestoYTarifa Buscar(PresupuestoYTarifa pyt, int IDPyT)
		{
            if (pyt != null)
            {
                if (pyt.IDActual[0] != IDPyT)
                {
                    pyt = null;
                }
            }

            if (pyt == null)
            {
                foreach (BaseNegocio b in this)
                {
                    if (b.IDActual[0] == IDPyT)
                    {
                        pyt = (PresupuestoYTarifa)b;
                        break;
                    }
                }
            }

			return pyt;
		}

        //public PresupuestoYTarifa BuscarPorCodigo(int CodigoTarifa)
        //{
        //    PresupuestoYTarifa pyt = null;

        //    foreach (BaseNegocio p in this)
        //    {
        //        if ((int) p["Codigo"] == CodigoTarifa)
        //        {
        //            pyt = (PresupuestoYTarifa)p;
        //            break;
        //        }
        //    }

        //    return pyt;
        //}

		public PresupuestoYTarifa BuscarCrear(int IDTarifa)
		{
			PresupuestoYTarifa pyt = null;

            if (padre != null && padre is BasePresupuesto)
            {
                string sql = "SELECT TOP 1 PresupuestoYTarifa.IDPyT"
                    + " FROM PresupuestoYTarifa INNER JOIN"
                    + " PresupuestoVersionDetalle ON PresupuestoYTarifa.IDPyT = PresupuestoVersionDetalle.IDPyT INNER JOIN"
                    + " PresupuestoVersion ON PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion"
                    + " WHERE PresupuestoYTarifa.IDPresupuesto = " + padre.IDActual[0].ToString()
                    + " AND PresupuestoYTarifa.IDTarifa = " + IDTarifa.ToString();
                int IDPyT;

                if (((Presupuesto)padre).AceptadoAhora)
                {
                    sql += " AND (PresupuestoVersionDetalle.Aceptada = 1)"
                        + " AND (PresupuestoVersion.Aceptado = 1)";
                }
                sql += " ORDER BY PresupuestoYTarifa.FechaAplicacion DESC";

                IDPyT = Datos.Instancia().DameExpresionInt(sql);

                if (IDPyT > 0)
                {
                    foreach (BaseNegocio b in this)
                    {
                        if (Lib.NoIntNulo(b["IDPyT"]) == IDPyT)
                        {
                            pyt = (PresupuestoYTarifa)b;
                            break;
                        }
                    }
                }
            }

            if (pyt == null)
            {
                foreach (BaseNegocio b in this)
                {
                    if (Lib.NoIntNulo(b["IDTarifa"]) == IDTarifa)
                    {
                        pyt = (PresupuestoYTarifa)b;
                        break;
                    }
                }
            }

			if (pyt == null)
			{
				Tarifa t = new Tarifa();
				BaseNegocio b = CrearEnBlanco();

				t.IDActual[0] = IDTarifa;

				t.Leer();
				b.ValoresPorDefecto(t);

				AnexarObjetoActivo();

				pyt = (PresupuestoYTarifa)this.ObjetoActivo;

				// Necesario.
				pyt.Guardar();
			}

			return pyt;
		}

        public int CrearOModificar(int IDPyT, object IDPresupuestoVersion, int IDTarifa)
        {
            bool estaSiendoUsadaEnOtraVersion = false;

            foreach (BaseNegocio b in Padre.Coleccion("ColPresupuestoVersion"))
            {
                if (IDPresupuestoVersion is DBNull || b.IDActual[0] != (int)IDPresupuestoVersion)
                {
                    foreach (BaseNegocio dt in b.Coleccion("ColPresupuestoVersionDetalle"))
                    {
                        if ((int)dt["IDPyT"] == IDPyT)
                        {
                            estaSiendoUsadaEnOtraVersion = true;
                            break;
                        }
                    }
                }
            }

            if (estaSiendoUsadaEnOtraVersion)
            {
                PresupuestoYTarifa pyt = null;

                Tarifa t = new Tarifa();
                BaseNegocio b = CrearEnBlanco();

                t.IDActual[0] = IDTarifa;

                t.Leer();
                b.ValoresPorDefecto(t);

                AnexarObjetoActivo();

                pyt = (PresupuestoYTarifa)this.ObjetoActivo;

                // Necesario.
                pyt.Guardar();

                return pyt.IDActual[0];
            }
            else
            {
                return IDPyT;
            }
        }
    }
}
