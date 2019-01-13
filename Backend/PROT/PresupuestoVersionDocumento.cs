using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;
using PROT.GestionArchivos.Negocio.GenDoc;
using PROT.GestionArchivos.Proceso;
using PROT.GestionArchivos.Negocio;
using LCC.Negocio.SistemaNumeracion;

namespace LCC.Negocio.Presupuestos
{
	class PresupuestoVersionDocumento : LCC.Negocio.GenDoc.BaseDocumento
    {
		private PresupuestoVersion pv = null;
        private BasePresupuesto pres = null;
        private GenDocModelo gd = null;

		public PresupuestoVersionDocumento()
		{
			fila = new Fila("PresupuestoVersionDocumento");
            nombre = "Documento";
			sinPermisoLeer = true;
            sinPermisoModificar = true;
            sinPermisoCrear = true;

			objetoAsociadoParaIDDivisionSucursal = "Presupuesto";
        }

        public override string DescripcionNormal
        {
            get
            {
                if (ObjetoAsociado("Presupuesto") == null)
                {
                    return "Documento";
                }
                else
                {
                    return "Documento de " + pres.DescripcionNormal;
                }
            }
        }

		public override int IDGenDocOrigenDatos
		{
			get
			{
				int id = 0;

				id = ProveedorListas.IDDeCombo("GenDocOrigenDatos_Objeto", "PresupuestoVersionDocumento");

				return id;
			}
		}

        protected override string NombreTrabajoProcesoInicial
        {
            get
            {
                if (this["IDGenDocModelo"] is DBNull)
                {
                    return "ProcesarAdjuntoOffice";
                }
                else
                {
                    return "ProcesarDocumentoOffice";
                }
            }
        }

		public override int IDArchivoTrabajoProceso
		{
			get
			{
				int id = 0;

				if (this["IDGenDocModelo"] is DBNull)
				{
                    id = ArchivoTrabajoProceso.IDArchivoTrabajoProceso("ProcesarAdjuntoOffice");
				}
				else
				{
					if (this["IDArchivo"] is DBNull)
					{
                        id = ArchivoTrabajoProceso.IDArchivoTrabajoProceso("ProcesarDocumentoOffice");
					}
					else
					{
                        id = ArchivoTrabajoProceso.IDArchivoTrabajoProceso("ProcesarAdjuntoOffice");
					}
				}

				return id;
			}
		}

		public override int IDGenDocModelo
		{
			get
			{
				int id = 0;

				if (!(this["IDGenDocModelo"] is DBNull))
				{
					id = (int)this["IDGenDocModelo"];
				}

				return id;
			}
		}

		public override string RutaDefinitivaArchivo()
		{
			return Propiedad("RutaArchivos");
		}

		// Antes de meter IDPresupuesto en PresupuestoVersionDocumento.
		//public object IDPresupuesto
		//{
		//    get
		//    {
		//        if (this["IDPresupuestoVersion"] is DBNull)
		//        {
		//            return DBNull.Value;
		//        }
		//        else
		//        {
		//            if (Padre != null && Padre.Padre != null)
		//            {
		//                return Padre.Padre["IDPresupuesto"];
		//            }
		//            else
		//            {
		//                return Datos.Instancia().DameExpresionInt("Select IDPresupuesto"
		//                    + " FROM PresupuestoVersion Where IDPresupuestoVersion = "
		//                    + this["IDPresupuestoVersion"].ToString());
		//            }
		//        }
		//    }
		//    set
		//    {
		//        if (value is DBNull)
		//        {
		//            this["IDPresupuestoVersion"] = value;
		//        }
		//        else
		//        {
		//            if (this.Modificado || this.Nuevo || this["IDPresupuestoVersion"] is DBNull)
		//            {
		//                this["IDPresupuestoVersion"] = Datos.Instancia().DameExpresionInt("Select Max(IDPresupuestoVersion)"
		//                    + " From PresupuestoVersion Where IDPresupuesto = " + value);
		//            }
		//        }
		//    }
		//}

