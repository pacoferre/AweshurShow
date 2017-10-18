using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;
using LCC.Negocio;
using LCC.Negocio.Clientes;
using LCC.Negocio.Obras;
using LCC.Negocio.Tablas;
using LCC.Negocio.Tarifas;
using LCC.Negocio.Bases;
using LCC.Negocio.Tareas;
using LCC.Negocio.Divisiones;
using LCC.Negocio.SistemaNumeracion;
using LCC.Negocio.Comunicaciones;
using LCC.Negocio.Facturas;
using LCC.Negocio.Trabajos;
using LCC.Negocio.Utiles.LocalizacionGPS;
using PROT.GestionArchivos;
using PROT.GestionArchivos.Negocio.Comunicaciones;
using PROT.NegocioGeneral.ExtensionPropiedades;

namespace LCC.Negocio.Presupuestos
{
	public class BasePresupuesto : LCC.Negocio.Bases.BaseDivisionSucursal, ContieneCliente, SoportaSistemaNumeracion
    {
        static string sqlSelect = "";
        private string tarifasexcel = "";
        private Dictionary<string, bool> OpcionesCopia = new Dictionary<string, bool>();
        protected Obra obra = null;
        //protected PresupuestoConcepto PresConcep = null;
        protected Cliente cliente = null;
        protected ClienteDelegacion clienteDelegacion = null;
        protected DivisionSucursal divS = null;
		protected LocalizacionGPS loc = null;
		protected Arquitecto arq = null;
        protected TituloReglamento titreg = null;
        protected PresupuestoTipo PresuTipo = null;
        protected FacturaNuevaTarifa fnt = null;
        private bool NoResponse = false;

        private bool presupuestoRecienAceptado = false;
       
        public BasePresupuesto()
        {
            string sql;

            fila = new Fila("Presupuesto");
            sinPermisoLeer = true;

            // si se añaden nuevos, revisar NuevoConCopia!!!!!!!!!!!!!!

            sql = "SELECT * FROM PresupuestoSondeo"
               + " WHERE IDPresupuesto = {0}"
               + " ORDER BY IDPresupuestoSondeo";
            objetosSub.Add("ColPresupuestoSondeo",new ColPresupuestoSondeo(this, "IDPresupuesto", sql));

            sql = "SELECT PresupuestoColaboradorNaM.*, PresupuestoColaborador.Nombre"
                + " FROM PresupuestoColaboradorNaM INNER JOIN"
                + " PresupuestoColaborador ON PresupuestoColaboradorNaM.IDPresupuestoColaborador = PresupuestoColaborador.IDPresupuestoColaborador"
                + " WHERE PresupuestoColaboradorNaM.IDPresupuesto = {0}"
                + " ORDER BY PresupuestoColaborador.Nombre";
            objetosSub.Add("ColPresupuestoColaboradorNaM", new ColPresupuestoColaboradorNaM(this, "IDPresupuesto", sql));

            sql = "SELECT PresupuestoPrecioCompetencia.*, PresupuestoEmpresaCompetencia.Nombre"
                + " FROM PresupuestoPrecioCompetencia INNER JOIN"
                + " PresupuestoEmpresaCompetencia ON PresupuestoPrecioCompetencia.IDPresupuestoEmpresaCompetencia = PresupuestoEmpresaCompetencia.IDPresupuestoEmpresaCompetencia"
                + " WHERE PresupuestoPrecioCompetencia.IDPresupuesto = {0}"
                + " ORDER BY PresupuestoEmpresaCompetencia.Nombre";
            objetosSub.Add("ColPresupuestoPrecioCompetencia", new ColPresupuestoPrecioCompetencia(this, "IDPresupuesto", sql));

            sql = "SELECT PresupuestoYTarifa.*"
                + " FROM PresupuestoYTarifa INNER JOIN"
                + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa"
                + " WHERE PresupuestoYTarifa.IDPresupuesto = {0}"
                + " ORDER BY Tarifa.Codigo";
            objetosSub.Add("ColPresupuestoYTarifa", new ColPresupuestoYTarifa(this, "IDPresupuesto", sql));

			sql = "SELECT PresupuestoVersion.*"
				+ " FROM PresupuestoVersion"
				+ " WHERE PresupuestoVersion.IDPresupuesto = {0}"
				+ " ORDER BY Version";
			objetosSub.Add("ColPresupuestoVersion", new ColPresupuestoVersion(this, "IDPresupuesto", sql));

            sql = "SELECT {0} as IDPresupuesto0, PresupuestoMision2.IDPresupuesto, PresupuestoMision2.IDPresupuestoMisionTipo, PresupuestoMisionTipo.IDPresupuestoMisionTipo As IDPresupuestoMisionTipo0,"
                    + " PresupuestoMisionTipo.Nombre, case when PresupuestoMision2.IDPresupuesto is null then 0 else 1 end as activo,"
                    + " PresupuestoMision2.Importe, PresupuestoMision2.Descripcion, PresupuestoMisionTipo.IDPresupuestoMisionGrupo"
                    + " FROM PresupuestoMisionTipo LEFT OUTER JOIN"
                    + " (SELECT IDPresupuesto, IDPresupuestoMisionTipo, Importe, Descripcion FROM PresupuestoMision"
                    + " WHERE (IDPresupuesto = {0})) as PresupuestoMision2 ON PresupuestoMisionTipo.IDPresupuestoMisionTipo = PresupuestoMision2.IDPresupuestoMisionTipo"
                    + " Order By PresupuestoMisionTipo.IDPresupuestoMisionGrupo, PresupuestoMisionTipo.Orden";
            objetosSub.Add("ColPresupuestoMision", new ColPresupuestoMision(this, "IDPresupuesto", sql));

            sql = "SELECT {0} as IDPresupuesto0, PresupuestoConstruccion2.IDPresupuesto, PresupuestoConstruccion2.IDPresupuestoConstruccionTipo, PresupuestoConstruccionTipo.IDPresupuestoConstruccionTipo As IDPresupuestoConstruccionTipo0,"
                    + " PresupuestoConstruccionTipo.Nombre, case when PresupuestoConstruccion2.IDPresupuesto is null then 0 else 1 end as activo,"
                    + " PresupuestoConstruccionTipo.IDPresupuestoConstruccionGrupo"
                    + " FROM PresupuestoConstruccionTipo LEFT OUTER JOIN"
                    + " (SELECT IDPresupuesto, IDPresupuestoConstruccionTipo FROM PresupuestoConstruccion"
                    + " WHERE (IDPresupuesto = {0})) as PresupuestoConstruccion2 ON PresupuestoConstruccionTipo.IDPresupuestoConstruccionTipo = PresupuestoConstruccion2.IDPresupuestoConstruccionTipo"
                    + " Order By PresupuestoConstruccionTipo.IDPresupuestoConstruccionGrupo, PresupuestoConstruccionTipo.Orden";
            objetosSub.Add("ColPresupuestoConstruccion", new ColPresupuestoConstruccion(this, "IDPresupuesto", sql));

            sql = "SELECT *"
                + " FROM PresupuestoContacto"
                + " WHERE IDPresupuesto = {0}"
                + " ORDER BY IDPresupuestoContactoTipo";
            objetosSub.Add("ColPresupuestoContacto", new ColPresupuestoContacto(this, "IDPresupuesto", sql));

			sql = "SELECT PresupuestoUsuario.*"
				+ " FROM PresupuestoUsuario INNER JOIN"
				+ " PresupuestoUsuarioTipo ON PresupuestoUsuario.IDPresupuestoUsuarioTipo = PresupuestoUsuarioTipo.IDPresupuestoUsuarioTipo"
				+ " WHERE PresupuestoUsuario.IDPresupuesto = {0}"
				+ " ORDER BY PresupuestoUsuarioTipo.Nombre";
			objetosSub.Add("ColPresupuestoUsuario", new ColPresupuestoUsuario(this, "IDPresupuesto", sql));
            
			// Solo para las altas.
            sql = "SELECT *"
                + " FROM PresupuestoNota"
                + " WHERE 1 = 0";
            objetosSub.Add("ColPresupuestoNota", new ColPresupuestoNota(this, "IDPresupuesto", sql));

			// Solo para las altas.
            sql = "SELECT *"
                + " FROM Tarea"
                + " WHERE 1 = 0";
            objetosSub.Add("ColTarea", new ColTarea(this, "IDPresupuesto", sql));

			// Solo para las altas.
			sql = "SELECT *"
				+ " FROM Comunicacion"
				+ " WHERE 1 = 0";
			objetosSub.Add("ColComunicacionSalida", new ColComunicacionSalida(this, "IDPresupuesto", sql));

            // Documentos asociados.
			// Antes de meter IDPresupuesto en PresupuestoVersionDocumento.
			//sql = "SELECT PresupuestoVersionDocumento.*, PresupuestoVersion.Version"
			//    + " FROM PresupuestoVersionDocumento INNER JOIN"
			//    + " PresupuestoVersion ON PresupuestoVersionDocumento.IDPresupuestoVersion"
			//    + " = PresupuestoVersion.IDPresupuestoVersion LEFT OUTER JOIN"
			//    + " Archivo ON PresupuestoVersionDocumento.IDArchivo = Archivo.IDArchivo"
			//    + " WHERE PresupuestoVersion.IDPresupuesto = {0}"
			//    + " ORDER BY Archivo.Activo DESC, Archivo.FechaCreacion DESC";

            sql = "SELECT PresupuestoVersionDocumento.*"
                + " FROM PresupuestoVersionDocumento LEFT OUTER JOIN"
                + " Archivo ON PresupuestoVersionDocumento.IDArchivo = Archivo.IDArchivo"
                + " WHERE PresupuestoVersionDocumento.IDPresupuesto = {0}"
                + " ORDER BY Archivo.Activo DESC, Archivo.FechaCreacion DESC,"
				+ " PresupuestoVersionDocumento.IDPresupuestoVersionDocumento DESC";
            objetosSub.Add("ColPresupuestoVersionDocumento", new ColPresupuestoVersionDocumento(this, "IDPresupuesto", sql));

            objetosSub.Add("ColPropiedades", new ColPresupuestoProp(this, "IDPresupuesto",
                "SELECT * From PresupuestoProp Where IDPresupuesto = {0}"));
        }

		#region Descripción
		/// <summary>
		/// Devuelve el string de la descripción normal del objeto.
		/// </summary>
		public override string DescripcionNormal
		{
			get
			{
				return BaseSistemaNumeracion.DescripcionCodigoAnyo(this);
			}
		}

		public override TipoBasico Tipo(string campo)
		{
			if (campo.StartsWith("IDUsuario") || campo == "C_IDDivisionSucursal")
			{
				return TipoBasico.NUMERO;
			}
			else
			{
                if (campo.StartsWith("C_"))
                {
                    return TipoBasico.BIT;
                }
                else if (campo == "TarifasExcel")
                {
                    return TipoBasico.TEXTO;
                }
                else
                {
                    return base.Tipo(campo);
                }
			}
		}

        public override int MaxLength(string campo)
        {
            if (campo == "TarifasExcel")
            {
                return 100000;
            }
            return base.MaxLength(campo);
        }

		public override bool SoloLectura(string campo)
		{
			if (campo.StartsWith("IDUsuario"))
			{
                if (campo == "IDUsuario_2" && this[campo] != System.DBNull.Value)
                {
                    if ((bool)UsuarioActual["SU"])
                    {
                        return false;
                    }
                    else
                    {
                        return !UsuarioActual.Permiso("MET", "PresupuestoUsuarios", "ModificarUsuarios");
                    }
                }

                if (campo == "IDUsuario_3")
                {
                    if (this.Nuevo)
                    { 
                        return false;
                    }

                    if ((bool)UsuarioActual["SU"])
                    {
                        return false;
                    }
                    else
                    {
                        return !UsuarioActual.Permiso("MET", "PresupuestoUsuarios", "ModificarUsuarios");
                    }
                }

				return false;
			}
			else
			{
                if (campo.StartsWith("C_"))
                {
                    return false;
                }
                else
                {
                    if ((bool)this["Aceptado"]
                        && (campo == "FechaEmision" || campo == "IDTipoFormaPago" || campo == "Descuento" ||
                        campo == "IDFacturaTipoIVA" || campo == "GastosYBfo" || campo == "PorcentajeGastosGenerales" ||
                        campo == "PorcentajeBfoIndustrial" || campo == "IDPresupuestoMisionGrupo" || campo == "IDTituloReglamento" || campo == "IDPresupuestoEstado"))
                    {
                        return true;
                    }
                    else if (campo == "Telefono" || campo == "Telefono2" || campo == "Fax" || campo == "Email")
                    {
                        // Cuando existe delegación seleccionada, los campos son de lectura.

                        return !(this["IDClienteDelegacion"] is DBNull);
                    }
                    else if (campo == "TarifasExcel")
                    {
                        return false;
                    }
                    else
                    {
                        return base.SoloLectura(campo);
                    }
                }
			}
		}

		public override bool PermiteNulos(string campo)
		{
			if (campo.StartsWith("IDUsuario"))
			{

				// 1	Creador
				// 2	Procedencia
				// 3	Responsable
				// 4	Aceptación
				// 5    Firma

				return campo.EndsWith("_2") || campo.EndsWith("_5");
			}
            else if (campo == "TarifasExcel" || campo == "C_IDDivisionSucursal")
            {
                return false;
            }
			else
			{
				return base.PermiteNulos(campo);
			}
		}

        private int C_IDDivisionSucursal = 0;

        public override object this[string campo]
        {
            get
            {
                if (campo == "C_IDDivisionSucursal")
                {
                    return C_IDDivisionSucursal;
                }
                if (campo.StartsWith("C_"))
                {
                    if (!OpcionesCopia.ContainsKey(campo))
                    {
                        OpcionesCopia.Add(campo, true);
                    }
                    return OpcionesCopia[campo];
                }
                else
                {
                    if ((campo == "Telefono" || campo == "Telefono2" || campo == "Fax" || campo == "Email")
                    && !(this["IDClienteDelegacion"] is DBNull))
                    {
                        return ObjetoAsociado("ClienteDelegacion")[campo];
                    }
                    if (campo == "IDDivision")
                    {
                        return IDDivision;
                    }
                    else
                    {
                        if (campo.StartsWith("IDUsuario"))
                        {
                            return ((ColPresupuestoUsuario)Coleccion("ColPresupuestoUsuario")).LeerIDUsuario(campo);
                        }
                        else if (campo == "TarifasExcel")
                        {
                            return tarifasexcel;
                        }
                        else
                        {
                            return base[campo];
                        }
                    }
                }
            }
            set
            {
                if (campo == "C_IDDivisionSucursal")
                {
                    C_IDDivisionSucursal = Lib.NoIntNulo(value);
                    return;
                }
               
                if (campo == "NombreObra")
                {
                    value = value.ToString().Replace(PROT.AccesoDatos.Datos.CRLF, " ");
                }

                if (campo == "FechaEmision" && this.Nuevo)
                {
                    try
                    {
                        this["Anyo"] = (Int16)((DateTime)value).Year;
                    }
                    catch
                    {
                    }
                }

                if (campo.StartsWith("C_"))
                {
                    if (!OpcionesCopia.ContainsKey(campo))
                    {
                        OpcionesCopia.Add(campo, true);
                    }
                    OpcionesCopia[campo] = (bool) value;
                }
                else if (campo == "TarifasExcel")
                {
                    tarifasexcel = (string)value;
                }
                else
                {
                    if (!(value is DBNull) && (campo == "Telefono" || campo == "Telefono2"
                        || campo == "Fax" || campo == "Email")
                        && !(this["IDClienteDelegacion"] is DBNull))
                    {
                        // No queremos modificar los datos del presupuesto en caso de tener delegacion asociada.
                        return;
                    }
                    if (campo != "IDDivision")
                    {
                        if (campo.StartsWith("IDUsuario"))
                        {
                            ((ColPresupuestoUsuario)Coleccion("ColPresupuestoUsuario")).GrabarIDUsuario(campo, value);
                        }
                        else
                        {
                            base[campo] = value;
                            if (campo == "IDCliente")
                            {
                                if (!(value is DBNull))
                                {
                                    this["CIF"] = DBNull.Value;
                                    this["Peticionario"] = DBNull.Value;
                                }
                                else
                                {
                                    this["IDClienteDelegacion"] = DBNull.Value;
                                }

                                foreach (BaseNegocio con in Coleccion("ColPresupuestoContacto"))
                                {
                                    if (value is DBNull)
                                    {
                                        con["IDContacto"] = DBNull.Value;
                                    }

                                    if (con.Nuevo)
                                    {
                                        con.ValoresPorDefecto(con);  // Para que pille los datos de la delegación principal del cliente.
                                    }
                                }
                            }
                            if (campo == "IDDivisionSucursal" || (!(value is DBNull) && campo == "IDTituloReglamento"))
                            {
                                // En las sucursales que no tienen reglamentación pues eso.
                                // Solo se va producir en registros nuevos.
                                if (!(this["IDTituloReglamento"] is DBNull)
                                    && !DivisionSucursal.UsaReglamentacion(this["IDDivisionSucursal"]))
                                {
                                    this["IDTituloReglamento"] = DBNull.Value;
                                }
                            }
                            if (campo == "IDClienteDelegacion")
                            {
                                if (!(value is DBNull))
                                {
                                    this["Telefono"] = DBNull.Value;
                                    this["Telefono2"] = DBNull.Value;
                                    this["Fax"] = DBNull.Value;
                                    this["Email"] = DBNull.Value;
                                }
                            }
                        }
                    }
                }
            }
        }
        #endregion

        #region Gestión de registro
        /// <summary>
        /// Devuelve si el objeto es correcto para guardar.
        /// </summary>
        public override bool Correcto
        {
            get
            {
                bool correcto = base.Correcto;

				if (correcto && !Eliminar)
				{
					// La delegación del Cliente no puede ser una de otro cliente...
					if (!(this["IDCliente"] is DBNull || this["IDClienteDelegacion"] is DBNull))
					{
						int idClientePadre = 0;
						int idCliente = Datos.Instancia().DameExpresionInt("Select IDCliente From ClienteDelegacion"
							+ " WHERE IDClienteDelegacion = " + this["IDClienteDelegacion"].ToString());

						ObjetoAsociado("Cliente");

						if (!(cliente["IDClientePadre"] is DBNull))
						{
							idClientePadre = (int) cliente["IDClientePadre"];
						}

						if (idCliente != (int)this["IDCliente"] && idCliente != idClientePadre)
						{
							correcto = false;
							this.ErrorMensaje = "La delegación del cliente no pertenece al cliente. Tiene que seleccionar otra.";
						}
					}
				}

				if (correcto && !Eliminar)
				{
					if (((Int16)this["Anyo"]) < 1980 || ((Int16)this["Anyo"]) > 2050)
					{
						correcto = false;
						ErrorMensaje = "Año incorrecto.";
						ErrorCampo = "Anyo";
					}
				}

				if (correcto && Eliminar)
				{
					if (AceptadoAhora)
					{
						correcto = false;
						ErrorMensaje = "El presupuesto está aceptado. No se puede eliminar.";
					}
				}

                return correcto;
            }
        }

        /// <summary>
        /// Establece los valores por defecto para un objeto nuevo.
        /// </summary>
        public override void ValoresPorDefecto()
        {
            ColPresupuestoUsuario col = (ColPresupuestoUsuario)Coleccion("ColPresupuestoUsuario");

            this["IDDivisionSucursal"] = DivisionSucursal.DivisionSucursalPorDefecto();

            // No se ha hecho nada.
            this["IDPresupuestoEstado"] = 1;

            //TODO: Mejor con Valor de División.
            if ((int)this["IDDivision"] == 2 || (int)this["IDDivision"] == 12)
            {
                this["IDPresupuestoClase"] = 2;
                if ((int)this["IDDivision"] == 2)
                {
                    this["IDPresupuestoTipo"] = 92; //225
                }
                if ((int)this["IDDivision"] == 12)
                {
                    this["IDPresupuestoTipo"] = 225;
                }
            }
            else
            {
                this["IDPresupuestoClase"] = 1;
            }

            this["Aceptado"] = false;
            this["Euros"] = true;
            this["Anyo"] = (Int16)System.DateTime.Now.Year;
            this["FechaEmision"] = System.DateTime.Today;
            this["Descuento"] = 0;
            this["MostrarTotalMenosBonificacion"] = false;
            this["ConContrato"] = false;
            this["IDFacturaTipoIVA"] = 21;
            this["PorcentajeGastosGenerales"] = false;
            this["PorcentajeBfoIndustrial"] = false;
            this["GastosYBfo"] = false;

            this["IDPresupuestoTipo"] = (int) ProveedorListas.RellenaCombo("PresupuestoTipo", (int) this.IDDivision).Rows[0][0];

            col.CrearEnBlanco();
            col.ObjetoActivo["IDPresupuestoUsuarioTipo"] = 1;
            col.ObjetoActivo["IDUsuario"] = UsuarioActual.IDActual[0];
            col.AnexarObjetoActivo();

            col.CrearEnBlanco();
            col.ObjetoActivo["IDPresupuestoUsuarioTipo"] = 3;
            col.ObjetoActivo["IDUsuario"] = UsuarioActual.IDActual[0];
            col.AnexarObjetoActivo();

            col.CrearEnBlanco();

            this["IDPresupuestoAvalEstado"] = 1;
            this["ImporteAval"] = 0;
            this["SinSeguimiento"] = false;
            this["OcultarContacto"] = false;
            this["Denegado"] = false;
            this["TieneOCT"] = false;
            this["IDTipoFormaPago"] = 1;
            this["TieneOCT"] = false;
            this["IDPresupuestoFormaEntrada"] = 1;
            this["AcuerdoMarco"] = false;
            this["AceptadoPorEscrito"] = 0;
            this["EstadoEmpezada"] = false;
            this["EstadoConstPreexistente"] = false;
            this["EstadoRehabilitacion"] = false;
            this["EstadoObraNueva"] = false;
            this["EstadoTerminada"] = false;
            this["TienenCopiasPlanos"] = false;

            this["_AceptarTarifa9001"] = false;
        }

        public override void ValoresPorDefecto(BaseNegocio origen)
        {
			if (origen is BasePresupuesto)
			{
                this["IDDivisionSucursal"] = origen["IDDivisionSucursal"];
			}

            if (origen is Cliente)
            {
                cliente = (Cliente)origen;

                this["IDCliente"] = cliente["IDCliente"];

                if ((bool)cliente["FijarFormaPago"])
                {
                    this["IDTipoFormaPago"] = cliente["IDTipoFormaPago"];
                }

                this["IDClienteDelegacion"] = cliente.Central.IDActual[0];
            }

            if (origen is Contacto)
            {
                cliente = (Cliente) ((Contacto)origen).ObjetoAsociado("Cliente");

                this["IDCliente"] = cliente["IDCliente"];
                if (origen["IDClienteDelegacion"] is DBNull)
                {
                    this["IDClienteDelegacion"] = cliente.Central.IDActual[0];
                }
                else
                {
                    this["IDClienteDelegacion"] = origen["IDClienteDelegacion"];
                }

                this.ObjetoAsociado("PrimerContactoPrincipal")["IDContacto"] = origen["IDContacto"];
            }
        }

		public void EstablecerRestriccionBusquedaTarifas(Filtro fil)
		{
			fil.EstablecerRestriccion("IDDivision", "," + this["IDDivision"].ToString() + ",");
			if (!(this["IDTituloReglamento"] is DBNull))
			{
				fil.EstablecerRestriccion("Tarifa_IDTitulo", TituloReglamento.IDTitulos(this["IDTituloReglamento"]));
			}
			else
			{
				fil.EstablecerRestriccion("Tarifa_IDTitulo", "");
			}
			fil.RestriccionActivada = true;
		}

		public override ColBaseNegocio Coleccion(string NombreColeccion)
		{
			if (NombreColeccion == "ColPresupuestoVersionDocumento")
			{
				Coleccion("ColPresupuestoVersion").Usar();
			}

			return base.Coleccion(NombreColeccion);
		}

		public override void LeerObjetosAsociados()
		{
			base.LeerObjetosAsociados();

            C_IDDivisionSucursal = Lib.NoIntNulo(this["IDDivisionSucursal"]);

            obra = null;
            cliente = null;
            clienteDelegacion = null;
            divS = null;
		    loc = null;
		    arq = null;

            //if (IDPresupuestoVersionActual > 0)
            //{
            //    foreach (BaseNegocio b in Coleccion("ColPresupuestoVersion"))
            //    {
            //        if (b.IDActual[0] == IDPresupuestoVersionActual)
            //        {
            //            Coleccion("ColPresupuestoVersion").ObjetoActivo = b;
            //            break;
            //        }
            //    }
            //}
        }

		public bool LocalizacionModificada
		{
			get
			{
				if (loc != null && loc.Modificado)
				{
					return true;
				}

				return false;
			}
		}

		public void GuardarLocalizacionSiModificada()
		{
			if (LocalizacionModificada)
			{
				loc.Guardar();
			}
		}

        public override void Guardar(bool conPermisos)
        {
            bool eraNuevo = this.Nuevo;
            bool eraEliminar = this.Eliminar;
            bool tarifasCambiadas = this.Coleccion("ColPresupuestoVersion").Modificado;
            //            IDPresupuestoVersionActual = Coleccion("ColPresupuestoVersion").ObjetoActivo.IDActual[0];

            if (Nuevo && (int)this["IDDivisionSucursal"] 
                == ProveedorListas.IDDeCombo("DivisionSucursalTodasTodas", "EICI Madrid"))
            {
                throw new Exception("No se pueden crear presupuestos en esta Sucursal.");
            }

            ClienteDelegacion.ProcesarGenerico(this);

			if (!Eliminar && Modificado)
			{
				if (!(this["IDCliente"] is DBNull))
				{
					this["CIF"] = DBNull.Value;
				}
				if (!(this["IDClienteDelegacion"] is DBNull))
				{
					this["Telefono"] = DBNull.Value;
					this["Telefono2"] = DBNull.Value;
					this["Fax"] = DBNull.Value;
					this["Email"] = DBNull.Value;
				}
			}

            if (Lib.NoBoolNulo(this["_AceptarTarifa9001"]))
            {
                foreach (BaseNegocio b in this.Coleccion("ColPresupuestoVersion"))
                {
                    if ((bool)b["Principal"])
                    {
                        foreach (BaseNegocio bi in b.Coleccion("ColPresupuestoVersionDetalle"))
                        {
                            PresupuestoYTarifa pytacep = new PresupuestoYTarifa();
                            pytacep.IDActual[0] = (int)bi["IDPyt"];
                            pytacep.Leer();

                            //Si el titulo es TRABAJOS DE LABORATORIO Y la tarifa no es la 9001 entonces el precio es 0€

                            Tarifa taacep = new Tarifa();
                            taacep.IDActual[0] = (int)pytacep["IDTarifa"];
                            taacep.Leer();

                            Titulo tiacep = new Titulo();
                            tiacep.IDActual[0] = (int)taacep["IDTitulo"];
                            tiacep.Leer();

                            if (tiacep["DescTitulo"].ToString() == "TRABAJOS DE LABORATORIO" && taacep["Codigo"].ToString() != "9001")
                            {
                                pytacep["Precio"] = 0;
                                pytacep.Guardar();
                            }
                        }
                    }
                }
            }


			if (!Eliminar)
			{
				GuardarLocalizacionSiModificada();
			}
             
            ColPresupuestoVersion c = (ColPresupuestoVersion)Coleccion("ColPresupuestoVersion");

            if ((DateTime)this["FechaEmision"] != (DateTime)c.VersionPrincipal["FechaEmision"])
            {
                c.VersionPrincipal["FechaEmision"] = (DateTime)this["FechaEmision"];
            }

            base.Guardar(conPermisos);
            ActualizarPresupuestoEnBaseAntigua(eraNuevo, eraEliminar, tarifasCambiadas || presupuestoRecienAceptado);
            if (presupuestoRecienAceptado)
            {
                ActualizarPresupuestoEnBaseAntigua(eraNuevo, eraEliminar, true);
                presupuestoRecienAceptado = false;
            }

			// Limpieza de PresupuestoyTarifa.

			if (IDActual[0] > 0)  // Al eliminar, por ejemplo, se pone en modo Nuevo con ID a 0.
			{
				Datos.Instancia().executeSQL("DELETE FROM PresupuestoYTarifa"
					+ " WHERE (IDPyT NOT IN"
					+ " (SELECT PresupuestoVersionDetalle.IDPyT"
					+ " FROM PresupuestoVersionDetalle INNER JOIN"
					+ " PresupuestoVersion ON PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion"
					+ " WHERE (PresupuestoVersion.IDPresupuesto = " + IDActual[0].ToString() + ")))"
					+ " AND (IDPresupuesto = " + IDActual[0].ToString() + ")"
                    + " AND NOT EXISTS(SELECT IDPYT FROM TrabajoDetalle WHERE IDPYT = PresupuestoYTarifa.IDPYT)"
                    + " AND NOT EXISTS(SELECT IDPYT FROM FacturaDetalle WHERE IDPYT = PresupuestoYTarifa.IDPYT)");

				Datos.Instancia().executeSQL("update PresupuestoVersionDetalle set idpyt = correccion.idcorregido"
                    + " FROM PresupuestoVersionDetalle AS pvd INNER JOIN"
                    + " (SELECT pyt.IDPyT, PresupuestoYTarifa.IDPyT AS idcorregido"
                    + " FROM PresupuestoYTarifa AS pyt INNER JOIN"
                    + " (SELECT IDPresupuesto, IDTarifa, Precio, MAX(IDPyT) AS Expr2, COUNT(IDPyT) AS Expr1"
                    + " FROM PresupuestoYTarifa AS pyt1"
                    + " WHERE pyt1.IDPresupuesto = " + IDActual[0].ToString()
                    + " GROUP BY IDPresupuesto, IDTarifa, Precio"
                    + " HAVING (COUNT(IDPyT) > 1)) AS pyt2 ON pyt.IDPresupuesto = pyt2.IDPresupuesto AND pyt.Precio = pyt2.Precio AND "
                    + " pyt.IDTarifa = pyt2.IDTarifa INNER JOIN"
                    + " PresupuestoYTarifa ON pyt2.IDPresupuesto = PresupuestoYTarifa.IDPresupuesto AND pyt2.IDTarifa = PresupuestoYTarifa.IDTarifa AND "
                    + " pyt2.Precio = PresupuestoYTarifa.Precio AND pyt2.Expr2 = PresupuestoYTarifa.IDPyT AND pyt.IDPyT <> PresupuestoYTarifa.IDPyT"
                    + " WHERE pyt.IDPresupuesto = " + IDActual[0].ToString() + ") AS correccion ON "
                    + " pvd.IDPyT = correccion.IDPyT");

				Datos.Instancia().executeSQL("update trabajoDetalle set idpyt = correccion.idcorregido"
                    + " FROM trabajoDetalle AS pvd INNER JOIN"
                    + " (SELECT pyt.IDPyT, PresupuestoYTarifa.IDPyT AS idcorregido"
                    + " FROM PresupuestoYTarifa AS pyt INNER JOIN"
                    + " (SELECT IDPresupuesto, IDTarifa, Precio, MAX(IDPyT) AS Expr2, COUNT(IDPyT) AS Expr1"
                    + " FROM PresupuestoYTarifa AS pyt1"
                    + " WHERE pyt1.IDPresupuesto = " + IDActual[0].ToString()
                    + " GROUP BY IDPresupuesto, IDTarifa, Precio"
                    + " HAVING (COUNT(IDPyT) > 1)) AS pyt2 ON pyt.IDPresupuesto = pyt2.IDPresupuesto AND pyt.Precio = pyt2.Precio AND "
                    + " pyt.IDTarifa = pyt2.IDTarifa INNER JOIN"
                    + " PresupuestoYTarifa ON pyt2.IDPresupuesto = PresupuestoYTarifa.IDPresupuesto AND pyt2.IDTarifa = PresupuestoYTarifa.IDTarifa AND "
                    + " pyt2.Precio = PresupuestoYTarifa.Precio AND pyt2.Expr2 = PresupuestoYTarifa.IDPyT AND pyt.IDPyT <> PresupuestoYTarifa.IDPyT"
                    + " WHERE pyt.IDPresupuesto = " + IDActual[0].ToString() + ") AS correccion ON "
                    + " pvd.IDPyT = correccion.IDPyT");

				Datos.Instancia().executeSQL("update facturaDetalle set idpyt = correccion.idcorregido"
                    + " FROM facturaDetalle AS pvd INNER JOIN"
                    + " (SELECT pyt.IDPyT, PresupuestoYTarifa.IDPyT AS idcorregido"
                    + " FROM PresupuestoYTarifa AS pyt INNER JOIN"
                    + " (SELECT IDPresupuesto, IDTarifa, Precio, MAX(IDPyT) AS Expr2, COUNT(IDPyT) AS Expr1"
                    + " FROM PresupuestoYTarifa AS pyt1"
                    + " WHERE pyt1.IDPresupuesto = " + IDActual[0].ToString()
                    + " GROUP BY IDPresupuesto, IDTarifa, Precio"
                    + " HAVING (COUNT(IDPyT) > 1)) AS pyt2 ON pyt.IDPresupuesto = pyt2.IDPresupuesto AND pyt.Precio = pyt2.Precio AND "
                    + " pyt.IDTarifa = pyt2.IDTarifa INNER JOIN"
                    + " PresupuestoYTarifa ON pyt2.IDPresupuesto = PresupuestoYTarifa.IDPresupuesto AND pyt2.IDTarifa = PresupuestoYTarifa.IDTarifa AND "
                    + " pyt2.Precio = PresupuestoYTarifa.Precio AND pyt2.Expr2 = PresupuestoYTarifa.IDPyT AND pyt.IDPyT <> PresupuestoYTarifa.IDPyT"
                    + " WHERE pyt.IDPresupuesto = " + IDActual[0].ToString() + ") AS correccion ON "
                    + " pvd.IDPyT = correccion.IDPyT");

				Datos.Instancia().executeSQL("delete from presupuestoytarifa where idpyt in (SELECT pyt.IDPyT"
                    + " FROM PresupuestoYTarifa AS pyt INNER JOIN"
                    + " (SELECT IDPresupuesto, IDTarifa, Precio, MAX(IDPyT) AS Expr2, COUNT(IDPyT) AS Expr1"
                    + " FROM PresupuestoYTarifa AS pyt1"
                    + " WHERE pyt1.IDPresupuesto = " + IDActual[0].ToString()
                    + " GROUP BY IDPresupuesto, IDTarifa, Precio"
                    + " HAVING (COUNT(IDPyT) > 1)) AS pyt2 ON pyt.IDPresupuesto = pyt2.IDPresupuesto AND pyt.Precio = pyt2.Precio AND "
                    + " pyt.IDTarifa = pyt2.IDTarifa INNER JOIN"
                    + " PresupuestoYTarifa ON pyt2.IDPresupuesto = PresupuestoYTarifa.IDPresupuesto AND pyt2.IDTarifa = PresupuestoYTarifa.IDTarifa AND "
                    + " pyt2.Precio = PresupuestoYTarifa.Precio AND pyt2.Expr2 = PresupuestoYTarifa.IDPyT AND pyt.IDPyT <> PresupuestoYTarifa.IDPyT"
                    + " WHERE pyt.IDPresupuesto = " + IDActual[0].ToString() + ")");

              

                this.Leer();
			}
        }

        public void ActualizarPresupuestoEnBaseAntigua(bool EraNuevo, bool EraEliminar, bool ActualizarTarifas)
        {
            if ((int)this["IDPresupuestoTipoBase"] == 1)
            {
                int IDDivisionDestino = LCC.Negocio.Divisiones.Division.IDDivisionDestinoBaseAntigua((int)this["IDDivisionSucursal"]);

                if (IDDivisionDestino > 0)
                {
                    Datos di = Datos.Instancia(IDDivisionDestino);

                    if (EraNuevo)
                    {
                        ModificarPresupuestoEnBaseAntigua(di, CrearPresupuestoEnBaseAntigua(di), true);
                    }
                    else
                    {
                        if (EraEliminar)
                        {
                            throw new Exception("Todavía no se permiten eliminaciones de presupuestos de base de datos antigua.");
                        }
                        else
                        {
                            ModificarPresupuestoEnBaseAntigua(di, 0, ActualizarTarifas);
                        }
                    }
                }
            }
        }

        private int CrearPresupuestoEnBaseAntigua(Datos di)
        {
            int IDPresupuestoDestino = 0;
            string sql = "INSERT INTO Presupuestos(IDObra, IDCliente, Codigo, IDSucursal)"
                + " VALUES (0, 0, 0, " + Division.IDSucursalBaseAntigua((int)this["IDDivisionSucursal"]) + ")";

            di.BeginTransaction();
            if (di.executeSQL(sql) != 1)
            {
                di.RollBackTransaction();

                throw new Exception("Error al crear el presupuesto en la base de datos antigua.");
            }

            IDPresupuestoDestino = di.DameExpresionInt("Select Max(IDPresupuesto) From Presupuestos");
            di.CommitTransaction();

            return IDPresupuestoDestino;
        }