        #region Gestión de registro
		// Antes de meter IDPresupuesto en PresupuestoVersionDocumento.
		//public override void Guardar(bool conPermisos)
		//{
		//    if (Modificado || Nuevo)
		//    {
		//        this["IDPresupuesto"] = IDPresupuesto;
		//    }

		//    base.Guardar(conPermisos);
		//}

		// A ver qué pasa con la version, creo que no es necesaria.
		//public override bool ExisteCampo(string campo)
		//{
		//    if (campo == "Version")
		//    {
		//        return true;
		//    }
		//    else
		//    {
		//        return base.ExisteCampo(campo);
		//    }
		//}

		public override bool CumpleFiltro(string nombre)
		{
			if (nombre == "a")
			{
                return (this["IDGenDocModelo"] is DBNull && !Lib.NoBoolNulo(this["EsAceptacion"]));
			}
			return base.CumpleFiltro(nombre);
		}

		// A ver qué pasa con la version, creo que no es necesaria.
		//public override object this[string campo]
		//{
		//    get
		//    {
		//        if (campo == "Version")
		//        {
		//            string v = "";

		//            try
		//            {
		//                v = ObjetoAsociado("PresupuestoVersion")[campo].ToString();
		//            }
		//            catch
		//            {
		//            }

		//            return v;
		//        }
		//        // Antes de meter IDPresupuesto en PresupuestoVersionDocumento.
		//        //else if (campo == "IDPresupuesto")
		//        //{
		//        //    return IDPresupuesto;
		//        //}
		//        else
		//        {
		//            return base[campo];
		//        }
		//    }
		//    set
		//    {
		//        // Antes de meter IDPresupuesto en PresupuestoVersionDocumento.
		//        //if (campo == "IDPresupuesto")
		//        //{
		//        //    IDPresupuesto = value;
		//        //}
		//        //else
		//        //{
		//            base[campo] = value;
		//        //}
		//    }
		//}


        /// <summary>
        /// Devuelve si el objeto es correcto para guardar.
        /// </summary>
        public override bool Correcto
        {
            get
            {
                bool correcto = true;

                if (!Lib.NoBoolNulo(this["EsAceptacion"]) && (this["Archivo"] is DBNull) && (this["IDGenDocModelo"] is DBNull))
                {
                    ErrorMensaje = "Debe seleccionar un archivo o un modelo para generar el documento.";
                    ErrorCampo = "Archivo";
                    correcto = false;
                }

                if (correcto)
                {
                    if (Nuevo)
                    {
                        if (this["Nombre"] is DBNull)
                        {
                            if (!(this["IDGenDocModelo"] is DBNull))
                            {
                                string nom = "Generar desde Modelo " + ObjetoAsociado("GenDocModelo").DescripcionNormal;

                                if (nom.Length > MaxLength("Nombre"))
                                {
                                    nom = nom.Substring(0, MaxLength("Nombre"));
                                }
                                this["Nombre"] = nom;
                            }
                            else
                            {
                                if (!Lib.NoBoolNulo(this["EsAceptacion"]))
                                {
                                    this["Nombre"] = "Fichero adjunto " + this["ArchivoOriginal"].ToString();
                                }
                                else
                                {
                                    this["Nombre"] = Propiedad("NombreArchivoGenerado");
                                }
                            }
                        }
                    }

                    correcto = base.Correcto;
                }

                return correcto;
            }
        }