        private void ModificarPresupuestoEnBaseAntigua(Datos di, int IDPresupuestoDestino, bool ActualizarTarifas)
        {
            string sql;
            int IDObraDestino = 0;
            int IDClienteDestino = 0;
            DataTable dtTarifas = null;

            if (IDPresupuestoDestino == 0)
            {
                if (di.DameExpresionInt("Select COUNT(IDPresupuesto) From Presupuestos"
                        + " Where Anyo = " + this["Anyo"].ToString()
                        + " AND IDSucursal = " + Division.IDSucursalBaseAntigua((int)this["IDDivisionSucursal"])
                        + " AND Codigo = " + Int32.Parse(this["Codigo"].ToString())) == 1)
                {
                    IDPresupuestoDestino = di.DameExpresionInt("Select IDPresupuesto From Presupuestos"
                        + " Where Anyo = " + this["Anyo"].ToString()
                        + " AND IDSucursal = " + Division.IDSucursalBaseAntigua((int)this["IDDivisionSucursal"])
                        + " AND Codigo = " + Int32.Parse(this["Codigo"].ToString()));
                }
                else
                {
                    IDPresupuestoDestino = CrearPresupuestoEnBaseAntigua(di);
                    ActualizarTarifas = true;
                }
            }

            if (!(this["IDObra"] is DBNull))
            {
                IDObraDestino = di.DameExpresionInt("Select IDObra From Obras Where Codigo = '" + ObjetoAsociado("Obra")["Codigo"] + "'");
            }
            if (!(this["IDCliente"] is DBNull))
            {
                IDClienteDestino = di.DameExpresionInt("Select IDCliente From Clientes Where Codigo = " + ObjetoAsociado("Cliente")["Codigo"]);
            }

            sql = "UPDATE Presupuestos SET"
                + " IDObra = " + IDObraDestino + ","
                + " IDCliente = " + IDClienteDestino + ","
                + " Codigo = " + this["Codigo"] + ","
                + " NombreObra = '" + this["NombreObra"].ToString().Replace("'", "''") + "',"
                + " Aceptado = " + ((bool)this["Aceptado"] ? "1" : "0") + ","
                + " Anyo = " + this["Anyo"] + ","
                + " IDTipoPresupuesto = " + 146 + ","
                + " IdClasePresup = " + this["IDPresupuestoClase"].ToString() + ","
                + " Peticionario = '" + Propiedad("PeticionarioCliente") + "',"
                + " FechaEmision = " + Datos.SQLFechaNULL(this["FechaEmision"]) + ","
                + " FechaAceptacion = " + Datos.SQLFechaNULL(this["FechaAceptacion"]) + ","
                + " Meses = " + this["Meses"] + ","
                + " Observaciones = '" + this["Observaciones"].ToString() + "',"
                + " Verbal = 0,"
                + " Apellidos = '" + ObjetoAsociado("PrimerContactoPrincipal").Propiedad("Apellidos").Replace("'", "''") + "',"
                + " Nombre = '" + ObjetoAsociado("PrimerContactoPrincipal").Propiedad("Nombre").Replace("'", "''") + "',"
                + " Don = '" + ContactoTrato.Trato(ObjetoAsociado("PrimerContactoPrincipal")["IDContactoTrato"]).Replace("'", "''") + "',"
                + " RegistroBloqueado = 0,"
                + " EsPlantilla = 0,"
                + " PConcepto = '" + Propiedad("Concepto") + "',"
                + " Telefono = '" + ObjetoAsociado("PrimerContactoPrincipal").Propiedad("Telefono").Replace("'", "''") + "',"
                + " Fax = '" + ObjetoAsociado("PrimerContactoPrincipal").Propiedad("Fax").Replace("'", "''") + "',"
                + " Email = '" + ObjetoAsociado("PrimerContactoPrincipal").Propiedad("Email").Replace("'", "''") + "',"
                + " Descuento = 0,"
                + " Mostrar = 0,"
                + " Movil = '" + ObjetoAsociado("PrimerContactoPrincipal").Propiedad("Movil").Replace("'", "''") + "',"
                + " Direccion = '" + Propiedad("CalleDireccion").Replace("'", "''") + "',"
                + " CP = '" + Propiedad("CP").Replace("'", "''") + "',"
                + " Poblacion = '" + Propiedad("Poblacion").Replace("'", "''") + "',"
                + " Provincia = '" + Propiedad("Provincia").Replace("'", "''") + "',"
                + " IVA = 16"
                + " WHERE IDPresupuesto = " + IDPresupuestoDestino;

            di.executeSQL(sql);

            if (ActualizarTarifas)
            {
                // Ahora las tarifas Aceptadas.
                sql = "SELECT Tarifa.Codigo, AVG(PresupuestoYTarifa.Precio) AS APrecio, SUM(CASE WHEN PresupuestoVersionDetalle.DivisorUnidades IS NULL THEN PresupuestoVersionDetalle.Unidades"
                          + " ELSE ROUND(PresupuestoVersionDetalle.Unidades / PresupuestoVersionDetalle.DivisorUnidades, 2)"
                          + " END) AS SumaUnidades,"
                          + " MIN(CASE WHEN PresupuestoYTarifa.Concepto IS NULL THEN Tarifa.Desclarga ELSE PresupuestoYTarifa.Concepto END) AS Descripcion"
                          + " FROM PresupuestoVersionDetalle INNER JOIN"
                          + " PresupuestoVersion ON PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion INNER JOIN"
                          + " PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT INNER JOIN"
                          + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa"
                          + " WHERE PresupuestoVersion.IDPresupuesto = " + IDActual[0].ToString();
                if ((bool)this["Aceptado"])
                {
                    sql += " AND (PresupuestoVersionDetalle.Aceptada = 1) AND (PresupuestoVersion.Aceptado = 1)";
                }
                else
                {
                    sql += " AND (PresupuestoVersionDetalle.Aceptada = 1)";
                }
                sql += " GROUP BY Tarifa.Codigo";

                dtTarifas = Datos.Instancia().getDataTable(sql);

                di.executeSQL("Delete From PresupuestosyTarifas Where IDPresupuesto = " + IDPresupuestoDestino
                    + " or IDPresupuesto in (SELECT IdPresupuestoHijo FROM PresupuestosAmpliacion WHERE PresupuestosAmpliacion.IdPresupuestoPadre = " + IDPresupuestoDestino + ")");
                foreach (DataRow drp in dtTarifas.Rows)
                {
                    string c1 = "";
                    string c2 = "";
                    string c3 = "";
                    string c4 = "";
                    int IDTarifaDestino = Tarifas.Tarifa.IDTarifaBaseAntigua(di, (int)drp["Codigo"]);

                    c1 = drp["Descripcion"].ToString().Replace("'", "''");
                    if (c1.Length > 250)
                    {
                        c2 = c1.Substring(250);
                        c1 = c1.Substring(0, 250);
                    }
                    if (c2.Length > 250)
                    {
                        c3 = c2.Substring(250);
                        c2 = c2.Substring(0, 250);
                    }
                    if (c3.Length > 250)
                    {
                        c4 = c3.Substring(250);
                        c3 = c3.Substring(0, 250);
                    }
                    if (c4.Length > 250)
                    {
                        c4 = c4.Substring(0, 250);
                    }

                    if (IDTarifaDestino > 0)
                    {
                        sql = "Insert Into PresupuestosyTarifas (IDPresupuesto, IDTarifa, NumeroUnidades, PrecioUnitario,"
                              + " PrecioTotal, RegistroBloqueado, Concepto, Concepto2, Concepto3, Concepto4, Aceptada,"
                              + " AceptadaGeo, Imprimir, Euros)"
                              + " VALUES (" + IDPresupuestoDestino + ", " + IDTarifaDestino + ","
                              + " " + drp["SumaUnidades"].ToString().Replace(",", ".") + ","
                              + " " + drp["APrecio"].ToString().Replace(",", ".") + ","
                              + " " + drp["SumaUnidades"].ToString().Replace(",", ".") + " * " + drp["APrecio"].ToString().Replace(",", ".") + ","
                              + " 0,"
                              + " '" + c1 + "', '" + c2 + "', '" + c3 + "', '" + c4 + "', 1, 1, -1, 1)";

                        di.executeSQL(sql);
                    }
                }
            }
        }

        public override void NuevoConCopia()
        {
            base.NuevoConCopia();

            // Quitar todo lo que sobra.
            this["Aceptado"] = false;
            this["IDObra"] = DBNull.Value;
            obra = null;
            
            // Si es ampliación se convierte en Presupuesto.
            if ((int)this["IDPresupuestoTipoBase"] == 3)
            {
                this["IDPresupuestoTipoBase"] = 1;
                genero = "o";
                nombre = "Presupuesto";
            }

            // Mantenemos Colaboradores, Tarifas, Misiones, Tipos de Construcción, Contactos.
            // Limpiamos Tareas, Notas y Documentos.
			objetosSub["ColPresupuestoVersion"].Reset();
            objetosSub["ColPresupuestoNota"].Reset();
            objetosSub["ColTarea"].Reset();
        }
        #endregion

        #region Filtro
        /// <summary>
        /// Devuelve el Select del objeto.
        /// </summary>
        public override string SQLSelect()
        {
            if (sqlSelect == "")
            {
                sqlSelect = "SELECT Presupuesto.IDPresupuesto, Presupuesto.FechaEmision, DivisionSucursal.Nombre AS Sucursal, Presupuesto.Codigo, Presupuesto.Anyo,"
                          + " CASE WHEN Presupuesto.IDCliente IS NULL THEN Presupuesto.Peticionario ELSE Cliente.Cliente END AS Peticionario, Cliente.Codigo AS CCliente,"
                          + " Cliente.IDCliente, Obra.IDObra, CASE WHEN Presupuesto.IDObra IS NULL"
                          + " THEN Presupuesto.NombreObra ELSE Obra.NombreObra END AS NombreObra,"
                          + " CASE WHEN Presupuesto.Aceptado = 1 THEN 'Sí' ELSE "
                          + " CASE WHEN Presupuesto.IDPresupuestoEstado IN (Select IDPresupuestoEstado From PresupuestoEstado PS Where EstadoDenegado = 1) THEN 'Dng' ELSE 'No' END"
                          + " END AS Aceptado,"
                          + " CASE WHEN Presupuesto.ConContrato = 1 THEN 'Sí' ELSE 'No' END AS ConContrato,"
                          + " CASE WHEN EXISTS(Select PresupuestoNota.IDPresupuestoNota From PresupuestoNota"
                          + " WHERE PresupuestoNota.IDPresupuesto = Presupuesto.IDPresupuesto) THEN 1 ELSE 0 END AS TieneNotas, PresupuestoTipo.Clave AS TipoPres"
                          + " FROM Presupuesto INNER JOIN"
                          + " DivisionSucursal ON Presupuesto.IDDivisionSucursal = DivisionSucursal.IDDivisionSucursal INNER JOIN"
                          + " PresupuestoTipo ON Presupuesto.IDPresupuestoTipo = PresupuestoTipo.IDPresupuestoTipo LEFT OUTER JOIN"
                          + " Cliente ON Presupuesto.IDCliente = Cliente.IDCliente LEFT OUTER JOIN"
                          + " Obra ON Obra.IDObra = Presupuesto.IDObra";

                          //+ LCC.Negocio.Informes.Presupuestos.Presupuesto.SQLTotalPresupuesto + " As Total"
                          //+ " PresupuestoVersion ON Presupuesto.IDPresupuesto = PresupuestoVersion.IDPresupuesto INNER JOIN"
            }

            return sqlSelect;
        }

        public static void WhereAceptado(ref string where, Filtro filtro)
        {
            string sel = Lib.AEntero(filtro["PresVers_Aceptado"]);

            if (sel == "1")
            {
                Datos.AndWhere(ref where, "Presupuesto.Aceptado = 1");
            }
            if (sel == "2")
            {
                Datos.AndWhere(ref where, "Presupuesto.Aceptado = 0 AND Presupuesto.IDPresupuestoEstado NOT IN (Select IDPresupuestoEstado From PresupuestoEstado PS Where EstadoDenegado = 1)");
            }
            if (sel == "3")
            {
                Datos.AndWhere(ref where, "Presupuesto.Aceptado = 0 AND Presupuesto.IDPresupuestoEstado IN (Select IDPresupuestoEstado From PresupuestoEstado PS Where EstadoDenegado = 1)");
            }
        }

        /// <summary>
        /// Devuelve un string para montar el WHERE de la consulta basada en el Filtro.
        /// </summary>
        /// <param name="filtro">Filtro a aplicar</param>
        public override string SQLWhere(Filtro filtro)
        {
            string wtar = "";
            string where = "";
            string whereVersion = "";

            //string Codigo = filtro["Pres_Codigo"];

            // DivisionSucursal.
            DivisionSucursal.MontarFiltro(ref where, filtro, "Presupuesto");

            //if (Codigo != null && Codigo != "")
            //{
            //    Datos.AndWhere(ref where, BaseSistemaNumeracion.SQLWherePresupuesto(
            //        Lib.NoIntNulo(Lib.AEntero(filtro["IDDivision"])), Codigo));
            //}

            Datos.AndWhere(ref where, SQLWhere(filtro, "Pres_", false));
            WhereAceptado(ref where, filtro);

            Datos.AndWhere(ref where, (new Clientes.Cliente()).SQLWhere(filtro, "Cliente_", true));
            Datos.AndWhere(ref where, (new Obras.Obra()).SQLWhere(filtro, "Obra_", true));
            
            whereVersion = (new Presupuestos.PresupuestoVersion()).SQLWhere(filtro, "PresVers_", true);

            if (whereVersion != "")
            {
                Datos.AndWhere(ref where, "EXISTS (Select * From PresupuestoVersion AS PV"
                    + " Where PV.IDPresupuesto = Presupuesto.IDPresupuesto"
                    + " AND (" + whereVersion.Replace("PresupuestoVersion.", "PV.") + "))");
            }
            //Datos.AndWhere(ref where, whereVersion);
            
            filtro["WhereVersion"] = whereVersion;

			if (!filtro.VacioOCero("PresCodigoDesde"))
			{
				if (!filtro.VacioOCero("PresCodigoHasta"))
				{
					Datos.AndWhere(ref where, "Presupuesto.Codigo", ">=", filtro["PresCodigoDesde"]);
				}
				else
				{
					Datos.AndWhere(ref where, "Presupuesto.Codigo", "=", filtro["PresCodigoDesde"]);
				}
			}

			if (!filtro.VacioOCero("PresCodigoHasta"))
			{
				Datos.AndWhere(ref where, "Presupuesto.Codigo", "<=", filtro["PresCodigoHasta"]);
			}

			if (!filtro.VacioOCero("Pres_IDUsuarioAsignado"))
			{
				Datos.AndWhere(ref where, "EXISTS (Select * From PresupuestoUsuario AS PU "
					+ " Where PU.IDPresupuesto = Presupuesto.IDPresupuesto "
					+ " AND PU.IDUsuario " + filtro["Pres_IDUsuarioAsignado"] + ")");
			}

            wtar = (new Tarifas.Tarifa()).SQLWhere(filtro);
            if (wtar != "")
            {
                if (wtar.IndexOf("Tarifa.Codigo") > 0)
                {
                    Datos.AndWhere(ref where, "Presupuesto.IDPresupuesto IN (SELECT PresupuestoYTarifa.IDPresupuesto"
                        + " FROM PresupuestoYTarifa INNER JOIN"
                        + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa INNER JOIN"
                        + " TarifaGrupoDivision ON Tarifa.IDTarifaGrupo = TarifaGrupoDivision.IDTarifaGrupo"
                        + " WHERE " + wtar + ")");
                }
            }

            if (filtro["Pres_Cliente"] != null && filtro["Pres_Cliente"] != "")
            {
                string w = "CASE WHEN Presupuesto.IDCliente IS NULL" +
                    " THEN Presupuesto.Peticionario ELSE Cliente.Cliente END LIKE '%" + filtro["Pres_Cliente"] + "%'";

                Datos.AndWhere(ref where, w);
            }

			if (!filtro.VacioOCero("Contacto_NomAp")
				|| !filtro.VacioOCero("Contacto_Telef")
				|| !filtro.VacioOCero("Contacto_EmailEsp"))
			{
				string whereContacto = (new Contacto()).SQLWhereNomApTelefEmail(filtro);

				if (whereContacto != "")
				{
					whereContacto = "(Presupuesto.IDPresupuesto IN (SELECT PresupuestoContacto.IDPresupuesto"
						+ " FROM PresupuestoContacto LEFT OUTER JOIN"
						+ " Contacto ON PresupuestoContacto.IDContacto = Contacto.IDContacto"
						+ " WHERE (" + whereContacto.Replace("Contacto.", "PresupuestoContacto.") + ") AND (PresupuestoContacto.IDContacto IS NULL) OR"
						+ " (" + whereContacto + ")))";

					Datos.AndWhere(ref where, whereContacto);
				}
			}

            return where;
        }

        /// <summary>
        /// Order By para que los TOP saquen buenos registros.
        /// </summary>
        public override string SQLOrderBy()
        {
            return "Presupuesto.Anyo DESC, Presupuesto.Codigo DESC";
        }
        #endregion

        #region Vistas

        public static DataView ComboTarifas(int IDObra, int IDPresupuesto, int IDTrabajo)
        {
            string sql;

            sql = "SELECT DISTINCT PresupuestoYTarifa.IDPyT AS ID, PresupuestoVersion.IDPresupuestoVersion, "
                + " CONVERT(varchar(5), Tarifa.Codigo) + ' ' + "
                + " CASE WHEN PresupuestoYTarifa.Concepto IS NULL THEN substring(Tarifa.DescCorta, 1, 80) "
                + " + '...' ELSE substring(PresupuestoYTarifa.Concepto, 1, 80) + '...' END + ' - ' + "
                + " CONVERT(VARCHAR, PresupuestoYTarifa.Precio, 1) + '€' AS NomCompleto, Tarifa.Codigo, "
                + " CASE WHEN PresupuestoYTarifa.Concepto IS NULL THEN Tarifa.DescCorta "
                + " ELSE PresupuestoYTarifa.Concepto END AS Concepto, PresupuestoYTarifa.Precio "
                + " FROM PresupuestoYTarifa INNER JOIN"
                + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa INNER JOIN"
                + " PresupuestoVersionDetalle ON PresupuestoYTarifa.IDPyT = PresupuestoVersionDetalle.IDPyT INNER JOIN"
                + " PresupuestoVersion ON PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion";

            if (IDPresupuesto == 0)
            {
                sql += " WHERE PresupuestoYTarifa.IDPresupuesto IN (Select IDPresupuesto From Presupuesto Where IDObra = " + IDObra + ")";
            }
            else
            {
                sql += " WHERE PresupuestoYTarifa.IDPresupuesto = " + IDPresupuesto;
            }

            if (IDTrabajo > 0)
            {
                sql += " AND PresupuestoYTarifa.IDPyT NOT IN "
                    + " (SELECT TrabajoDetalle.IDPyT FROM TrabajoDetalle WHERE IDTrabajo = " + IDTrabajo + ") ";
            }
			sql += " AND PresupuestoVersionDetalle.Aceptada = 1";
			sql += " AND PresupuestoVersion.Aceptado = 1 AND PresupuestoVersionDetalle.Aceptada = 1";

            sql += " ORDER BY Tarifa.Codigo, PresupuestoVersion.IDPresupuestoVersion";

            return Datos.Instancia().getDataViewCache(sql, 0, 1);
        }

        public static DataTable ComboTarifasReducido(int IDObra)
        {
            string sql;

            sql = "SELECT DISTINCT PresupuestoYTarifa.IDPyT, Tarifa.Codigo "
                + " FROM PresupuestoYTarifa INNER JOIN"
                + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa INNER JOIN"
                + " PresupuestoVersionDetalle ON PresupuestoYTarifa.IDPyT = PresupuestoVersionDetalle.IDPyT INNER JOIN"
                + " PresupuestoVersion ON PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion"
                + " WHERE PresupuestoYTarifa.IDPresupuesto IN (Select IDPresupuesto From Presupuesto Where IDObra = " + IDObra + ")"
                + " AND PresupuestoVersionDetalle.Aceptada = 1"
                + " AND PresupuestoVersion.Aceptado = 1 AND PresupuestoVersionDetalle.Aceptada = 1";

            sql += " ORDER BY Tarifa.Codigo";

            return Datos.Instancia().getDataTableCache(sql, 0, 1);
        }

        public override System.Data.DataView Vista(string NombreVista)
        {
            string sql = "";

            if (NombreVista == "Delegaciones")
            {
                if (ObjetoAsociado("Cliente") != null)
                {
					return cliente.Vista(NombreVista);
                }
            }
			if (NombreVista == "Contactos")
            {
                if (ObjetoAsociado("Cliente") != null)
                {
					return cliente.Vista(NombreVista);
                }
            }

			if (NombreVista.StartsWith("PresupuestoTipo"))  // PresupuestoTipo_IDDivision
			{
				if ((bool)this["Aceptado"] && !UsuarioActual.Permiso("MET", "Presupuesto", "CambiarTipo"))
				{
					return ProveedorListas.RellenaComboUnaOpcion("PresupuestoTipo", (int)this["IDPresupuestoTipo"]).DefaultView;
				}
				else
				{
					return ProveedorListas.RellenaCombo("PresupuestoTipo", (int) this["IDDivision"]).DefaultView;
				}
			}

			if (NombreVista == "PresupuestoClase")
			{
				if ((bool)this["Aceptado"])
				{
					return ProveedorListas.RellenaComboUnaOpcion("PresupuestoClase", (int) this["IDPresupuestoClase"]).DefaultView;
				}
				else
				{
					return ProveedorListas.RellenaCombo("PresupuestoClase").DefaultView;
				}
			}

			if (NombreVista == "ContactosPresupuesto" || NombreVista == "ContactosPara")
			{
				sql = "SELECT PresupuestoContacto.IDPresupuestoContacto AS ID, PresupuestoContacto.IDContacto,"
					+ " CASE WHEN PresupuestoContacto.IDContacto IS NULL THEN PresupuestoContacto.DescripcionCompleta"
					+ " ELSE Contacto.DescripcionCompleta END AS NomCompleto,"
					+ " CASE WHEN PresupuestoContacto.IDContacto IS NULL THEN PresupuestoContacto.Nombre"
					+ " ELSE Contacto.Nombre END AS Nombre,"
					+ " CASE WHEN PresupuestoContacto.IDContacto IS NULL THEN PresupuestoContacto.Apellidos"
					+ " ELSE Contacto.Apellidos END AS Apellidos"
					+ " FROM PresupuestoContacto LEFT OUTER JOIN"
					+ " Contacto ON PresupuestoContacto.IDContacto = Contacto.IDContacto"
					+ " WHERE PresupuestoContacto.IDPresupuesto = " + IDActual[0];

				return Datos.Instancia().getDataView(sql);
			}

            if (NombreVista.StartsWith("ComboTarifas")) 
            {
                if (NombreVista.Contains("_"))
                {
                    return ComboTarifas(0, IDActual[0], Lib.NoIntNulo(NombreVista.Split('_')[1]));
                }
                else
                {
                    return ComboTarifas(0, IDActual[0], 0);
                }
            }

			if (NombreVista == "Tarifas")
            {
                //sql = "SELECT Tarifa.Codigo, CASE WHEN PresupuestoYTarifa.Concepto IS NULL THEN Tarifa.Desclarga ELSE PresupuestoYTarifa.Concepto END AS Descripcion,"
                //    + " PresupuestoYTarifa.FechaAplicacion, PresupuestoYTarifa.Precio"
                //    + " FROM PresupuestoYTarifa INNER JOIN"
                //    + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa"
                //    + " WHERE PresupuestoYTarifa.IDPresupuesto = " + IDActual[0]
                //    + " ORDER BY Tarifa.Codigo, PresupuestoYTarifa.FechaAplicacion";

                sql = "SELECT PresupuestoYTarifa.IDPyT, Tarifa.Codigo, CASE WHEN PresupuestoYTarifa.Concepto IS NULL THEN Tarifa.Desclarga ELSE PresupuestoYTarifa.Concepto END AS Descripcion," 
                    + " PresupuestoYTarifa.FechaAplicacion, PresupuestoVersion.Aceptado, PresupuestoYTarifa.Precio, CASE WHEN PresupuestoVersionDetalle.DivisorUnidades IS NULL"
                    + " THEN PresupuestoVersionDetalle.Unidades ELSE ROUND(PresupuestoVersionDetalle.Unidades / PresupuestoVersionDetalle.DivisorUnidades, 2)" 
                    + " END AS Unidades "
                    + " FROM PresupuestoVersion INNER JOIN"
                    + " PresupuestoVersionDetalle ON PresupuestoVersion.IDPresupuestoVersion = PresupuestoVersionDetalle.IDPresupuestoVersion RIGHT OUTER JOIN"
                    + " PresupuestoYTarifa INNER JOIN"
                    + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT"
                    + " WHERE PresupuestoYTarifa.IDPresupuesto = " + IDActual[0]
                    + " ORDER BY Tarifa.Codigo, PresupuestoYTarifa.FechaAplicacion";

                return Datos.Instancia().getDataView(sql);
            }

			if (NombreVista == "ColPresupuestoNota")
			{
				sql = "SELECT PresupuestoNota.IDPresupuestoNota AS IDNota, USUARIOS.NOMBRE + ' ' + USUARIOS.APELLIDOS As Usuario,"
					+ " PresupuestoNota.Fecha, PresupuestoNota.Nota"
					+ " FROM PresupuestoNota INNER JOIN"
					+ " USUARIOS ON PresupuestoNota.IDUsuario = USUARIOS.IDUSUARIO"
					+ " WHERE PresupuestoNota.IDPresupuesto = " + IDActual[0]
					+ " ORDER BY PresupuestoNota.Fecha DESC";

				return Datos.Instancia().getDataView(sql);
			}

			if (NombreVista == "Tareas")
			{
				sql = "SELECT Tarea.IDTarea, USUARIOS.NOMBRE + ' ' + USUARIOS.APELLIDOS As Usuario,"
					+ " Tarea.Concepto, Tarea.Fecha,"
					+ " CASE WHEN Estado = 1 THEN 'P' ELSE '' END AS SEstado"
					+ " FROM Tarea INNER JOIN"
					+ " USUARIOS ON Tarea.IDUsuario = USUARIOS.IDUSUARIO"
					+ " Where Tarea.IDPresupuesto = " + IDActual[0]
					+ " ORDER BY Tarea.Fecha DESC";

				return Datos.Instancia().getDataView(sql);
			}

			if (NombreVista == "ColComunicacionArchivo")
			{
				sql = "SELECT PresupuestoVersionDocumento.IDArchivo, PresupuestoVersion.Version, Archivo.Nombre"
					+ " FROM PresupuestoVersionDocumento LEFT OUTER JOIN"
                    + " PresupuestoVersion ON PresupuestoVersionDocumento.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion LEFT OUTER JOIN"
                    + " Archivo ON PresupuestoVersionDocumento.IDArchivo = Archivo.IDArchivo "
                    + " WHERE (Archivo.Activo = 1) AND (PresupuestoVersionDocumento.IDPresupuesto = " + IDActual[0] + ")"
					+ " ORDER BY Archivo.FechaCreacion DESC";

				return Datos.Instancia().getDataView(sql);
			}

            if (NombreVista == "ColComunicacionSalida")
            {
                return LCC.Negocio.Comunicaciones.ComunicacionSalida.ListaComunicacionesObjeto("IDPresupuesto", this.IDActual[0]);
            }
      

			if (NombreVista == "Modelos")
			{
				if (this is Oportunidad)
				{
					return null;
				}
				else
				{
					return ObjetoAsociado("PresupuestoVersionDocumento_0").Vista(NombreVista);
				}
			}

			if (NombreVista == "ListaVersiones")
			{
				DataTable dt = new DataTable();
				DataRow dr;

                dt.Columns.Add("IDPresupuestoVersion", System.Type.GetType("System.Int32"));
				dt.Columns.Add("Concepto", System.Type.GetType("System.String"));

				foreach (BaseNegocio b in Coleccion("ColPresupuestoVersion"))
				{
					if (!b.Nuevo)
					{
						dr = dt.NewRow();

						dr["IDPresupuestoVersion"] = b.IDActual[0];
						dr["Concepto"] = b.Propiedad("DescripcionCorta");

						dt.Rows.Add(dr);
					}
				}

				if (dt.Rows.Count > 1)
				{
					dr = dt.NewRow();

					dr["IDPresupuestoVersion"] = 0;
					dr["Concepto"] = "<b>Total</b>";

					dt.Rows.Add(dr);
				}

				return dt.DefaultView;
			}

			return base.Vista(NombreVista);
        }
        #endregion

        #region Métodos Protected
        protected void PonerCodigoPresupuesto()
        {
            // Código muy similar al del cliente...
			BaseSistemaNumeracion.GenerarCodigoPresupuesto(this);
        }

        #endregion

        #region Métodos Estaticos Públicos
        public static bool EsOportunidad(string id)
        {
            // Esta Funcion se usa desde Presupuesto.aspx
            string idPres = Lib.AEntero(id);
            bool esOportunidad = false;

            if (idPres != "" && idPres != "0")
            {
                esOportunidad = (2 == Datos.Instancia().DameExpresionInt("Select IDPresupuestoTipoBase"
                    + " From Presupuesto Where IDPresupuesto = " + idPres));
            }

            return esOportunidad;
        }

        public static string VersionesDelFiltro(int IDPresupuesto)
        {
            StringBuilder html = new StringBuilder(20);
            Filtro filtro = ProveedorListas.ObjetoProveedorNegocio.RecuperaFiltro("Presupuesto", null);

            string sql = "SELECT CASE WHEN PresupuestoVersion.Principal = 1 THEN 'P' WHEN PresupuestoVersion.Principal = 0 AND"
                        + " PresupuestoVersion.Ampliacion = 1 THEN 'A' + CONVERT(varchar, PresupuestoVersion.Version)"
                        + " WHEN PresupuestoVersion.Principal = 0 AND PresupuestoVersion.Ampliacion = 0 THEN 'V'"
                        + " + CONVERT(varchar, PresupuestoVersion.Version) END AS AmpliacionVersion,"
                        + " (Select Sum(" + LCC.Negocio.Presupuestos.PresupuestoVersionDetalle.SQLCampoTotalSinAs + ")"
                        + " FROM PresupuestoVersionDetalle INNER JOIN "
                        + " PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT "
                        + " WHERE PresupuestoVersion.IDPresupuestoVersion = PresupuestoVersionDetalle.IDPresupuestoVersion"
                        + " AND PresupuestoVersionDetalle.Aceptada = 1) As Total"
                        + " FROM PresupuestoVersion INNER JOIN"
                        + " Presupuesto ON PresupuestoVersion.IDPresupuesto = Presupuesto.IDPresupuesto"
                        + " WHERE PresupuestoVersion.IDPresupuesto = " + IDPresupuesto;

            if (filtro["whereVersion"].ToString() != "")
            {
                sql += " AND " + filtro["whereVersion"];
            }

            sql += " ORDER BY PresupuestoVersion.Version";

            DataTable dt = Datos.Instancia().getDataTableCache(sql, 0, 1);

            html.Append("<table border=0 width=80px>");
            foreach (DataRow dr in dt.Rows)
            {
                html.Append("<tr><td>" + dr[0].ToString() + "</td><td align=right>");
                if (dr[1] is DBNull)
                {
                    html.Append("0 €");
                }
                else
                {
                    html.Append(String.Format("{0:#,##0 €}", dr[1]));
                }
                html.Append("</td></tr>");
            }
            html.Append("</table>");

            return html.ToString();
        
        }

        #endregion

        #region Métodos Públicos
		public void ProcesaIDContactoPara(PROT.GestionArchivos.Negocio.Comunicaciones.ComunicacionDestinatario cd, 
			object IDContactoPara)
		{
			if (IDContactoPara is DBNull)
			{
				cd["IDContacto"] = DBNull.Value;
				cd["Para"] = "";
				cd["ParaNombre"] = "";
				cd["ParaApellidos"] = "";
			}
			else
			{
				foreach (BaseNegocio cp in Coleccion("ColPresupuestoContacto"))
				{
					if ((int)IDContactoPara == cp.IDActual[0])
					{
						if (cp["IDContacto"] is DBNull)
						{
							if (cd.Propiedad("ComunicacionTipo") == "Email")
							{
								cd["Para"] = cp["Email"];
							}
							else
							{
								cd["Para"] = cp["Fax"];
							}
							cd["ParaNombre"] = cp["Nombre"];
							cd["ParaApellidos"] = cp["Apellidos"];
						}
						else
						{
							Contacto cont = (Contacto) cp.ObjetoAsociado("Contacto");

							if (cd.Propiedad("ComunicacionTipo") == "Email")
							{
								cd["Para"] = cont["Email"];
							}
							else
							{
								cd["Para"] = cont["Fax"];
							}
							cd["ParaNombre"] = cont["Nombre"];
							cd["ParaApellidos"] = cont["Apellidos"];
						}

						cd["IDContacto"] = cp["IDContacto"];
					}
				}
			}
		}

		/// <summary>
		/// Encuentra el elemento de la vista ContactoPara que corresponde al destinatario.
		/// </summary>
		/// <param name="?"></param>
		/// <returns></returns>
		public object IDPresupuestoContacto(PROT.GestionArchivos.Negocio.Comunicaciones.ComunicacionDestinatario cd)
		{
			object res = DBNull.Value;
			DataView dv = Vista("ContactosPara");

			foreach (DataRowView drv in dv)
			{
				if (cd["IDContacto"] is DBNull)
				{
					if (Lib.NoStringNulo(drv["Nombre"]) + Lib.NoStringNulo(drv["Apellidos"]) ==
						Lib.NoStringNulo(cd["ParaNombre"]) + Lib.NoStringNulo(cd["ParaApellidos"]))
					{
						return drv[0];
					}
				}
				else
				{
					if (!(drv["IDContacto"] is DBNull))
					{
						if ((int)cd["IDContacto"] == (int)drv["IDContacto"])
						{
							return drv[0];

						}
					}
				}
			}

			return res;
		}

		public object IDTituloReglamentoAhora
		{
			get
			{
				return Datos.Instancia().DameExpresionObjeto("Select IDTituloReglamento From Presupuesto"
					+ " WHERE IDPresupuesto = " + IDActual[0]);
			}
		}