        /// <summary>
        /// Establece los valores por defecto para un objeto nuevo.
        /// </summary>
        public override void ValoresPorDefecto(BaseNegocio origen)
        {
            if (origen is GenDocModelo)
            {
                this["IDGenDocModelo"] = origen["IDGenDocModelo"];
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
        public override BaseNegocio ObjetoAsociado(string NombreObjetoAsociado)
        {
            if (NombreObjetoAsociado == "PresupuestoVersion")
			{
				// Antes de meter IDPresupuesto en PresupuestoVersionDocumento.
				//if (Padre != null && Padre.Padre != null)
				//{
				//    if (Nuevo)
				//    {
				//        pv = (PresupuestoVersion)Padre.Padre.Coleccion("ColPresupuestoVersion")[Padre.Padre.Coleccion("ColPresupuestoVersion").Count - 1];
				//    }
				//    else
				//    {
				//        foreach (BaseNegocio pver in Padre.Padre.Coleccion("ColPresupuestoVersion"))
				//        {
				//            if (pver.Nuevo)
				//            {
				//                pv = (PresupuestoVersion)pver;
				//                break;
				//            }
				//            if (!(this["IDPresupuestoVersion"] is DBNull) 
				//                && pver.IDActual[0] == (int)this["IDPresupuestoVersion"])
				//            {
				//                pv = (PresupuestoVersion)pver;
				//                break;
				//            }
				//        }
				//    }
				//}

                if (this["IDPresupuestoVersion"] is DBNull)
                {
                    NombreObjetoAsociado = "Presupuesto";
                }
                else
                {
                    if (pv == null)
                    {
                        pv = (PresupuestoVersion)RecuperaObjetoAsociado((BaseNegocio)pv, "PresupuestoVersion", "IDPresupuestoVersion");
                    }

                    return pv;
                }
			}

			// Antes de meter IDPresupuesto en PresupuestoVersionDocumento.
			//if (NombreObjetoAsociado == "Presupuesto" || NombreObjetoAsociado == "Oportunidad")
			//{
			//    if (Padre != null && Padre.Padre != null)
			//    {
			//        pres = (BasePresupuesto)Padre.Padre;
			//    }
			//    else
			//    {
			//        pres = (BasePresupuesto)ObjetoAsociado("PresupuestoVersion").ObjetoAsociado(NombreObjetoAsociado);
			//    }

			//    return pres;
			//}

			if (NombreObjetoAsociado == "Presupuesto" || NombreObjetoAsociado == "Oportunidad")
			{
				// Clavado en PresupuestoVersion
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

            if (NombreObjetoAsociado == "GenDocModelo")
            {
                gd = (GenDocModelo)RecuperaObjetoAsociado((BaseNegocio)gd, "GenDocModelo", "IDGenDocModelo");

                return gd;
            }

			if (NombreObjetoAsociado == "DivisionSucursal")
			{
				return ObjetoAsociado("Presupuesto").ObjetoAsociado(NombreObjetoAsociado);
			}

            return base.ObjetoAsociado(NombreObjetoAsociado);
        }
        #endregion

		#region Vistas
		public override DataView Vista(string Nombre)
		{
			andParaVistaModelos = " AND ((GenDocModelo.IDGenDocModelo IN (Select IDGenDocModelo From PresupuestoTipoGenDocModelo"
				+ " WHERE IDPresupuestoTipo = " + ObjetoAsociado("Presupuesto")["IDPresupuestoTipo"].ToString() + "))"
				+ " OR (GenDocModelo.IDGenDocModelo IN (SELECT IDGenDocModelo From PresupuestoVersionDocumento"
				+ " WHERE IDPresupuesto = " + ObjetoAsociado("Presupuesto")["IDPresupuesto"].ToString() + ")) )";

			return base.Vista(Nombre);
		}
		#endregion

		#region Propiedades Publicas
        public override string Propiedad(string NombrePropiedad)
        {
            if (NombrePropiedad == "NombreArchivoGenerado")
            {
                string res = "";

                if (Lib.NoBoolNulo(this["EsAceptacion"]))
                {
                    res = "Aceptación firmada";
                }
                else
                {
                    if (this["IDPresupuestoVersion"] is DBNull)
                    {
                        res = BaseSistemaNumeracion.DescripcionCodigoAnyoSinObra((BasePresupuesto)ObjetoAsociado("Presupuesto")).Replace('/', '_');

                        res = "Presupuesto " + res;
                    }
                    else
                    {
                        res = ObjetoAsociado("PresupuestoVersion").Propiedad(NombrePropiedad);
                    }

                    if (IDGenDocModelo > 0)
                    {
                        res += " _" + ProveedorListas.TextoDeCombo("GenDocModelo", IDGenDocModelo);
                    }
                }

                return res;
            }

            if (NombrePropiedad == "PermiteCreacionArchivo")
            {
                if (ObjetoAsociado("Presupuesto") == null)
                {
                    return "";
                }
                else
                {
                    return "1";
                }
            }

            if (NombrePropiedad == "RutaArchivos")
            {
                return ObjetoAsociado("Presupuesto").Propiedad(NombrePropiedad);
            }

            return base.Propiedad(NombrePropiedad);
        }
        #endregion
    }

    class ColPresupuestoVersionDocumento : ColBaseNegocio
    {
		public ColPresupuestoVersionDocumento(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
            : base(Padre, CampoRelacionPadre, Sql)
        {
        }

        public override BaseNegocio CrearInstanciaHijo()
        {
            BaseNegocio b;

			b = new PresupuestoVersionDocumento();

            return b;
        }

        public override bool EsModificado(BaseNegocio Objeto)
        {
            if (Lib.NoBoolNulo(Objeto["EsAceptacion"]) && Objeto.Nuevo && Objeto["Archivo"] is DBNull)
            {
                return false;
            }

            return base.EsModificado(Objeto);
        }

        public PresupuestoVersionDocumento DocumentoAceptacionFirmado()
        {
            PresupuestoVersionDocumento pvd = null;

            foreach (BaseNegocio b in this)
            {
                if (Lib.NoBoolNulo(b["EsAceptacion"]))
                {
                    pvd = (PresupuestoVersionDocumento)b;

                    break;
                }
            }

            if (pvd == null)
            {
                CrearEnBlanco();

                pvd = (PresupuestoVersionDocumento)ObjetoActivo;
                pvd["EsAceptacion"] = true;
                AnexarObjetoActivo();

                CrearEnBlanco();
            }

            return pvd;
        }

        public PresupuestoVersionDocumento DocumentoAceptacionFirmadoNulo()
        {
            PresupuestoVersionDocumento pvd = null;

            foreach (BaseNegocio b in this)
            {
                if (Lib.NoBoolNulo(b["EsAceptacion"]))
                {
                    pvd = (PresupuestoVersionDocumento)b;

                    break;
                }
            }

            return pvd;
        }

		public PresupuestoVersionDocumento ObjetoPVD(string NombreObjeto)
		{
			string[] p = NombreObjeto.Split('_');
			int IDPresupuestoVersion = Int32.Parse(p[1]);
			int IDGenDocModelo = Int32.Parse(p[2]);

			PresupuestoVersionDocumento pvd = null;

			foreach (BaseNegocio b in this)
			{
				if (!(b["IDGenDocModelo"] is DBNull))
				{
					if (IDPresupuestoVersion == 0)
					{
						if (b["IDPresupuestoversion"] is DBNull && (int)b["IDGenDocModelo"] == IDGenDocModelo)
						{
							pvd = (PresupuestoVersionDocumento)b;

							break;
						}
					}
					else
					{
						if (Lib.NoIntNulo(b["IDPresupuestoversion"]) == IDPresupuestoVersion && (int)b["IDGenDocModelo"] == IDGenDocModelo)
						{
							pvd = (PresupuestoVersionDocumento)b;

							break;
						}
					}
				}
			}

			if (pvd == null)
			{
				CrearEnBlanco();

				pvd = (PresupuestoVersionDocumento)ObjetoActivo;

				if (IDPresupuestoVersion > 0)
				{
					pvd["IDPresupuestoVersion"] = IDPresupuestoVersion;
				}
				pvd["IDGenDocModelo"] = IDGenDocModelo;

				AnexarObjetoActivo();

				CrearEnBlanco();
			}

			return pvd;
		}
    }
}