		public bool AceptadoAhora
		{
			get
			{
				return Datos.Instancia().DameExpresionBool("Select Aceptado From Presupuesto"
					+ " WHERE IDPresupuesto = " + IDActual[0]);
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
            if (NombreMetodo == "EliminarDocumentoAceptacion")
            {
                //Elimina el documento de la aceptación firmado para poder volver a subir uno nuevo
                //Teóricamente deja subir nuevos sin eliminar pero siempre y cuando todos sean igual al
                //primer tipo de archivo que se subió.

                if (!ObjetoAsociado("DocumentoAceptacionFirmado").Nuevo)
                {
                    ObjetoAsociado("DocumentoAceptacionFirmado").Eliminar = true;
                }
            }

            if (NombreMetodo == "FacturaManual")
            {
                //Comprobar Correcto de FacturaNuevaTarifa
                if (fnt.Correcto && this["NombreObra"] != System.DBNull.Value && this["IDCliente"] != System.DBNull.Value)
                {
                    if ((int)this["IDDivisionSucursal"]
                        == ProveedorListas.IDDeCombo("DivisionSucursalTodasTodas", "EICI Madrid"))
                    {
                        throw new Exception("No se pueden crear presupuestos en esta Sucursal.");
                    }


                    try
                    {
                        Datos.Instancia().BeginTransaction();
                        //Presupuesto
                        this["IDPresupuestoTipoBase"] = 1;
                        this["IDTituloReglamento"] = 20;
                        this["IDPresupuestoTipo"] = 158;
                        this["IDPresupuestoEstado"] = 2;
                        this["Meses"] = 0;
                        this["PEM"] = 0;
                        this.Guardar();

                        //Presupuesto Versión
                        PresupuestoVersion pv = (PresupuestoVersion)this.Coleccion("ColPresupuestoVersion").ObjetoActivo;
                        pv["FechaEmision"] = DateTime.Today;
                        pv["Principal"] = true;
                        pv["Aceptado"] = false;
                        pv["Ampliacion"] = false;
                        pv["Modificacion"] = false;
                        pv["Descartado"] = false;
                        pv.Guardar();

                        //Presupuesto Y Tarifa
                        PresupuestoYTarifa pyt = (PresupuestoYTarifa)this.Coleccion("ColPresupuestoYTarifa").CrearEnBlanco();
                        pyt.NuevoEnBlanco();
                        pyt["IDPresupuesto"] = this.IDActual[0];
                        pyt["IDTarifa"] = fnt["IDTarifa"];
                        pyt["Precio"] = fnt["Precio"];
                        pyt["FechaAplicacion"] = DateTime.Today;
                        pyt["Concepto"] = fnt["Concepto"];

                        this.Coleccion("ColPresupuestoYTarifa").AnexarObjetoActivo();
                        pyt.Guardar();

                        //Presupuesto Versión Detalle
                        PresupuestoVersionDetalle pvd = (PresupuestoVersionDetalle)pv.Coleccion("ColPresupuestoVersionDetalle").CrearEnBlanco();
                        pvd["IDPresupuestoVersion"] = pv.IDActual[0];
                        pvd["IDPyT"] = pyt.IDActual[0];
                        pvd["Unidades"] = fnt["Unidades"];
                        pvd["DivisorUnidades"] = fnt["Divisor"];
                        pvd["Aceptada"] = true;
                        pvd["AceptadaGeo"] = false;
                        pvd["Imprimir"] = true;

                        pv.Coleccion("ColPresupuestoVersionDetalle").AnexarObjetoActivo();
                        pvd.Guardar();

                        NoResponse = true;
                        Metodo(pag, "AceptarPresupuesto");

                        if (this.ErrorMensaje != "")
                        {
                            throw new Exception(this.ErrorMensaje);
                        }

                        NoResponse = false;
                        this.Guardar();

                        //Obra
                        Obra ob = new Obra();
                        ob.IDActual[0] = (int)this["IDObra"];
                        ob.Leer();

                        //Trabajo
                        Trabajo tr = new Trabajo();
                        tr.NuevoEnBlanco(ob);
                        tr["NumeroUnidades"] = 0;
                        tr["IDOperarioRealiza"] = 7209;
                        tr["RefLab1"] = 0;
                        tr["RefLab2"] = 0;
                        tr["FechaEntrada"] = DateTime.Today;
                        tr["FechaSalida"] = DateTime.Today;

                        //TrabajoDetalle
                        TrabajoDetalle trd = (TrabajoDetalle)tr.Coleccion("ColTrabajoDetalle")[0];

                        trd["Unidades"] = pvd["Unidades"];
                        trd["DivisorUnidades"] = pvd["DivisorUnidades"];

                        tr.Guardar();

                        //Factura
                        Factura fac = new Factura();
                        fac.NuevoEnBlanco(ob);
                        fac.Guardar();

                        //Factura Pago
                        FacturaPago fp = (FacturaPago)fac.Coleccion("ColFacturaPago").CrearEnBlanco();
                        fp["IDFactura"] = fac.IDActual[0];
                        fp["IDFacturaPagoTipo"] = ProveedorListas.IDDeCombo("FacturaPagoTipo", "Efectivo");

                        fac.Coleccion("ColFacturaPago").AnexarObjetoActivo();
                        fac.Guardar();
                        Datos.Instancia().CommitTransaction();

                        if (fac.IDActual[0] == 0)
                        {
                            throw new Exception("Se ha producido un error al intentar facturar. Asegurarse que el cliente tiene DNI");
                        }
                        else
                        {
                            pag.Response.Redirect("~/facturas/factura.aspx?id=" + fac.IDActual[0], true);
                        }
                    }
                    catch (Exception ex)
                    {
                        ErrorMensaje = ex.Message;
                        NoResponse = false;
                        Datos.Instancia().RollBackTransaction();
                    }
                }
                else
                {
                    throw new Exception("Se ha producido un error al intentar facturar."
                    + " Los campos Nombre Obra, cliente, concepto, precio y unidades no pueden quedar en blanco.");
                }
            }

            if (NombreMetodo == "LimpiarComunicaciones")
            {
                LCC.Negocio.Comunicaciones.ComunicacionSalida.LimpiarComunicacionesObjeto("IDPresupuesto", this.IDActual[0]);
            }

            if (NombreMetodo == "ActualizarPreciosVersionPrincipal")
            {
                if ((int)this["IDPresupuestoClase"] == 2 && !((bool)this["Aceptado"]))
                {
                    // Buscar la versión principal y actualizar precios.
                    ColPresupuestoMision col = (ColPresupuestoMision)Coleccion("ColPresupuestoMision");
                    decimal total = col.Total();

                    foreach (BaseNegocio b in Coleccion("ColPresupuestoVersion"))
                    {
                        if ((bool)b["Principal"])
                        {
                            foreach (BaseNegocio d in b.Coleccion("ColPresupuestoVersionDetalle"))
                            {
                                if ((decimal)d["Precio"] != total && (decimal)d["Precio"] != 0)
                                {
                                    d["Precio"] = total;
                                }
                            }

                            break;
                        }
                    }
                }
            }
            
            if (NombreMetodo == "CopiarPresupuesto")
            {
                //para acceder a filas de otras tablas que no sea presupuesto utilizamos el ObjetoAsociado
                //ObjetoAsociado("Obra"); con esto obtendriamos toda la fila de la tabla obra que corresponde al presupuesto con 
                //el que se está tratando

                Presupuesto Presu = new Presupuesto();
                Presu.NuevoEnBlanco();

                #region Campos Obligatorios
                //Campos obligatorios 
                Presu["NombreObra"] = this["NombreObra"];
                Presu["IDPresupuestoTipo"] = this["IDPresupuestoTipo"];
                // No se ha hecho nada.
                Presu["IDPresupuestoEstado"] = 1;
                Presu["Meses"] = this["Meses"];
                Presu["PEM"] = this["PEM"];
                Presu["Aceptado"] = 0;
                Presu["IDDivisionSucursal"] = this["C_IDDivisionSucursal"];
                #endregion
                #region Hoja Datos
                //Comprobamos que se desea copiar la hoja datos del presupuesto
                if ((bool)this["C_Datos"])
                {
                    //Campos de la hoja Datos
                    //Presu["Anyo"] = this["Anyo"]; //Es automática a la hora de almacenarla en la bbdd
                    Presu["SubTipo"] = this["SubTipo"];
                    //Presu["FechaEmision"] = this["FechaEmision"]; //Es automática a la hora de almacenarla en la bbdd
                    Presu["IDPresupuestoFormaEntrada"] = this["IDPresupuestoFormaEntrada"];
                    Presu["IDPresupuestoClase"] = this["IDPresupuestoClase"];
                    Presu["FechaIniObra"] = this["FechaIniObra"];
                    Presu["FechaFinObra"] = this["FechaFinObra"];
                    Presu["IDFirma"] = this["IDFirma"];
                }
                #endregion
                #region Hoja Notas (No Implementada)
                //Comprobamos que se desea copiar la hoja Notas del presupuesto
                //if ((bool)this["C_Nota"])
                //{
                //    //Agregamos la coleccion de las notas en la base de datos para el nuevo presupuesto copiado
                //    foreach (BaseNegocio b in Coleccion("ColPresupuestoNota"))
                //    {
                //        //Preparamos una nueva coleccion en blanco para ir rellenandola con los datos de la coleccion que tenemos,
                //        //Podemos ponerlo como (BaseNegocio...) o como (c = Presu.Coleccion("").ObjetoActivo);
                //        BaseNegocio c = Presu.Coleccion("ColPresupuestoNota").CrearEnBlanco();
                       
                //        c["Nota"] = b["Nota"];
                //        c["Fecha"] = b["Fecha"];
                //        //c["IDPresupuesto"] = b["IDPresupuesto"];
                //        Presu.Coleccion("ColPresupuestoNota").AnexarObjetoActivo();
                //    }
                //}
                #endregion 
                #region Hoja Tareas (No Implementada)
                //Comprobamos que se desea copiar la hoja tareas del presupuesto
                //if ((bool)this["C_Tareas"])
                //{
                //    //Agregamos la coleccion de las notas en la base de datos para el nuevo presupuesto copiado
                //    foreach (BaseNegocio b in Coleccion("ColTarea"))
                //    {
                //        //Preparamos una nueva coleccion en blanco para ir rellenandola con los datos de la coleccion que tenemos,
                //        //Podemos ponerlo como (BaseNegocio...) o como (c = Presu.Coleccion("").ObjetoActivo);
                //        BaseNegocio c = Presu.Coleccion("ColTarea").CrearEnBlanco();

                //        c["Concepto"] = b["Concepto"];
                //        c["Fecha"] = b["Fecha"];
                //        c["Estado"] = b["Estado"];
                //        Presu.Coleccion("ColTarea").AnexarObjetoActivo();
                //    }
                //}
                #endregion
                #region Hoja Contactos
                //Comprobamos que se desea copiar la hoja Contactos del presupuesto
                if ((bool)this["C_Contactos"])
                {
                    foreach (BaseNegocio cpc in Coleccion("ColPresupuestoContacto"))
                    {
                        if (!((PresupuestoContacto)cpc).EsTipoPrincipal)
                        {
                            //Preparamos una nueva coleccion en blanco para ir rellenandola con los datos de la coleccion que tenemos,
                            //Podemos ponerlo como (BaseNegocio...) o como (c = Presu.Coleccion("").ObjetoActivo);
                            BaseNegocio copiacpc = Presu.Coleccion("ColPresupuestoContacto").CrearEnBlanco();

                            copiacpc["IDContacto"] = cpc["IDContacto"];
                            copiacpc["IDPresupuestoContactoTipo"] = cpc["IDPresupuestoContactoTipo"];
                            copiacpc["IDContactoTrato"] = cpc["IDContactoTrato"];
                            copiacpc["Nombre"] = cpc["Nombre"];
                            copiacpc["Apellidos"] = cpc["Apellidos"];
                            copiacpc["Cargo"] = cpc["Cargo"];
                            copiacpc["Telefono"] = cpc["Telefono"];
                            copiacpc["Movil"] = cpc["Movil"];
                            copiacpc["Fax"] = cpc["Fax"];
                            copiacpc["Email"] = cpc["Email"];
                            copiacpc["DescripcionCompleta"] = cpc["DescripcionCompleta"];

                            Presu.Coleccion("ColPresupuestoContacto").AnexarObjetoActivo();
                        }
                    } 
                } 
                #endregion
                #region Cliente
                //Comprobamos que se desea copiar el cliente del presupuesto
                if ((bool)this["C_Cliente"])
                {
                    Presu["IDCliente"] = this["IDCliente"];
                    Presu["Peticionario"] = this["Peticionario"];
                    Presu["CIF"] = this["CIF"];
                    Presu["IDClienteDelegacion"] = this["IDClienteDelegacion"];
                    Presu["IDProvincia"] = this["IDProvincia"];
                    Presu["Poblacion"] = this["Poblacion"];
                    Presu["IDTipoVia"] = this["IDTipoVia"];
                    Presu["Direccion"] = this["Direccion"];
                    Presu["CP"] = this["CP"];
                    Presu["DireccionCompleta"] = this["DireccionCompleta"];
                    Presu["Telefono"] = this["Telefono"];
                    Presu["Telefono2"] = this["Telefono2"];
                    Presu["Fax"] = this["Fax"];
                    Presu["Email"] = this["Email"];

                    BaseNegocio copiacpc = ((ColPresupuestoContacto)Presu.Coleccion("ColPresupuestoContacto")).PrimerContactoPrincipal;
                    BaseNegocio cpc = ((ColPresupuestoContacto)this.Coleccion("ColPresupuestoContacto")).PrimerContactoPrincipal;

                    copiacpc["IDContacto"] = cpc["IDContacto"];
                    copiacpc["IDPresupuestoContactoTipo"] = cpc["IDPresupuestoContactoTipo"];
                    copiacpc["IDContactoTrato"] = cpc["IDContactoTrato"];
                    copiacpc["Nombre"] = cpc["Nombre"];
                    copiacpc["Apellidos"] = cpc["Apellidos"];
                    copiacpc["Cargo"] = cpc["Cargo"];
                    copiacpc["Telefono"] = cpc["Telefono"];
                    copiacpc["Movil"] = cpc["Movil"];
                    copiacpc["Fax"] = cpc["Fax"];
                    copiacpc["Email"] = cpc["Email"];
                    copiacpc["DescripcionCompleta"] = cpc["DescripcionCompleta"];
                } 
                #endregion
                #region Hoja Otros Datos
                //Comprobamos que se desea copiar la hoja otros datos del presupuesto
                if ((bool)this["C_Otros"])
                {
                    //Agregamos la coleccion de las empresascompetencia en la base de datos para el nuevo presupuesto copiado
                    foreach (BaseNegocio cppc in Coleccion("ColPresupuestoPrecioCompetencia"))
                    {
                        //Preparamos una nueva coleccion en blanco para ir rellenandola con los datos de la coleccion que tenemos,
                        //Podemos ponerlo como (BaseNegocio...) o como (c = Presu.Coleccion("").ObjetoActivo);
                        BaseNegocio copiacppc = Presu.Coleccion("ColPresupuestoPrecioCompetencia").CrearEnBlanco();

                        copiacppc["IDPresupuestoEmpresaCompetencia"] = cppc["IDPresupuestoEmpresaCompetencia"];
                        copiacppc["PrecioCompetencia"] = cppc["PrecioCompetencia"];

                        Presu.Coleccion("ColPresupuestoPrecioCompetencia").AnexarObjetoActivo();
                    }

                    //Agregamos la coleccion de los colaboradores en la base de datos para el nuevo presupuesto copiado
                    foreach (BaseNegocio cpcn in Coleccion("ColPresupuestoColaboradorNaM"))
                    {
                        BaseNegocio copiacpcn = Presu.Coleccion("ColPresupuestoColaboradorNaM").CrearEnBlanco();

                        copiacpcn["IDPresupuestoColaborador"] = cpcn["IDPresupuestoColaborador"];

                        Presu.Coleccion("ColPresupuestoColaboradorNaM").AnexarObjetoActivo();
                    }
                    Presu["IDPresupuestoConcepto"] = this["IDPresupuestoConcepto"];
                    Presu["Nota"] = this["Nota"];
                    Presu["MostrarTotalMenosBonificacion"] = this["MostrarTotalMenosBonificacion"];
                    Presu["Observaciones"] = this["Observaciones"];
                }
                #endregion
                #region Hoja Facturacion
                //Comprobamos que se desea copiar la hoja Facturacion del presupuesto
                if ((bool)this["C_Facturacion"])
                {
                    Presu["GastosYBfo"] = this["GastosYBfo"];
                    Presu["IDTipoFormaPago"] = this["IDTipoFormaPago"];
                    Presu["Descuento"] = this["Descuento"];
                    Presu["IDFacturaTipoIVA"] = this["IDFacturaTipoIVA"];
                    Presu["PorcentajeGastosGenerales"] = this["PorcentajeGastosGenerales"];
                    Presu["PorcentajeBfoIndustrial"] = this["PorcentajeBfoIndustrial"];
                    Presu["IDPresupuestoCondicionesPago"] = this["IDPresupuestoCondicionesPago"];
                    Presu["IDEntidadBancaria"] = this["IDEntidadBancaria"];
                    Presu["IDPresupuestoAvalEstado"] = this["IDPresupuestoAvalEstado"];
                    Presu["FechaAvalAceptacion"] = this["FechaAvalAceptacion"];
                    Presu["ImporteAval"] = this["ImporteAval"];
                }
                #endregion
                #region Hoja Documentos (No Implementada)
                //Comprobamos que se desea copiar la hoja Documentos del presupuesto
                //if ((bool)this["C_Documentos"])
                //{
                    //foreach (BaseNegocio b in Coleccion("ColPresupuestoVersionDocumento"))
                    //{
                    //    //Preparamos una nueva coleccion en blanco para ir rellenandola con los datos de la coleccion que tenemos,
                    //    //Podemos ponerlo como (BaseNegocio...) o como (c = Presu.Coleccion("").ObjetoActivo);
                    //    BaseNegocio c = Presu.Coleccion("ColPresupuestoVersionDocumento").CrearEnBlanco();

                    //    c["IDPresupuestoVersion"] = b["IDPresupuestoVersion"];
                    //    c["IDGenDocModelo"] = b["IDGenDocModelo"];
                    //    c["IDArchivo"] = b["IDArchivo"];
                    //    c["Comentario"] = b["Comentario"];

                    //    Presu.Coleccion("ColPresupuestoVersionDocumento").AnexarObjetoActivo();
                    //}
                //}
                #endregion
                #region Hoja Comunicaciones (No Implementada)
                //Comprobamos que se desea copiar la hoja comunicaciones del presupuesto
                //if ((bool)this["C_Comunicaciones"])
                //{
                //    foreach (BaseNegocio b in Coleccion("ColComunicacionSalida"))
                //    {
                //        //Preparamos una nueva coleccion en blanco para ir rellenandola con los datos de la coleccion que tenemos,
                //        //Podemos ponerlo como (BaseNegocio...) o como (c = Presu.Coleccion("").ObjetoActivo);
                //        BaseNegocio c = Presu.Coleccion("ColComunicacionSalida").CrearEnBlanco();

                //        c["IDUsuario"] = b["IDUsuario"];
                //        c["IDCliente"] = b["IDCliente"];
                //        c["De"] = b["De"];
                //        c["DeNombre"] = b["DeNombre"];
                //        c["DeApellidos"] = b["DeApellidos"];
                //        c["FechaComunicacion"] = b["FechaComunicacion"];
                //        c["FechaEntrega"] = b["FechaEntrega"];
                //        c["FechaProceso"] = b["FechaProceso"];
                //        c["PendienteSalida"] = b["PendienteSalida"];
                //        c["Asunto"] = b["Asunto"];
                //        c["Mensaje"] = b["Mensaje"];
                //        c["IDArchivoLogo"] = b["IDArchivoLogo"];

                //        Presu.Coleccion("ColComunicacionSalida").AnexarObjetoActivo();
                //    }
                //}
                #endregion
                #region Hoja Editor Tarifas
                //Comprobamos que se desea copiar la hoja Editor Tarifas del presupuesto
                if ((bool)this["C_EditorTarifas"])
                {
                    bool PrimeraVers = true;
                    Presu.Guardar();

                    foreach (BaseNegocio cpv in Coleccion("ColPresupuestoVersion"))
                    {
                        if ((bool)cpv["Principal"])
                        {
                            //Preparamos una nueva coleccion en blanco para ir rellenandola con los datos de la coleccion que tenemos,
                            //Podemos ponerlo como (BaseNegocio...) o como (c = Presu.Coleccion("").ObjetoActivo);
                            BaseNegocio copiacpv;
                            if (!PrimeraVers)
                            {
                                copiacpv = Presu.Coleccion("ColPresupuestoVersion").CrearEnBlanco();
                                Presu.Coleccion("ColPresupuestoVersion").AnexarObjetoActivo();
                            }
                            else
                            {
                                copiacpv = Presu.Coleccion("ColPresupuestoVersion")[0];
                                PrimeraVers = false;
                            }

                            ColPresupuestoVersionDetalle cpvd = (ColPresupuestoVersionDetalle)copiacpv.Coleccion("ColPresupuestoVersionDetalle");
                            int posicion = 0;

                            copiacpv["IDPresupuestoContacto"] = DBNull.Value;
                            copiacpv["IDClienteDelegacion"] = cpv["IDClienteDelegacion"];
                            copiacpv["IDProvincia"] = cpv["IDProvincia"];
                            copiacpv["Poblacion"] = cpv["Poblacion"];
                            copiacpv["IDTipoVia"] = cpv["IDTipoVia"];
                            copiacpv["Direccion"] = cpv["Direccion"];
                            copiacpv["CP"] = cpv["CP"];
                            copiacpv["DireccionCompleta"] = cpv["DireccionCompleta"];
                            copiacpv["Version"] = cpv["Version"];
                            copiacpv["FechaEmision"] = System.DateTime.Today;
                            copiacpv["FechaAceptacion"] = DBNull.Value;
                            copiacpv["FechaAplicacion"] = System.DateTime.Today;
                            copiacpv["Principal"] = cpv["Principal"];
                            copiacpv["Aceptado"] = false;
                            copiacpv["Ampliacion"] = false;
                            copiacpv["Modificacion"] = false;
                            copiacpv["Descartado"] = false;
                            copiacpv["Observaciones"] = cpv["Observaciones"];


                            foreach (BaseNegocio colpvd in cpv.Coleccion("ColPresupuestoVersionDetalle"))
                            {
                                PresupuestoVersionDetalle pvd;

                                cpvd.CrearLinea((int)colpvd.ObjetoAsociado("PresupuestoYTarifa")["IDTarifa"], ref posicion);
                                pvd = (PresupuestoVersionDetalle)cpvd[posicion - 1];

                                pvd["Unidades"] = colpvd["Unidades"];
                                pvd["DivisorUnidades"] = colpvd["DivisorUnidades"];
                                pvd["Aceptada"] = colpvd["Aceptada"];
                                pvd["AceptadaGeo"] = colpvd["AceptadaGeo"];
                                pvd["Imprimir"] = colpvd["Imprimir"];
                                pvd["Concepto"] = colpvd["Concepto"];
                                pvd["Precio"] = colpvd["Precio"];
                            }
                        }
                    }
                }
                #endregion
                #region Hoja Localizacion
                //Comprobamos que se desea copiar la hoja Localizacion del presupuesto
                if ((bool)this["C_Localizacion"])
                {
                    Presu["IDLocalizacionGPS"] = this["IDLocalizacionGPS"];
                }
                #endregion
                #region Hoja Oferta%
                //Comprobamos que se desea copiar la hoja oferta % del presupuesto
                if ((int)this["IDPresupuestoClase"] == 2)
                {
                    if ((bool)this["C_Oferta"])
                    {
                        Presu["IDPresupuestoMisionGrupo"] = this["IDPresupuestoMisionGrupo"];
                    }
                }
                #endregion


                Presu.Guardar();

                PROT.NegocioGeneral.Log.Log.GrabarLog(UsuarioActual, PROT.NegocioGeneral.Log.LogTipoEnum.CopiarPresupuesto,
                    "Presupuesto Original: " + this.DescripcionNormal + ". Presupuesto Copia: " + Presu.DescripcionNormal);

                pag.Response.Redirect("~/Presupuestos/Presupuesto.aspx?id=" + Presu["IDPresupuesto"], true);
            }

            if (NombreMetodo == "GenerarOportunidad")
            {
                Oportunidad opo = new Oportunidad();
                opo.NuevoEnBlanco();

                //Datos obligatorios
                opo["IDPresupuestoTipoBase"] = 2;
                opo["IDDivisionSucursal"] = this["IDDivisionSucursal"];
                opo["IDCliente"] = this["IDCliente"];
                opo["IDClienteDelegacion"] = this["IDClienteDelegacion"];
                opo["IDPresupuestoTipo"] = this["IDPresupuestoTipo"];
                opo["NombreObra"] = this["NombreObra"];
                opo["IDPresupuestoEstado"] = this["IDPresupuestoEstado"];
                opo["Meses"] = this["Meses"];
                opo["PEM"] = this["PEM"];
                opo["Aceptado"] = 0;
                opo["SubTipo"] = this["SubTipo"];

                opo.Guardar();

                pag.Response.Redirect("~/oportunidades/Oportunidad.aspx?id=" + opo["IDPresupuesto"],true);
            }

            if (NombreMetodo == "DesAceptarPresupuesto")
            {
                //if (LCC.Negocio.Divisiones.Division.IDDivisionDestinoBaseAntigua((int)this["IDDivisionSucursal"]) > 0)
                //{
                //    throw new Exception("Cuidado. No soportado por base de datos antigua.");
                //}

                //Comprobar que no tiene ninguna factura, para ello utilizamos la vista de la obra
                if (ObjetoAsociado("Obra").Vista("Facturas").Count == 0)
                {
                    //Se puede desaceptar
                    try
                    {
                        Datos.Instancia().BeginTransaction();
                        string idtrabajo = "";
                        string idobraoperario = "";
                        string idpv = "";
                        string codigoObra = ObjetoAsociado("Obra")["Codigo"].ToString();

                        DataTable dt = Datos.Instancia().getDataTable("SELECT IDTrabajo FROM Trabajo WHERE IDObra = " + this["IDObra"] + "");

                        if (dt.Rows.Count > 0)
                        {
                            foreach (DataRow dr in dt.Rows)
                            {
                                idtrabajo += dr["IDTrabajo"] + ","; 
                            }

                            idtrabajo = idtrabajo.Remove(idtrabajo.LastIndexOf(","), 1);

                            //TrabajoDetalle
                            Datos.Instancia().executeSQL("DELETE FROM TrabajoDetalle WHERE IDTrabajo IN (" + idtrabajo + ")");

                            //TrabajoDocumento
                            Datos.Instancia().executeSQL("DELETE FROM TrabajoDocumento WHERE IDTrabajo IN (" + idtrabajo + ")");

                            //Trabajo
                            Datos.Instancia().executeSQL("DELETE FROM Trabajo WHERE IDObra = " + this["IDObra"] + "");
                        }

                        //TrabajoEliminado
                        Datos.Instancia().executeSQL("DELETE FROM TrabajoEliminado WHERE IDObra = " + this["IDObra"] + "");
                        //Documentacion
                        Datos.Instancia().executeSQL("DELETE FROM Documentacion WHERE IDObra = " + this["IDObra"] + "");
                        //ObraCorrespondencia
                        Datos.Instancia().executeSQL("DELETE FROM ObraCorrespondenciaDocumento where idObraCorrespondencia in (select IDObraCorrespondencia from ObraCorrespondencia WHERE IDObra = " + this["IDObra"] + ")");
                        Datos.Instancia().executeSQL("DELETE FROM ObraCorrespondencia WHERE IDObra = " + this["IDObra"] + "");
                        //ObraContacto
                        Datos.Instancia().executeSQL("DELETE FROM ObraContacto WHERE IDObra = " + this["IDObra"] + "");
                        //ObraCliente
                        Datos.Instancia().executeSQL("DELETE FROM ObraCliente WHERE IDObra = " + this["IDObra"] + "");
                        //ObraInformeOCT
                        Datos.Instancia().executeSQL("DELETE FROM ObraInformeOCT WHERE IDObra = " + this["IDObra"] + "");
                        //ObraReservaOCT
                        Datos.Instancia().executeSQL("DELETE FROM ObraReservaOCT WHERE IDObra = " + this["IDObra"] + "");
                        //ObraNota
                        Datos.Instancia().executeSQL("DELETE FROM ObraNota WHERE IDObra = " + this["IDObra"] + "");
                        //ObraVisita
                        DataTable ov = Datos.Instancia().getDataTable("SELECT IDObraOperario FROM ObraOperario WHERE IDObra = " + this["IDObra"] + "");

                        if (ov.Rows.Count > 0)
                        {
                            foreach (DataRow dr in ov.Rows)
                            {
                                idobraoperario += dr["IDObraOperario"] + ",";
                            }

                            idobraoperario = idobraoperario.Remove(idobraoperario.LastIndexOf(","), 1);

                            Datos.Instancia().executeSQL("DELETE FROM ObraVisita WHERE IDObraOperario IN (" + idobraoperario + ")");
                        }

                        //ObraOperarioTipoFuncion
                        Datos.Instancia().executeSQL("DELETE FROM ObraOperarioTipoFuncion WHERE "
                            + " IDObraOperario IN(SELECT IDObraOperario FROM ObraOperario WHERE IDObra = " + this["IDObra"] + ")");

                        //ObraOperario
                        Datos.Instancia().executeSQL("DELETE FROM ObraOperario WHERE IDObra = " + this["IDObra"] + "");

                        //Presupuesto
                        int idobra = (int)this["IDObra"];
                        this["IDObra"] = DBNull.Value;
                        this["Aceptado"] = false;
                        this["FechaAceptacion"] = DBNull.Value;

                        PresupuestoVersion vp = ((ColPresupuestoVersion)this.Coleccion("ColPresupuestoVersion")).VersionPrincipal;

                        vp["Aceptado"] = false;
                        vp["FechaAceptacion"] = DBNull.Value;

                        this.Guardar();

                        //PresupuestoVersionDetalle
                        DataTable pvd = Datos.Instancia().getDataTable("SELECT PresupuestoVersionDetalle.IDPresupuestoVersion AS idpv "
                            + " FROM PresupuestoVersionDetalle INNER JOIN PresupuestoVersion ON PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion "
                            + " WHERE PresupuestoVersion.IDPresupuesto = " + this["IDPresupuesto"] + " AND PresupuestoVersion.Ampliacion = 1");

                        if (pvd.Rows.Count > 0)
                        {
                            foreach(DataRow dr in pvd.Rows)
                            {
                                idpv += dr["idpv"] + ",";
                            }
                        
                            idpv = idpv.Remove(idpv.LastIndexOf(","), 1);

                            Datos.Instancia().executeSQL("DELETE FROM PresupuestoVersionDetalle WHERE IDPresupuestoVersion IN (" + idpv + ")");

                            //PresupuestoVersionDocumento
                            Datos.Instancia().executeSQL("DELETE FROM PresupuestoVersionDocumento WHERE IDPresupuestoVersion IN (" + idpv + ")");

                            //PresupuestoVersion
                            Datos.Instancia().executeSQL("DELETE FROM PresupuestoVersion WHERE IDPresupuestoVersion IN (" + idpv + ")");
                        }

                        //PresupuestoVersion (FechaAceptacion a 0 y Aceptado a 0)
                        Datos.Instancia().executeSQL("UPDATE PresupuestoVersion SET FechaAceptacion = null, Aceptado = 0 "
                        + " WHERE IDPresupuesto = " + this.IDActual[0]);

                        //Obra
                        Datos.Instancia().executeSQL("DELETE FROM Obra WHERE IDObra = " + idobra + "");

                        Datos.Instancia().CommitTransaction();

                        try
                        {
                            int IDDivisionDestino = LCC.Negocio.Divisiones.Division.IDDivisionDestinoBaseAntigua((int)this["IDDivisionSucursal"]);

                            if (IDDivisionDestino > 0)
                            {
                                Datos di = Datos.Instancia(IDDivisionDestino);

                                int IDPresupuestoDestino = di.DameExpresionInt("Select IDPresupuesto From Presupuestos"
                                    + " Where Anyo = " + this["Anyo"].ToString()
                                    + " AND IDSucursal = " + Division.IDSucursalBaseAntigua((int)this["IDDivisionSucursal"])
                                    + " AND Codigo = " + Int32.Parse(this["Codigo"].ToString()));

                                string sql = "UPDATE Presupuestos SET"
                                    + " IDObra = 0,"
                                    + " Aceptado = 0"
                                    + " WHERE IDPresupuesto = " + IDPresupuestoDestino;

                                di.executeSQL(sql);

                                di.executeSQL("DELETE FROM TRABAJOSYTARIFAS WHERE IDTRABAJO IN (SELECT IDTRABAJO FROM TRABAJOS WHERE IDOBRA IN (SELECT IDOBRA FROM OBRAS WHERE CODIGO = '" + codigoObra + "'))");
                                di.executeSQL("DELETE FROM TRABAJOS WHERE IDOBRA IN (SELECT IDOBRA FROM OBRAS WHERE CODIGO = '" + codigoObra + "')");
                                di.executeSQL("DELETE FROM CORRESPONDENCIA WHERE IDOBRA IN (SELECT IDOBRA FROM OBRAS WHERE CODIGO = '" + codigoObra + "')");
                                di.executeSQL("DELETE FROM OBRAS WHERE CODIGO = '" + codigoObra + "'");
                            }
                        }
                        catch
                        {
                            // No mucho...
                        }

                        // Recargar todo.
                        this.Leer();
                    }
                    catch
                    {
                        Datos.Instancia().RollBackTransaction();
                        throw new Exception("Se ha producido un error al desaceptar el presupuesto.");
                    }
                }
                else
                {
                    throw new Exception("No se pueden desaceptar presupuestos con Facturas existentes.");
                }

                PROT.NegocioGeneral.Log.Log.GrabarLog(UsuarioActual, PROT.NegocioGeneral.Log.LogTipoEnum.DesaceptarPresupuesto,
                    "Presupuesto Desaceptado: " + DescripcionNormal);

                pag.Response.Redirect("~/presupuestos/Presupuesto.aspx?id=" + this.IDActual[0], true);
            }

            if (NombreMetodo == "CrearCliente")
			{
                bool correcto = true;

				if (this["Peticionario"].ToString().Trim() == "")
				{
					ErrorMensaje = "Debe escribir un nombre para el Peticionario.";
                    correcto = false;
				}

                if (correcto)
                {
                    if (this["Direccion"] == DBNull.Value || this["IDProvincia"] == DBNull.Value 
                        || this["IDTipoVia"] == DBNull.Value)
                    {
                        ErrorMensaje = "Los campos Provincia, Tipo de Via y Dirección en Dirección Alternativa han de estar rellenos";
                        correcto = false;
                    }
					if (this.ObjetoAsociado("PrimerContactoPrincipal")["Nombre"] is DBNull)
					{
						ErrorMensaje = "Al menos debe escribir el nombre de la persona de contacto.";
						correcto = false;
					}
                }

                if (correcto)
                {
                    this["Peticionario"] = this["Peticionario"].ToString().Trim();

                    ObjetoAsociado("Cliente");

                    if (cliente == null)
                    {
                        cliente = new Cliente();

                        cliente.NuevoEnBlanco();
                        cliente["IDDivision"] = this.IDDivision;
                        cliente["Cliente"] = this["Peticionario"];
						cliente["CIF"] = this["CIF"];
                        cliente["FijarFormaPago"] = false;

                        cliente.Central.DelegacionCentral(this);

                        cliente.Guardar();

                        this["IDCliente"] = cliente.IDActual[0];
                        this["IDClienteDelegacion"] = cliente.Central.IDActual[0];

                        this.ObjetoAsociado("PrimerContactoPrincipal")["IDContacto"]
                            = Contacto.CrearContactoGenerico(this.ObjetoAsociado("PrimerContactoPrincipal"));
                    }
                }
			}
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
			if (NombreMetodo == "AceptarPresupuesto")
			{
				if (AceptadoAhora)
				{
					ErrorMensaje = "El presupuesto no se puede aceptar dos veces.";
				}
				else
				{
					if (this.Modificado)
					{
						this.ErrorMensaje = "";

						// POr si acaso establece un cliente.
						this.Guardar();

						if (this.ErrorMensaje != "")
						{
							return;
						}
					}

					if (this["IDCliente"] is DBNull)
					{
						ErrorMensaje = "El presupuesto no tiene un código de Cliente válido.";

						return;
					}

					// Si hemos llegado aquí, seguro que va a decir true.
					// Luego se ve de nuevo en la transacción.
					if (MetodoPermitido(NombreMetodo))
					{
						// Objeto PresupuestoVersion que se va a Aceptar.
						PresupuestoVersion pVer;

						// Objeto obra que se va a crear.
						Obra ob = null;

						pVer = (PresupuestoVersion)Coleccion("ColPresupuestoVersion").ObjetoActivo;
						if (!((bool) pVer["Principal"]))
						{
							pVer = null;

							foreach (BaseNegocio b in Coleccion("ColPresupuestoVersion"))
							{
								if ((bool)b["Principal"])
								{
									pVer = (PresupuestoVersion)b;

									break;
								}
							}
						}

						if (pVer != null)
						{
							if (pVer.AceptadoAhoraVersion)
							{
								ErrorMensaje = "La versión principal ha sido aceptada previamente.";
							}
							if (pVer.TotalTarifasAceptadas == 0)
							{
								ErrorMensaje = "No se puede aceptar un presupuesto si el total de tarifas aceptadas es 0 €.";
							}

							if (ErrorMensaje == "")
							{
                                bool estamosEnTransaccion = Datos.Instancia().TransaccionEnCurso;

								try
								{

                                    if (!estamosEnTransaccion)
                                    {
                                        // Inicio de Transacción, cuidado que siempre necesita un Commit o RollBack
                                        Datos.Instancia().BeginTransaction();
                                    }

									this.Leer();

									// Volver a comprobar.
									if (MetodoPermitido(NombreMetodo))
									{
                                        // Crear la obra a partir de los datos del presupuesto.
										ob = new Obra();
										ob.NuevoEnBlanco(this);
                                        ob.AceptandoPresupuesto = true;
										ob.Guardar();
                                        ob.AceptandoPresupuesto = false;

										// Aceptamos también la Versión Principal.
										pVer["Aceptado"] = true;
										pVer["FechaAceptacion"] = ob["FechaApertura"];
										//pVer["FechaAplicacion"] = ob["FechaApertura"];
										pVer["Ampliacion"] = false;
										pVer["Modificacion"] = false;
										pVer["Descartado"] = false;
										pVer.Guardar();

										// Modificamos los datos del presupuesto.
                                        this["IDPresupuestoEstado"] = 2;
										this["Aceptado"] = true;
										this["IDObra"] = ob.IDActual[0];
										this["FechaAceptacion"] = ob["FechaApertura"];

										// El usuario actual es el que acepta el presuesto.
										// Puede que sea el Responsable al final.
										this.objetosSub["ColPresupuestoUsuario"].ObjetoActivo["IDPresupuestoUsuarioTipo"] = 4;
										this.objetosSub["ColPresupuestoUsuario"].ObjetoActivo["IDUsuario"] = UsuarioActual.IDActual[0];
										this.objetosSub["ColPresupuestoUsuario"].AnexarObjetoActivo();

										this.Guardar();

                                        ob["NombreObra"] = ob["NombreObra"].ToString() + " ";
                                        ob["NombreObra"] = ob["NombreObra"].ToString().Trim();

                                        ob.Guardar();

                                        presupuestoRecienAceptado = true;
                                        this.Guardar();

										// Transacción completada.
                                        if (!estamosEnTransaccion)
                                        {
                                            Datos.Instancia().CommitTransaction();
                                        }
									}
									else
									{
                                        if (!estamosEnTransaccion)
                                        {
                                            // Error, no se puede por algún motivo.
                                            Datos.Instancia().RollBackTransaction();
                                        }

										ErrorMensaje = "No se puede aceptar el presupuesto.";
									}
								}
								catch (Exception err)
								{
                                    if (!estamosEnTransaccion)
                                    {
                                        Datos.Instancia().RollBackTransaction();
                                    }

									ErrorMensaje = "ERROR: " + err.Message;
								}
							}
						}
						else
						{
							ErrorMensaje = "No se ha podido encontrar la Versión Principal.";
						}

						if (ob != null && ErrorMensaje == "")
						{
							// Todo OK, se puede aceptar.
                            if (!NoResponse)
                            {
                                pag.Response.Redirect("~/obras/obra.aspx?id=" + ob.IDActual[0], true);
                            }
						}
					}
					else
					{
						ErrorMensaje = "No se puede aceptar el presupuesto.";
					}
				}
			}
            
            if (NombreMetodo == "ImprimirNotas")
            {
                Nota.ImprimirNotas((PROT.ControlesEspeciales.RaizPage)pag
                     ,this.Descripcion, "Presupuesto", this.IDActual[0]);
            }

            if (NombreMetodo == "ImprimirTareas")
            {
                Tarea.ImprimirTareas((PROT.ControlesEspeciales.RaizPage)pag
                    ,this.Descripcion, "Presupuesto", this.IDActual[0]);
            }

            if (NombreMetodo == "ImprimirTarifas" || NombreMetodo == "ImprimirTarifasAceptadas")
            {
                
                Filtro filtro = new Filtro();
                string me = "";
                          
                filtro["IDPresupuesto"] = this.IDActual[0].ToString();
                filtro["Aceptadas"] = (NombreMetodo == "ImprimirTarifasAceptadas") ? "1" : "0";
                filtro["IDDivision"] = this.IDDivision.ToString();
                pag.Session["dsListado"] = (new LCC.Negocio.Informes.Presupuestos.TarifasPresupuestos()).DatosInforme(filtro, 
                    "TarifasPresupuestos", ref me);
                pag.Session["infListado"] = new LCC.Informes.Presupuestos.ListadoTarifasPresupuestos();
                pag.Session["filtroListado"] = filtro;
                pag.Session["excelListado"] = "0";

                ((PROT.ControlesEspeciales.RaizPage) pag).RegistraClientScriptBlock("iniciar",
                    "window.open('" + ((PROT.ControlesEspeciales.RaizPage)pag).ResuelveUrl("~/informes/VerListado.aspx")
                    + "', '_blank');", true);
            }

            if (NombreMetodo == "AceptarAgregarTarifasExcel")
            {
                PresupuestoVersion pv = (PresupuestoVersion)this.Coleccion("ColPresupuestoVersion").ObjetoActivo;

                string[] lineasTarifa = tarifasexcel.Split('\n');
                string[] partesTarifa;
                bool encontrada = false;
                double unidadesPartesTarifa = 0;
                int codigoPartesTarifa = 0;
                string conceptoPartesTarifa = "";
                decimal precioPartesTarifa = 0;

                foreach (string cadena in lineasTarifa)
                {
                    try
                    {
                        partesTarifa = cadena.Split('\t');
                        partesTarifa[3] = partesTarifa[3].Replace("\r", "");
                        //[0] unidades
                        //[1] codigo tarifa
                        //[2] titulo
                        //[3] precio

                        unidadesPartesTarifa = double.Parse(partesTarifa[0]);
                        codigoPartesTarifa = Int32.Parse(partesTarifa[1]);
                        conceptoPartesTarifa = partesTarifa[2].ToString().Trim();
                        precioPartesTarifa = decimal.Parse(partesTarifa[3]);

                        if (partesTarifa[0] != "0")
                        {
                            if (pv.PermisoModificar)
                            {
                                foreach (BaseNegocio d in pv.Coleccion("ColPresupuestoVersionDetalle"))
                                {
                                    if (d.PermisoModificar)
                                    {
                                        if ((int)d["Codigo"] == codigoPartesTarifa)
                                        {
                                            d["Unidades"] = unidadesPartesTarifa;
                                            if (conceptoPartesTarifa == "")
                                            {
                                                d["Concepto"] = DBNull.Value;
                                            }
                                            else
                                            {
                                                d["Concepto"] = conceptoPartesTarifa;
                                            }
                                            d["Precio"] = precioPartesTarifa;

                                            encontrada = true;
                                        }
                                    }
                                }

                                if (!encontrada)
                                {
                                    //int idpyt = 0;

                                    //foreach (BaseNegocio d in pv.Coleccion("ColPresupuestoVersionDetalle"))
                                    //{
                                    //    if ((int)d["Codigo"] == codigoPartesTarifa
                                    //        && (decimal)d["Precio"] == precioPartesTarifa
                                    //        && (string)d["Concepto"] == conceptoPartesTarifa)
                                    //    {
                                    //        //Actualiza las unidades
                                    //        d["Unidades"] = unidadesPartesTarifa;
                                    //    }
                                    //}

                                    //if (idpyt == 0)
                                    //{
                                    string sql = "SELECT IDTarifa "
                                               + " FROM TarifaGrupo INNER JOIN Tarifa ON TarifaGrupo.IDTarifaGrupo = Tarifa.IDTarifaGrupo INNER JOIN "
                                               + " Division INNER JOIN TarifaGrupoDivision ON Division.IDDivision = TarifaGrupoDivision.IDDivision ON TarifaGrupo.IDTarifaGrupo = TarifaGrupoDivision.IDTarifaGrupo "
                                               + " WHERE Codigo = " + codigoPartesTarifa
                                               + " AND Division.IDDivision = " + IDDivision;

                                    string idtarifa = Datos.Instancia().DameExpresion(sql);

                                    if (idtarifa != "")
                                    {
                                        //Agregar a la colección
                                        PresupuestoYTarifa pyt = (PresupuestoYTarifa)Coleccion("ColPresupuestoYTarifa").CrearEnBlanco();
                                        pyt["IDTarifa"] = Int32.Parse(idtarifa);
                                        pyt["Precio"] = precioPartesTarifa;
                                        pyt["FechaAplicacion"] = System.DateTime.Now;
                                        if (conceptoPartesTarifa == "")
                                        {
                                            pyt["Concepto"] = DBNull.Value;
                                        }
                                        else
                                        {
                                            pyt["Concepto"] = conceptoPartesTarifa;
                                        }

                                        this.Coleccion("ColPresupuestoYTarifa").AnexarObjetoActivo();
                                        this.Coleccion("ColPresupuestoYTarifa").Guardar();

                                        PresupuestoVersionDetalle pvd =
                                            (PresupuestoVersionDetalle)pv.Coleccion("ColPresupuestoVersionDetalle").CrearEnBlanco();
                                        pvd["IDPyT"] = pyt["IDPyT"];
                                        pvd["Unidades"] = unidadesPartesTarifa;

                                        //pvd["Codigo"] = codigoPartesTarifa;
                                        //pvd["Concepto"] = conceptoPartesTarifa;
                                        //pvd["Precio"] = precioPartesTarifa;
                                        //pv.Coleccion("ColPresupuestoVersionDetalle").Add(pvd);
                                        pv.Coleccion("ColPresupuestoVersionDetalle").AnexarObjetoActivo();
                                    }
                                    //}
                                }
                            }
                        }

                        encontrada = false;
                    }
                    catch 
                    { }
                }

                string script = "";

                script += "if (window.opener != null) {window.opener." + pag.ClientScript.GetPostBackEventReference(pag, "noguardar") + "}";
                script += "window.close();";

                ((PROT.ControlesEspeciales.RaizPage)pag).RegistraStartupScript("selec", script, true);
            }

            base.Metodo(pag, NombreMetodo);
        }

        public void AceptarPorCodigo()
        {
            PresupuestoVersion pVer;

            // Objeto obra que se va a crear.
            Obra ob = null;

            pVer = (PresupuestoVersion)Coleccion("ColPresupuestoVersion").ObjetoActivo;
            if (!((bool)pVer["Principal"]))
            {
                pVer = null;

                foreach (BaseNegocio b in Coleccion("ColPresupuestoVersion"))
                {
                    if ((bool)b["Principal"])
                    {
                        pVer = (PresupuestoVersion)b;

                        break;
                    }
                }
            } 
            
            ob = new Obra();
            ob.NuevoEnBlanco(this);
            ob.AceptandoPresupuesto = true;
            ob.Guardar();
            ob.AceptandoPresupuesto = false;

            // Aceptamos también la Versión Principal.
            pVer["Aceptado"] = true;
            pVer["FechaAceptacion"] = ob["FechaApertura"];
            //pVer["FechaAplicacion"] = ob["FechaApertura"];
            pVer["Ampliacion"] = false;
            pVer["Modificacion"] = false;
            pVer["Descartado"] = false;
            pVer.Guardar();

            // Modificamos los datos del presupuesto.
            this["IDPresupuestoEstado"] = 2;
            this["Aceptado"] = true;
            this["IDObra"] = ob.IDActual[0];
            this["FechaAceptacion"] = ob["FechaApertura"];

            // El usuario actual es el que acepta el presuesto.
            // Puede que sea el Responsable al final.
            this.objetosSub["ColPresupuestoUsuario"].ObjetoActivo["IDPresupuestoUsuarioTipo"] = 4;
            this.objetosSub["ColPresupuestoUsuario"].ObjetoActivo["IDUsuario"] = UsuarioActual.IDActual[0];
            this.objetosSub["ColPresupuestoUsuario"].AnexarObjetoActivo();

            this.Guardar();

            ob["NombreObra"] = ob["NombreObra"].ToString() + " ";
            ob["NombreObra"] = ob["NombreObra"].ToString().Trim();

            ob.Guardar();

            presupuestoRecienAceptado = true;
            this.Guardar();
        }

		public override bool MetodoPermitido(string NombreMetodo)
		{
			if (NombreMetodo == "EliminarNotas")
			{
				return this.PermisoModificar && UsuarioActual.Permiso("MET", "Nota", "EliminarNotas");
			}
			if (NombreMetodo == "EliminarTareas")
			{
				return this.PermisoModificar && UsuarioActual.Permiso("MET", "Tarea", "EliminarTareas");
			}

			if (NombreMetodo == "EliminarVersiones")
			{
				return this.PermisoModificar && UsuarioActual.Permiso("MET", "Presupuesto", "EliminarVersiones");
			}
			if (NombreMetodo == "CrearAmpliacion")
			{
				return this.PermisoModificar && UsuarioActual.Permiso("MET", "Presupuesto", "CrearAmpliacion");
			}
			if (NombreMetodo == "CrearCliente")
			{
				return this["IDCliente"] is DBNull && (Lib.NoStringNulo(this["Peticionario"].ToString()).Trim() != "");
			}
			if (NombreMetodo == "AceptarPresupuesto")
			{
				if (UsuarioActual.Permiso("MET", "Presupuesto", "AceptarPresupuesto"))
				{
					// Que no esté aceptado.
					if (((bool)this["Aceptado"]))
					{
						return false;
					}

					// Obviamente, pero por si acaso...
					if (!(this["IDObra"] is DBNull))
					{
						return false;
					}

					// Por ahora solo Presupuestos normales.
					if ((int)this["IDPresupuestoTipoBase"] != 1)
					{
						return false;
					}
				}
				else
				{
					return false;
				}
			}

			return base.MetodoPermitido(NombreMetodo);
		}

        public override void Metodo(System.Web.UI.Page pag, string NombreMetodo, int[] Param)
        {
			ColPresupuestoVersion cpv = null;

			if (NombreMetodo == "EliminarNotas")
			{
				Nota.EliminarNotas("PresupuestoNota", Param);
			}
			if (NombreMetodo == "EliminarTareas")
			{
				Tarea.EliminarTareas(Param);
			}

			if (NombreMetodo == "EliminarVersiones" || NombreMetodo == "CrearAmpliacion")
			{
				if (this.Modificado)
				{
					this.ErrorMensaje = "";

					// POr si acaso establece un cliente.
					this.Guardar();

					if (this.ErrorMensaje != "")
					{
						return;
					}
				}

				cpv = (ColPresupuestoVersion)Coleccion("ColPresupuestoVersion");
			}

			if (NombreMetodo == "EliminarVersiones")
			{
				foreach (int idV in Param)
				{
					if (idV > 0)
					{
						object obj = cpv.BuscarPorClave(idV.ToString());

						if (obj != null)
						{
							PresupuestoVersion pv = (PresupuestoVersion)obj;

							if (!pv.AceptadoAhoraVersion && !((bool)pv["Principal"]))
							{
								// No aceptado y no Principal.

								pv.Eliminar = true;
							}
						}
					}
				}
			}

			if (NombreMetodo == "CrearAmpliacion")
			{
				bool establecerPrincipal = false;
				PresupuestoVersion nueva;

				cpv.CrearEnBlanco();

				nueva = (PresupuestoVersion)cpv.ObjetoActivo;

				nueva["Version"] = Datos.Instancia().DameExpresionInt("Select MAX(Version) From PresupuestoVersion"
						+ " WHERE IDPresupuesto = " + IDActual[0]) + 1;

				if (!AceptadoAhora)
				{
					nueva["Principal"] = false;
					nueva["Ampliacion"] = false;

					establecerPrincipal = true;
				}
				else
				{
					nueva["Principal"] = false;
					nueva["Ampliacion"] = true;
				}

				foreach (int idV in Param)
				{
					if (idV > 0)
					{
						object obj = cpv.BuscarPorClave(idV.ToString());

						if (obj != null)
						{
							PresupuestoVersion pv = (PresupuestoVersion)obj;

							nueva.CopiarTarifas(pv);
						}
					} 
				}

				cpv.AnexarObjetoActivo();

				if (establecerPrincipal)
				{
					nueva.Metodo(pag, "EstablecerVersionPrincipal");
				}
			}
			if (NombreMetodo == "EliminarVersiones" || NombreMetodo == "CrearAmpliacion")
			{
				if (Correcto)
				{
					this.Guardar();
				}
			}
        }

       
        #endregion

		#region Permisos
		/// <summary>
		/// Establece los permisos para el objeto.
		/// </summary>
		public override void PermisosGenerar()
		{
			PROT.NegocioGeneral.Usuarios.ClasePermiso.CrearPermiso("MET", "Presupuesto", "AceptarPresupuesto");

			base.PermisosGenerar();
		}

		public override bool PermisoEliminar
		{
			get
			{
				bool eliminar = base.PermisoEliminar;

				if (eliminar)
				{
					// No se pueden eliminar Presupuestos aceptados.
					eliminar = !((bool)this["Aceptado"]);
				}

				return eliminar;
			}
		}
		#endregion

        #region Objetos Asociados
        /// <summary>
        /// Devuelve Objetos BaseNegocio por nombre.
        /// En general, depende de la situación actual del objeto, de los valores de this.
        /// </summary>
		/// <param name="NombreObjeto">El nombre del Objeto Asociado</param>
        public override BaseNegocio ObjetoAsociado(string NombreObjeto)
        {
            if (NombreObjeto == "PresupuestoVersionDetalle")
            {
                return Coleccion("ColPresupuestoVersionDetalle").ObjetoActivo;
            }

            if (NombreObjeto == "UsuarioFirma")
            {

                int IdUsuario = Lib.NoIntNulo(this["IDUsuario_5"]);
                
                if (IdUsuario > 0)
                {
                    foreach (BaseNegocio b in Coleccion("ColPresupuestoUsuario"))
                    {
                        if ((int)b["IDPresupuestoUsuarioTipo"] == 5)
                        {
                            return b.ObjetoAsociado("Usuario");
                        }
                    }
                }

                return null;
            }

            if (NombreObjeto == "PresupuestoVersionDocumento_0")
            {
                return Coleccion("ColPresupuestoVersionDocumento").ObjetoActivo;
            }

			if (NombreObjeto.StartsWith("PresupuestoVersionDocumento_"))
			{
				return ((ColPresupuestoVersionDocumento)Coleccion("ColPresupuestoVersionDocumento")).ObjetoPVD(NombreObjeto);
			}

            if (NombreObjeto == "DocumentoAceptacionFirmado")
            {
                return ((ColPresupuestoVersionDocumento)Coleccion("ColPresupuestoVersionDocumento")).DocumentoAceptacionFirmado();
            }

            if (NombreObjeto == "DocumentoAceptacionFirmadoNulo")
            {
                return ((ColPresupuestoVersionDocumento)Coleccion("ColPresupuestoVersionDocumento")).DocumentoAceptacionFirmadoNulo();
            }

            if (NombreObjeto == "FacturaNuevaTarifa")
            {
                if (fnt == null)
                {
                    fnt = new FacturaNuevaTarifa();
                    // 11  LCC Calidad - Madrid.
                    this["IDDivisionSucursal"] = 11;
             
                    fnt.IDTarifaEici = (int)this.ObjetoAsociado("DivisionSucursal")["_IDTarifaEici"];
                }

                return fnt;
            }
			if (NombreObjeto == "Obra")
            {
                obra = (Obra)RecuperaObjetoAsociado((BaseNegocio)obra, "Obra", "IDObra");

                return obra;
            }
            if (NombreObjeto == "PresupuestoTipo")
            {
                PresuTipo = (PresupuestoTipo)RecuperaObjetoAsociado((BaseNegocio)PresuTipo, "PresupuestoTipo", "IDPresupuestoTipo");

                return PresuTipo;
            }
			if (NombreObjeto == "Cliente")
            {
                cliente = (Cliente)RecuperaObjetoAsociado((BaseNegocio)cliente, "Cliente", "IDCliente");

                return cliente;
            }
            if (NombreObjeto == "TituloReglamento")
            {
                titreg = (TituloReglamento)RecuperaObjetoAsociado((BaseNegocio)titreg, "TituloReglamento", "IDTituloReglamento");

                return titreg;
            }
			if (NombreObjeto == "ClienteDelegacion")
            {
                clienteDelegacion = (ClienteDelegacion)RecuperaObjetoAsociado((BaseNegocio)clienteDelegacion, "ClienteDelegacion", "IDClienteDelegacion");

                return clienteDelegacion;
            }
			if (NombreObjeto == "DivisionSucursal")
            {
                divS = (DivisionSucursal)RecuperaObjetoAsociado((BaseNegocio)divS, "DivisionSucursal", "IDDivisionSucursal");

                return divS;
            }
			if (NombreObjeto == "PrimerContactoPrincipal")
            {
                return ((ColPresupuestoContacto) Coleccion("ColPresupuestoContacto")).PrimerContactoPrincipal;
            }
			if (NombreObjeto == "Presupuesto" || NombreObjeto == "Oportunidad")
			{
				return this;
			}
			if (NombreObjeto == "LocalizacionGPS")
			{
				int idLocalizacionGPSAnterior = Lib.NoIntNulo(this["IDLocalizacionGPS"]);

				loc = (LocalizacionGPS) PROT.NegocioGeneral.Especializadas.BaseLocalizacionGPS.Instancia(loc, this);

				if (loc.Nuevo)
				{
					loc["IDDivision"] = IDDivision;
					loc.Guardar();

					this["IDLocalizacionGPS"] = loc.IDActual[0];
				}

				if (idLocalizacionGPSAnterior == 0 && !Nuevo)
				{
					// Así no se escapa. this["IDLocalizacionGPS"] ya tiene el valor correcto.
					// Pero no quiero perderlo si pulsa Cancelar.
					Datos.Instancia().executeSQL("UPDATE Presupuesto Set IDLocalizacionGPS = " + this["IDLocalizacionGPS"].ToString()
						+ " WHERE IDPresupuesto = " + this.IDActual[0] 
						+ " AND (IDLocalizacionGPS is null or IDLocalizacionGPS <> " + this["IDLocalizacionGPS"].ToString() + ")");
				}

				return loc;
			}
			if (NombreObjeto == "Arquitecto")
			{
				arq = (Arquitecto)RecuperaObjetoAsociado((BaseNegocio)arq, "Arquitecto", "IDArquitecto");

				return arq;
			}

			return base.ObjetoAsociado(NombreObjeto);
        }
        #endregion

        #region Propiedades Publicas
        //public void TarifaFacturaManual(string codigo, string concepto, string precio, string unidades, string divisor)
        //{ 

        
        //}


		private Decimal CalcularTotal(bool SoloAceptadas, bool ConAmpliaciones)
		{
			Decimal total = 0;
			string sql = "";

            //Si es principal (Sumar todo)
            //Si es una ampliación (Solo ampliación)

			// Primero el total del presupuesto actual.
			if (Coleccion("ColPresupuestoVersion").Modificado)
			{
				total = ((ColPresupuestoVersion)Coleccion("ColPresupuestoVersion")).CalcularTotal(SoloAceptadas, ConAmpliaciones);
			}
			else
			{
                sql = "SELECT SUM(" + LCC.Negocio.Presupuestos.PresupuestoVersionDetalle.SQLCampoTotalSinAs + ")"
                    + " FROM PresupuestoVersion INNER JOIN"
                    + " PresupuestoVersionDetalle ON PresupuestoVersion.IDPresupuestoVersion = PresupuestoVersionDetalle.IDPresupuestoVersion INNER JOIN"
                    + " PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT"
                    + " WHERE (PresupuestoVersion.Principal = 1)"
                    + " AND PresupuestoVersion.IDPresupuesto = " + IDActual[0];

				if (SoloAceptadas)
				{
					sql += " AND PresupuestoVersionDetalle.Aceptada = 1";
				}
				total = System.Convert.ToDecimal(Datos.Instancia().DameExpresionDouble(sql));

				// Después el total con ampliaciones, usamos en IDObra.
				if (ConAmpliaciones)
				{
					sql = "SELECT SUM(" + LCC.Negocio.Presupuestos.PresupuestoVersionDetalle.SQLCampoTotalSinAs + ")"
						+ " FROM PresupuestoVersion INNER JOIN"
						+ " PresupuestoVersionDetalle ON PresupuestoVersion.IDPresupuestoVersion = PresupuestoVersionDetalle.IDPresupuestoVersion INNER JOIN"
						+ " PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT"
						+ " WHERE (PresupuestoVersion.Principal = 0) AND PresupuestoVersion.Ampliacion = 1"
						+ " AND PresupuestoVersion.IDPresupuesto = " + IDActual[0];

					if (SoloAceptadas)
					{
						sql += " AND PresupuestoVersion.Aceptado = 1 AND PresupuestoVersionDetalle.Aceptada = 1";
					}

					total += System.Convert.ToDecimal(Datos.Instancia().DameExpresionDouble(sql));
				}
			}

			return total;
		}

        /// <summary>
        /// Devuelve un string según una propiedad.
        /// </summary>
        /// <param name="Nombre">Nombre de la propiedad</param>
        public override string Propiedad(string NombrePropiedad)
        {
            bool totalCalculado = false;
            string totalString = null;
            Decimal total = 0;

            if (NombrePropiedad == "EliminandoAceptacionFirmada")
            {
                if (ObjetoAsociado("DocumentoAceptacionFirmado").Eliminar)
                {
                    return "(eliminando)";
                }
            }

            if (NombrePropiedad == "Firma")
            {
                if (ObjetoAsociado("UsuarioFirma") == null)
                {
                    return "";
                }

                return ObjetoAsociado("UsuarioFirma").ObjetoAsociado("DocumentoFirma").Propiedad("RutaArchivo");
            }

			if (NombrePropiedad == "RutaArchivos")
            {
                return "Presupuestos\\" + this["IDDivision"].ToString() + "\\" + this["Anyo"].ToString();
            }

			if (NombrePropiedad == "PresupuestoTipo")
			{
				return ProveedorListas.TextoDeCombo("PresupuestoTipo", (int)this["IDPresupuestoTipo"]);
			}

			if (NombrePropiedad == "PeticionarioCliente")
            {
                if (ObjetoAsociado("Cliente") == null)
                {
                    return this["Peticionario"].ToString();
                }
                else
                {
                    return cliente["Cliente"].ToString();
                }
            }

            if (NombrePropiedad == "PermiteCreacionArchivo")
            {
                return "1";
            }

			if (NombrePropiedad == "CIF")
			{
				if (ObjetoAsociado("Cliente") == null)
				{
					return this["CIF"].ToString();
				}
				else
				{
					return cliente["CIF"].ToString();
				}
			}

			if (NombrePropiedad.StartsWith("NombreUsuario"))
			{
				object IDUsuario = this[NombrePropiedad.Replace("Nombre", "ID")];

				if (IDUsuario is DBNull)
				{
					return "No establecido.";
				}
				else
				{
					return ProveedorListas.TextoDeCombo("TodosUsuarios", (int)IDUsuario);
				}
			}
			if (NombrePropiedad == "PresupuestoSeguro")
			{
				return ProveedorListas.TextoDeCombo("PresupuestoSeguro", this["IDPresupuestoSeguro"]);
			}
            if (NombrePropiedad == "PresupuestoCorredorSeguros")
            {
                return ProveedorListas.TextoDeCombo("PresupuestoCorredorSeguros", this["IDPresupuestoCorredorSeguros"]);
            }

            if (NombrePropiedad == "Año")
            {
                return this["Anyo"].ToString();
            }
            if (NombrePropiedad == "Año00")
            {
                return this["Anyo"].ToString().Substring(2, 2);
            }
			if (NombrePropiedad == "Agno_Codigo")
			{
				return this["Anyo"].ToString() + "/" + this["Codigo"].ToString();
			}
			if (NombrePropiedad == "Concepto")
            {
                return ProveedorListas.TextoDeCombo("PresupuestoConcepto", 
                    Lib.NoIntNulo(this["IDPresupuestoConcepto"]));
            }
            
            if (NombrePropiedad == "Bonificacion")
            {
                if ((float)this["Descuento"] != 0)
                {
                    return "BONIFICACIÓN: " + this["Descuento"].ToString() + " %";
                }

                return "";
            }

            if (NombrePropiedad == "ProgramaTrabajoGeotecnico")
            {
                //TipoPresupuestoGeotécnico false es Edificación
                //TipoPresupuestoGeotécnico true es Obra Civil

                //Si está marcado Edificación
                if (Lib.NoBoolNulo(this["_TipoPresupuestoGeotecnico"]) == false)
                {
                    string dt = "";

                    if (Lib.NoStringNulo(this["_DescripcionTrabajo"]) != "")
                    {
                        dt = "(" + this["_DescripcionTrabajo"] + ")";
                    }

                    //Si está marcado Edificio o Viales o los dos
                    if (Lib.NoBoolNulo(this["_EdificacionEdificio"]) == true
                        || Lib.NoBoolNulo(this["_EdificacionViales"]) == true)
                    {
                        return "Según la superficie del solar y de la construcción que se va a realizar " + dt
                            + ", se consideran los siguientes trabajos:\r\n";
                    }
                    else
                    {
                        return dt + "\r\n";
                    }
                }

                //Si está marcado obra civil
                if (Lib.NoBoolNulo(this["_TipoPresupuestoGeotecnico"]) == true)
                {
                    //Si sólo está marcado Puente
                    if (Lib.NoBoolNulo(this["_ObraCivilPuente"]) == true && Lib.NoBoolNulo(this["_ObraCivilCarretera"]) == false)
                    {
                        return "Según las características de los puentes a construir, se consideran los siguientes trabajos que para nosotros son suficientes:\r\n";
                    }

                    //Si sólo está marcado Carretera
                    if (Lib.NoBoolNulo(this["_ObraCivilPuente"]) == false && Lib.NoBoolNulo(this["_ObraCivilCarretera"]) == true)
                    {
                        return "Según la longitud de la carretera se consideran los siguientes trabajos, que para nosotros son suficientes:\r\n";
                    }

                    //Si están marcados Carretera y Puente
                    if (Lib.NoBoolNulo(this["_ObraCivilCarretera"]) == true && Lib.NoBoolNulo(this["_ObraCivilPuente"]) == true)
                    {
                        return "Según la longitud de la carretera y las características de los puentes a construir, se consideran los siguientes trabajos que para nosotros son suficientes:\r\n";
                    }
                }
            }

            if (NombrePropiedad == "TrabajoCampoGeotecnico")
            {
                string resultado = "";
                
                if (Lib.NoBoolNulo(this["_Sondeos"]))
                {
                    string sql = "Select * FROM PresupuestoSondeo WHERE IDPresupuesto = " + this.IDActual[0].ToString();
                    string intro = "";
                    int spt = 0;
                    int mi = 0;

                    DataTable dt = Datos.Instancia().getDataTableCache(sql, 0, 1);

                    if (dt.Rows.Count > 0)
                    {
                        foreach (DataRow dr in dt.Rows)
                        {
                            if ((int)dr["Numero"] > 1)
                            {
                                intro = "Sondeos rotativos de";
                            }
                            else
                            {
                                intro = "Sondeo rotativo de";
                            }

                            resultado += "- " + dr["Numero"].ToString() + " " + intro + " " + dr["Metros"].ToString() + " " + this["_DescripcionSondeo"].ToString() + "\r\n";
                            spt += (int)dr["Spt"];
                            mi += (int)dr["Mi"];
                        }

                        resultado += "- " + spt + " " + this["_DescripcionSpt"].ToString() + "\r\n";
                        resultado += "- " + mi + " " + this["_DescripcionMi"].ToString() + "\r\n";
                        resultado += "- " + this["_DescripcionMuestraAgua"].ToString() + "\r\n";
                        resultado += "- " + this["_DescripcionNivelFreatico"].ToString() + "\r\n";
                    }
                }
                
                if (Lib.NoBoolNulo(this["_Penetros"]) && Lib.NoIntNulo(this["_NumPenetros"]) > 0)
                {
                    resultado += "- " + this["_NumPenetros"].ToString() + " " + this["_DescripcionPenetros"].ToString() + "\r\n";
                }

                if (Lib.NoBoolNulo(this["_Calicatas"]) && Lib.NoIntNulo(this["_NumCalicatas"]) > 0)
                {
                    resultado += "- " + this["_NumCalicatas"].ToString() + " " + this["_DescripcionCalicatas"].ToString() + "\r\n";
                }

                return resultado;
            }

            if (NombrePropiedad == "TrabajoInformeGeotecnico")
            {
                string resultado = "";

                if (Lib.NoBoolNulo(this["_MostrarTrabajoLaboratorio"]))
                {
                    string sql = "Select * FROM PresupuestoSondeo WHERE IDPresupuesto = " + this.IDActual[0].ToString();
                    DataTable dt = Datos.Instancia().getDataTableCache(sql, 0, 1);

                    if ((Lib.NoBoolNulo(this["_Sondeos"]) && dt.Rows.Count > 0) || (Lib.NoBoolNulo(this["_Calicatas"]) && Lib.NoIntNulo(this["_NumCalicatas"]) > 0))
                    {
                        //Si tiene registros de sondeos y de calicatas
                        resultado += "%BS%2.2.- TRABAJO DE LABORATORIO%BS/%\r\n\r\n";
                        resultado += "      Se estima la realización de los siguientes ensayos:\r\n";
                        resultado += "          - Determinaciones de humedad en suelos.\r\n";
                        resultado += "          - Análisis granulométricos.\r\n";
                        resultado += "          - Límites de Attemberg.\r\n";
                        resultado += "          - Reconocimiento de sulfatos de terreno.\r\n";

                        if ((Lib.NoBoolNulo(this["_Sondeos"]) && dt.Rows.Count > 0))
                        {
                            resultado += "          - Determinaciones de densidad seca en suelos.\r\n";
                            resultado += "          - Compresiones simples.\r\n";
                            resultado += "          - Corte directo en muestras inalteradas o remoldeadas completamente saturadas.\r\n";
                            resultado += "          - Hinchamiento en edómetro.\r\n";
                            resultado += "          - Expansividad Lambe.\r\n";
                            resultado += "          - Análisis de agua.\r\n";
                        }
                    }
                }

                if (resultado != "")
                {
                    resultado += "\r\n\r\n\r\n";
                }

                if (Lib.NoBoolNulo(this["_MostrarInformeTecnico"]))
                {
                    string sql = "Select * FROM PresupuestoSondeo WHERE IDPresupuesto = " + this.IDActual[0].ToString();
                    string indice = "";
                    string apartados = "";

                    DataTable dt = Datos.Instancia().getDataTableCache(sql, 0, 1);

                    //dt.Rows.Count == 0 && Lib.NoIntNulo(this["_NumCalicatas"]) == 0)
                    if (Lib.NoBoolNulo(this["_Sondeos"]) == false && Lib.NoBoolNulo(this["_Calicatas"]) == false)
                    {
                        indice = "2.2.-";
                        apartados = "en el apartado 2.1";
                    }
                    else
                    {
                        indice = "2.3.-";
                        apartados = "en los apartados 2.1 y 2.2";
                    }

                    resultado += "%BS%" + indice + " " + "INFORME TÉCNICO" + "%BS/%\r\n\r\n";
                    resultado += "      Con la interpretación de los resultados obtenidos " + apartados
                        + ",se redactará un informe técnico que comprendará:\r\n";

                    //Si está marcado edificación y edificio o si está marcado obra civil y puente.
                    if ((Lib.NoBoolNulo(this["_TipoPresupuestoGeotecnico"]) == false && Lib.NoBoolNulo(this["_EdificacionEdificio"]) == true)
                        || (Lib.NoBoolNulo(this["_TipoPresupuestoGeotecnico"]) == true && Lib.NoBoolNulo(this["_ObraCivilPuente"]) == true))
                    {
                        resultado += "          - Características geotécnicas del terreno.\r\n";
                        resultado += "          - Profundidad de apoyo.\r\n";
                        resultado += "          - Presión admisible.\r\n";
                        resultado += "          - Agresividad del terreno.\r\n";
                        resultado += "          - Recomendaciones sobre la cimentación.\r\n";
                        resultado += "          - Nivel freático y sus incidencias.\r\n";
                    }
                    //Si está marcado Edificación y viales
                    if (Lib.NoBoolNulo(this["_TipoPresupuestoGeotecnico"]) == false && Lib.NoBoolNulo(this["_EdificacionViales"]))
                    {
                        resultado += "          - Tipo del terreno por el que discurre el vial.\r\n";
                        resultado += "          - Tipo del material y posible aprovechamiento de los mismos.\r\n";
                        resultado += "          - Tipo de explanda por el que discurre el vial.\r\n";
                    }

                    //Si está marcado Obra Civil y carretera
                    if (Lib.NoBoolNulo(this["_TipoPresupuestoGeotecnico"]) == true && Lib.NoBoolNulo(this["_ObraCivilCarretera"]))
                    {
                        resultado += "          - Tipo de terreno por el que discurre la traza.\r\n";
                        resultado += "          - Tipos de materiales y posible aprovechamiento de los mismos.\r\n";
                        resultado += "          - Tipos de explanador por los que discurre el trazado.\r\n";
                    }
                }

                if (resultado != "")
                {
                    resultado += "\r\n%SaltoPagina%";
                }

                return resultado;
            }

			if (NombrePropiedad == "DonNombreApellidos")
            {
                // Nombre completo de la persona de contacto con ", en nombre propio o en representación de ". En blanco si no existe persona de contacto.
                string respuesta = ((ColPresupuestoContacto)Coleccion("ColPresupuestoContacto")).DonNombreApellidos();

                if (respuesta.Trim() != "")
                {
                    respuesta += ", en nombre propio o en representación de ";
                }

                return respuesta;
            }
            if (NombrePropiedad == "NombreApellidos")
            {
                // Nombre completo de la persona de contacto con ", en nombre propio o en representación de ". En blanco si no existe persona de contacto.
                string respuesta = ((ColPresupuestoContacto)Coleccion("ColPresupuestoContacto")).DonNombreApellidos();

                return respuesta;
            }
            if (NombrePropiedad == "INTECFinIntroduccion")
            {
                // Si <!Prop.Concepto> es "Control de Calidad" entonces "Técnico de Calidad de dicha obra.", si no "Técnico en el marco de Seguro Decenal de Daños en la edificación.".

                if (Propiedad("Concepto") == "Control de Calidad")
                {
                    return "Técnico de Calidad de dicha obra.";
                }
                else
                {
                    return "Técnico en el marco de Seguro Decenal de Daños en la edificación.";
                }
            }
			if (NombrePropiedad == "PEM")
            {
                return Util.DarFormatoMonedaConDecimales(this["PEM"] is DBNull ? 0 : (Decimal)this["PEM"]);
            }
			if (NombrePropiedad == "DireccionCompleta" || NombrePropiedad == "CalleDireccion"
				|| NombrePropiedad == "CP" || NombrePropiedad == "Poblacion" || NombrePropiedad == "Provincia"
				|| NombrePropiedad == "Telefono" || NombrePropiedad == "Telefono2" || NombrePropiedad == "Fax"
				|| NombrePropiedad == "Email")
            {
                if (ObjetoAsociado("ClienteDelegacion") == null)
                {
					if (NombrePropiedad == "Provincia")
					{
						return ProveedorListas.TextoDeCombo("TodasProvinciasNombres", Lib.NoIntNulo(this["IDProvincia"]));
					}
					else if (NombrePropiedad == "CalleDireccion")
					{
						string calleDireccion = Util.TipoVia(this["IDTipoVia"]) + " " + this["Direccion"].ToString();

						return calleDireccion.Trim();
					}
					else
					{
						return this[NombrePropiedad].ToString();
					}
                }
                else
                {
					if (NombrePropiedad == "Provincia" || NombrePropiedad == "CalleDireccion")
					{
						return clienteDelegacion.Propiedad(NombrePropiedad);
					}
					else
					{
						return clienteDelegacion[NombrePropiedad].ToString();
					}
                }
            }

			if (NombrePropiedad == "EstadoEmpezada" || NombrePropiedad == "EstadoConstPreexistente"
                || NombrePropiedad == "EstadoRehabilitacion" || NombrePropiedad == "EstadoObraNueva"
                || NombrePropiedad == "EstadoTerminada")
			{
				return (bool)this[NombrePropiedad] ? "X" : "";
			}

			if (NombrePropiedad == "TipoEdificio")
			{
				return ProveedorListas.TextoDeCombo("PresupuestoTipoEdificio", this["IDPresupuestoTipoEdificio"]);
			}

			if (NombrePropiedad.IndexOf("TotalMisiones") >= 0)
            {
                Decimal totalMisiones = 0;

                totalMisiones = ((ColPresupuestoMision)Coleccion("ColPresupuestoMision")).Total();

				if (NombrePropiedad == "TotalMisiones")
                {
                    return Util.DarFormatoMonedaConDecimales(totalMisiones);
                }
				if (NombrePropiedad == "PorcentajeTotalMisionesSobrePEM")
                {
                    if ((this["PEM"] is DBNull ? 0 : (Decimal)this["PEM"]) == 0)
                    {
                        return Util.DarFormatoPorcentaje(0);
                    }
                    else
                    {
                        return Util.DarFormatoPorcentaje(totalMisiones * 100
                            / (this["PEM"] is DBNull ? 0 : (Decimal)this["PEM"]));
                    }
                }
            }

			if (NombrePropiedad == "FormaPago")
            {
                return ProveedorListas.TextoDeCombo("TipoFormaPago", 
                    Lib.NoIntNulo(this["IDTipoFormaPago"]));
            }

			if (NombrePropiedad == "CondicionesPago")
            {
                return ProveedorListas.TextoDeCombo("PresupuestoCondicionesPago", 
                    Lib.NoIntNulo(this["IDPresupuestoCondicionesPago"]));
            }

			if (NombrePropiedad == "FechaEmisionLarga")
            {
                DateTime fe = (DateTime)this["FechaEmision"];
                return fe.Day.ToString() + " de " + fe.ToString("MMMM") + " de " + fe.Year.ToString();
            }

			if (NombrePropiedad == "Colaboradores")
			{
				string cols = "";

				foreach (BaseNegocio b in Coleccion("ColPresupuestoColaboradorNaM"))
				{
					if (cols != "")
					{
						cols += Datos.CRLF;
					}
					cols += b["Nombre"].ToString();
				}

				return cols;
			}

			if (NombrePropiedad == "UsuarioResponsable")
			{
				object IDUsuarioFirma = this["IDUsuario_3"];

				if (!(IDUsuarioFirma is DBNull))
				{
					string NombreApellidos = "";
					string TituloFirma = "";
                    string DNI = "";
                    string PoblacionDomicilio = "";

                    UsuarioApp.DatosFirma((int)IDUsuarioFirma,
                        ref NombreApellidos, ref TituloFirma, ref DNI, ref PoblacionDomicilio);

					return NombreApellidos;
				}

				return "";
			}

			if (NombrePropiedad == "FechaEmision" || NombrePropiedad == "FechaIniObra" || NombrePropiedad == "FechaFinObra")
			{
				return Lib.FormateaFecha(this[NombrePropiedad]);
			}

            // Firma.
			if (NombrePropiedad.IndexOf("Firma") >= 0)
            {
				string[] firma = NombrePropiedad.Split('-');

                if (firma.Length == 2)
                {
					object IDUsuarioFirma = this["IDUsuario_5"];

					if (!(IDUsuarioFirma is DBNull))
					{
						string NombreApellidos = "";
						string TituloFirma = "";
                        string DNI = "";
                        string PoblacionDomicilio = "";

						UsuarioApp.DatosFirma((int)IDUsuarioFirma,
                            ref NombreApellidos, ref TituloFirma, ref DNI, ref PoblacionDomicilio);

						if (firma[1].Contains("Firma"))
						{
							return NombreApellidos;
						}
                        else if (firma[1].Contains("DNI"))
                        {
                            return DNI;
                        }
                        else if (firma[1].Contains("PoblacionDomicilio"))
                        {
                            return PoblacionDomicilio;
                        }
                        else
                        {
                            return TituloFirma;
                        }
					}
                }
            }


            // Misiones, tipo Misiones-CBO-I;
			if (NombrePropiedad.Length > 9)
            {
				string[] mis = NombrePropiedad.Split('-');

                if (mis.Length == 3)
                {
                    if (mis[0] == "Misiones")
                    {
                        return ((ColPresupuestoMision)Coleccion("ColPresupuestoMision")).Descripcion(mis[1],
                            mis[2], this["PEM"] is DBNull ? 0 : (Decimal)this["PEM"]);
                    }
                }
            }

            // A partir de aquí, los totales...
            // Realmente siempre se ejecuta solo uno de los if.

            if (NombrePropiedad == "TotalPrincipal")
            {
                // Si está aceptado entonces TotalAceptadoConAmpliaciones, 

                if ((bool)this["Aceptado"])
                {
                    NombrePropiedad = "TotalAceptadoConAmpliaciones";
                }
                else
                {
                    NombrePropiedad = "TotalPresupuestado";
                }
            }

			if (NombrePropiedad == "TotalPresupuestado")
            {
                totalCalculado = true;
				total = CalcularTotal(false, false);
			}
			if (NombrePropiedad == "TotalAceptado")
            {
                totalCalculado = true;
				total = CalcularTotal(true, false);
            }
			if (NombrePropiedad == "TotalConAmpliaciones")
            {
                totalCalculado = true;
				total = CalcularTotal(false, true);
            }
			if (NombrePropiedad == "TotalAceptadoConAmpliaciones")
            {
                totalCalculado = true;
				total = CalcularTotal(true, true);
            }
            if (NombrePropiedad == "SumaTotalPresupuesto")
            {
                totalCalculado = true;
                total = CalcularTotal(true, true);
            }

			string[] prop = NombrePropiedad.Split('_');
            if (prop[0] == "Total" && prop.Length == 2)
            {
                totalCalculado = true;
                total = ((ColPresupuestoMision)Coleccion("ColPresupuestoMision")).Total(Int32.Parse(prop[1]));
            }

            if (totalCalculado)
            {
                totalString = LCC.Negocio.Util.DarFormatoMonedaConDecimales(total);
            }

			if (NombrePropiedad == "TotalSuperficie")
            {
                Single ts = 0;

                if (!(this["SupSobreRasante"] is DBNull))
                {
                    ts += (Single)this["SupSobreRasante"];
                }
                if (!(this["SupBajoRasante"] is DBNull))
                {
                    ts += (Single)this["SupBajoRasante"];
                }

                totalString = ts.ToString("0.00");
            }

            if (totalString != null)
            {
                return totalString;
            }
            else
            {
                // Devuelve ""
				return base.Propiedad(NombrePropiedad);
            }
        }

        public override void TextoEnlaceExterno(string URL, string Propiedad, ref string Texto, ref string Enlace)
        {
            if (Propiedad == "EnlaceTarifa")
            {
                Texto = "Editor de Tarifas";
				Enlace = TextoEnlace(URL) + "&r=IDDivision&rv=," + this["IDDivision"].ToString() + ",";

				if (!(this["IDTituloReglamento"] is DBNull))
				{
					Enlace += "&r1=Tarifa_IDTitulo&rv1=" + TituloReglamento.IDTitulos(this["IDTituloReglamento"]);
				}

                return;
            }
            if (Propiedad == "EnlacePresupuesto")
            {
                Texto = "Presupuesto";
                Enlace = TextoEnlace(URL);

                return;
            }
            base.TextoEnlaceExterno(URL, Propiedad, ref Texto, ref Enlace);
        }
        #endregion

        #region ContieneCliente Members
        public bool SePuedeCambiarElCliente(BaseNegocio nuevo, ref string error)
        {
            // Pero más tarde, al guardar, hay que volver a comprobarlo.

            if ((bool)this["Aceptado"])
            {
                error = "El Presupuesto está aceptado, no se puede cambiar el Cliente del Presupuesto.";

                return false;

            }
            return true;
        }
        #endregion

        #region Informes
        public DataTable Informe(string NombreInforme, string Where, string OrderBy)
        {
            string sql = "";
            DataTable dt = null;

            if (NombreInforme == "Prueba")
            {
				throw new Exception("Noooo");

				//sql = "SELECT Titulo.IDTitulo, Titulo.DescTitulo AS Titulo, Tarifa.Codigo AS Tarifa, Material.IDMaterial, Material.Nombre AS Material, CASE WHEN PresupuestoYTarifa.Concepto IS NULL THEN Tarifa.Desclarga ELSE PresupuestoYTarifa.Concepto END AS Descripcion, "
				//    + " PresupuestoYTarifa.Unidades, PresupuestoYTarifa.Precio, PresupuestoYTarifa.Unidades * PresupuestoYTarifa.Precio AS Total"
				//    + " FROM PresupuestoYTarifa INNER JOIN"
				//    + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa INNER JOIN"
				//    + " Material ON Tarifa.IDMaterial = Material.IDMaterial INNER JOIN"
				//    + " Titulo ON Tarifa.IDTitulo = Titulo.IDTitulo"
				//    + " WHERE " + Where
				//    + " ORDER BY " + OrderBy;
            }

            if (sql != "")
            {
                dt = Datos.Instancia().getDataTable(sql);
            }

            return dt;
        }
        #endregion

		#region SoportaSistemaNumeracion Members

		public string NombreSistemaNumeracion
		{
			get
			{
				return BaseSistemaNumeracion.NombreSistemaNumeracion((int) this["IDDivisionSucursal"]);
			}
		}

		#endregion

        static int idEPTabla = 0;
        public override int IDEPTabla
        {
            get
            {
                if (idEPTabla == 0)
                {
                    idEPTabla = Datos.Instancia().DameExpresionInt("Select IDEPTabla From EPTabla"
                        + " Where Nombre = 'Presupuestos'");
                }

                return idEPTabla;
            }
        }
	}

    public class PresupuestoProp : BaseProp
    {
        public PresupuestoProp()
        {
            sinPermisos = true;
            fila = new Fila("PresupuestoProp");
            nombre = "Propiedad de presupuesto.";
        }
    }

    public class ColPresupuestoProp : ColBaseProp
    {
        public ColPresupuestoProp(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
            : base(Padre, CampoRelacionPadre, Sql)
        { }

        public override BaseNegocio CrearInstanciaHijo()
        {
            BaseNegocio b;

            b = new PresupuestoProp();

            return b;
        }
    }

}
