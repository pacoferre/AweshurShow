using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;
using LCC.Negocio.Tarifas;
using LCC.Negocio.Trabajos;

namespace LCC.Negocio.Presupuestos
{
	public class PresupuestoVersionDetalle : BaseNegocio
	{
		private PresupuestoVersion pv = null;
		private PresupuestoYTarifa pyt = null;
		private bool marcarParaEliminar = false;

		public PresupuestoVersionDetalle()
		{
			fila = new Fila("PresupuestoVersionDetalle");
            nombre = "Detalle de Versión";
			sinPermisoLeer = true;
        }

		#region Objetos Asociados
		/// <summary>
		/// Devuelve Objetos BaseNegocio por nombre.
		/// En general, depende de la situación actual del objeto, de los valores de this.
		/// </summary>
		/// <param name="Nombre">El nombre del Objeto Asociado</param>
		public override BaseNegocio ObjetoAsociado(string Nombre)
		{
			if (Nombre == "PresupuestoVersion")
			{
				pv = (PresupuestoVersion)RecuperaObjetoAsociado((BaseNegocio)pv, "PresupuestoVersion", "IDPresupuestoVersion");

				return pv;
			}
			if (Nombre == "Presupuesto")
			{
				return (Presupuesto)ObjetoAsociado("PresupuestoVersion").ObjetoAsociado("Presupuesto");
			}
			if (Nombre == "PresupuestoYTarifa")
			{
                pyt = ((ColPresupuestoYTarifa)this.ObjetoAsociado("Presupuesto").Coleccion("ColPresupuestoYTarifa")).Buscar(pyt, (int)this["IDPyT"]);

				return pyt;
			}
			if (Nombre == "Tarifa")
			{
				return (Tarifa)ObjetoAsociado("PresupuestoYTarifa").ObjetoAsociado("Tarifa");
			}

			return ObjetoAsociado("Presupuesto").ObjetoAsociado(Nombre);
		}
		#endregion

		#region Propiedades Públicas

		/// <summary>
		/// Viene con As Total Al final.
		/// Obviamente supone un INNER JOIN con PresupuestoyTarifa
		/// </summary>
		public static string SQLCampoTotal
		{
			get
			{
				return "Case When PresupuestoVersionDetalle.DivisorUnidades is null then PresupuestoVersionDetalle.Unidades * PresupuestoYTarifa.Precio else PresupuestoVersionDetalle.Unidades * PresupuestoYTarifa.Precio / PresupuestoVersionDetalle.DivisorUnidades end As Total";
			}
		}

		/// <summary>
		/// NO viene con As Total Al final.
		/// Obviamente supone un INNER JOIN con PresupuestoyTarifa
		/// </summary>
		public static string SQLCampoTotalSinAs
		{
			get
			{
				return "Case When PresupuestoVersionDetalle.DivisorUnidades is null then PresupuestoVersionDetalle.Unidades * PresupuestoYTarifa.Precio else PresupuestoVersionDetalle.Unidades * PresupuestoYTarifa.Precio / PresupuestoVersionDetalle.DivisorUnidades end";
			}
		}

		/// <summary>
		/// Cuidado que hay que ponerle  As LoQueSea cuando esté en un Select.
		/// </summary>
		public static string SQLCampoUnidades
		{
			get
			{
				return "Case When PresupuestoVersionDetalle.DivisorUnidades is null then PresupuestoVersionDetalle.Unidades else PresupuestoVersionDetalle.Unidades / PresupuestoVersionDetalle.DivisorUnidades end";
			}
		}

		public override string Propiedad(string NombrePropiedad)
		{
			if (NombrePropiedad == "Informacion")
			{
				return Informacion();
			}
            if (NombrePropiedad == "ClaveInfo")
            {
                return ClaveInfo();
            }

			return base.Propiedad(NombrePropiedad);
		}

        public string ClaveInfo()
        {
			int IDPresupuesto = ObjetoAsociado("Presupuesto").IDActual[0];
			int IDCliente = 0;
			int IDTarifa = 0;

            if (ObjetoAsociado("Presupuesto").ObjetoAsociado("Cliente") != null)
            {
                IDCliente = ObjetoAsociado("Presupuesto").ObjetoAsociado("Cliente").IDActual[0];
                IDTarifa = ObjetoAsociado("Tarifa").IDActual[0];
            }
            else
            {
                return "Error, el cliente o la tarifa aún no han sido creados.";
            }

            return IDPresupuesto.ToString() + "_" + IDCliente.ToString() + "_" + IDTarifa.ToString();
        }

        public static string InformacionEstatica(string clave)
        {
            string[] ids = clave.Split('_');
            int IDPresupuesto = 0;
            int IDCliente = 0;
            int IDTarifa = 0;

            if (ids.Length == 3)
            {
                try
                {
                    IDPresupuesto = Int32.Parse(ids[0]);
                    IDCliente = Int32.Parse(ids[1]);
                    IDTarifa = Int32.Parse(ids[2]);
                }
                catch
                {
                }
            }

            return InformacionEstatica(IDPresupuesto, IDCliente, IDTarifa);
        }

        public static string InformacionEstatica(int IDPresupuesto, int IDCliente, int IDTarifa)
        {
            string respuesta = "";
            DataTable dt;
            string sql;

            respuesta += "<div style='text-align: right; width: 349px; float: left'>";
            respuesta += "<table>";
            
            if (IDCliente > 0)
            {
                sql = "SELECT TOP 5 PresupuestoYTarifa.Precio, Presupuesto.Anyo, Presupuesto.Codigo, PresupuestoVersion.FechaAceptacion, Presupuesto.IDPresupuesto "
                   + " FROM PresupuestoVersionDetalle INNER JOIN PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT "
                   + " INNER JOIN Presupuesto INNER JOIN PresupuestoVersion ON Presupuesto.IDPresupuesto = PresupuestoVersion.IDPresupuesto ON "
                   + " PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion "
                   + " WHERE Presupuesto.IDCliente = " + IDCliente + " AND PresupuestoYTarifa.IDTarifa = " + IDTarifa
                   + " AND Presupuesto.IDPresupuesto <> " + IDPresupuesto
                   + " AND (PresupuestoVersion.Aceptado = 1) AND (PresupuestoVersionDetalle.Aceptada = 1) "
                   + " ORDER BY PresupuestoVersion.FechaAceptacion DESC";

                dt = Datos.Instancia().getDataTableCache(sql, 0, 5);

                respuesta += "<tr>";
                respuesta += "<td colspan='5' style='font-weight:bold; text-align:center;'>";
                respuesta += "Últimos precios aceptados del cliente";
                respuesta += "</td>";
                respuesta += "</tr>";
                if (dt.Rows.Count == 0)
                {
                    respuesta += "<tr>";
                    respuesta += "<td colspan='5' style='text-align:center;'>";
                    respuesta += "No existen";
                    respuesta += "</td>";
                    respuesta += "</tr>";
                }
                else
                {
                    respuesta += "<tr>";
                    respuesta += "<td style='width:100px; font-weight:bold; text-align:right;'>";
                    respuesta += "Precio";
                    respuesta += "</td>";
                    respuesta += "<td style='width:40px;'>";
                    respuesta += "</td>";
                    respuesta += "<td style='width:100px; font-weight:bold; text-align:left;'>";
                    respuesta += "F.Aceptación";
                    respuesta += "</td>";
                    respuesta += "<td style='width:100px; font-weight:bold; text-align:left;'>";
                    respuesta += "Presupuesto";
                    respuesta += "</td>";
                    respuesta += "<td style='width:50px; font-weight:bold; text-align:left;'>";
                    respuesta += "Ir";
                    respuesta += "</td>";
                    respuesta += "</tr>";

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        respuesta += "<tr>";
                        respuesta += "<td style='text-align:right;'>";
                        respuesta += LCC.Negocio.Util.DarFormatoMonedaConDecimales((decimal)dt.Rows[i][0]);
                        respuesta += "</td>";
                        respuesta += "<td>";
                        respuesta += "</td>";
                        respuesta += "<td style='text-align:left;'>";
                        respuesta += String.Format("{0:dd/MM/yyyy}", dt.Rows[i][3]);
                        respuesta += "</td>";
                        respuesta += "<td style='text-align:left;'>";
                        respuesta += dt.Rows[i][1] + "/" + String.Format("{0:0000}", dt.Rows[i][2]);
                        respuesta += "</td>";
                        respuesta += "<td style='text-align:left;'>";
                        respuesta += "<a href='Presupuesto.aspx?id=" + dt.Rows[i][4] + "' target='_blank'><img id='aa' src='../img/ir.gif' style='border-width:0px;'></a>";
                        respuesta += "</td>";
                        respuesta += "</tr>";
                    }
                }
            }

            sql = "SELECT TOP 5 PresupuestoYTarifa.Precio, Presupuesto.Anyo, Presupuesto.Codigo, PresupuestoVersion.FechaAceptacion, Presupuesto.IDPresupuesto "
               + " FROM PresupuestoVersionDetalle INNER JOIN PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT "
               + " INNER JOIN Presupuesto INNER JOIN PresupuestoVersion ON Presupuesto.IDPresupuesto = PresupuestoVersion.IDPresupuesto ON "
               + " PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion "
               + " WHERE " + (IDCliente > 0 ? "Presupuesto.IDCliente <> " + IDCliente.ToString() : "") + " AND PresupuestoYTarifa.IDTarifa = " + IDTarifa
               + " AND Presupuesto.IDPresupuesto <> " + IDPresupuesto
               + " AND (PresupuestoVersion.Aceptado = 1) AND (PresupuestoVersionDetalle.Aceptada = 1) "
               + " ORDER BY PresupuestoVersion.FechaAceptacion DESC";

            dt = Datos.Instancia().getDataTableCache(sql, 0, 5);

            respuesta += "<tr>";
            respuesta += "<td colspan='5' style='font-weight:bold; text-align:center;'>";
            respuesta += "Últimos precios aceptados de otros clientes";
            respuesta += "</td>";
            respuesta += "</tr>";
            if (dt.Rows.Count == 0)
            {
                respuesta += "<tr>";
                respuesta += "<td colspan='5' style='text-align:center;'>";
                respuesta += "No existen";
                respuesta += "</td>";
                respuesta += "</tr>";
            }
            else
            {
                respuesta += "<tr>";
                respuesta += "<td style='width:100px; font-weight:bold; text-align:right;'>";
                respuesta += "Precio";
                respuesta += "</td>";
                respuesta += "<td style='width:40px;'>";
                respuesta += "</td>";
                respuesta += "<td style='width:100px; font-weight:bold; text-align:left;'>";
                respuesta += "F.Aceptación";
                respuesta += "</td>";
                respuesta += "<td style='width:100px; font-weight:bold; text-align:left;'>";
                respuesta += "Presupuesto";
                respuesta += "</td>";
                respuesta += "<td style='width:50px; font-weight:bold; text-align:left;'>";
                respuesta += "Ir";
                respuesta += "</td>";
                respuesta += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    respuesta += "<tr>";
                    respuesta += "<td style='text-align:right;'>";
                    respuesta += LCC.Negocio.Util.DarFormatoMonedaConDecimales((decimal)dt.Rows[i][0]);
                    respuesta += "</td>";
                    respuesta += "<td>";
                    respuesta += "</td>";
                    respuesta += "<td style='text-align:left;'>";
                    respuesta += String.Format("{0:dd/MM/yyyy}", dt.Rows[i][3]);
                    respuesta += "</td>";
                    respuesta += "<td style='text-align:left;'>";
                    respuesta += dt.Rows[i][1] + "/" + String.Format("{0:0000}", dt.Rows[i][2]);
                    respuesta += "</td>";
                    respuesta += "<td style='text-align:left;'>";
                    respuesta += "<a href='Presupuesto.aspx?id=" + dt.Rows[i][4] + "' target='_blank'><img id='aa' src='../img/ir.gif' style='border-width:0px;'></a>";
                    respuesta += "</td>";
                    respuesta += "</tr>";
                }
            }
        
            respuesta += "</table>";
            respuesta += "</div>";


            respuesta += "<div style='text-align: right; width: 349px; float: right'>";
            respuesta += "<table>";
            
            if (IDCliente > 0)
            {
                sql = "SELECT TOP 5 PresupuestoYTarifa.Precio, Presupuesto.Anyo, Presupuesto.Codigo, PresupuestoVersion.FechaEmision, Presupuesto.IDPresupuesto "
                   + " FROM PresupuestoVersionDetalle INNER JOIN PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT "
                   + " INNER JOIN Presupuesto INNER JOIN PresupuestoVersion ON Presupuesto.IDPresupuesto = PresupuestoVersion.IDPresupuesto ON "
                   + " PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion "
                   + " WHERE Presupuesto.IDCliente = " + IDCliente + " AND PresupuestoYTarifa.IDTarifa = " + IDTarifa
                   + " AND Presupuesto.IDPresupuesto <> " + IDPresupuesto
                   + " AND (PresupuestoVersion.Aceptado = 0) AND (PresupuestoVersionDetalle.Aceptada = 1) "
                   + " ORDER BY PresupuestoVersion.FechaEmision DESC";

                dt = Datos.Instancia().getDataTableCache(sql, 0, 5);

                respuesta += "<tr>";
                respuesta += "<td colspan='5' style='font-weight:bold; text-align:center;'>";
                respuesta += "Últimos precios NO aceptados del cliente";
                respuesta += "</td>";
                respuesta += "</tr>";

                if (dt.Rows.Count == 0)
                {
                    respuesta += "<tr>";
                    respuesta += "<td colspan='5' style='text-align:center;'>";
                    respuesta += "No existen";
                    respuesta += "</td>";
                    respuesta += "</tr>";
                }
                else
                {
                    respuesta += "<tr>";
                    respuesta += "<td style='width:100px; font-weight:bold; text-align:right;'>";
                    respuesta += "Precio";
                    respuesta += "</td>";
                    respuesta += "<td style='width:40px;'>";
                    respuesta += "</td>";
                    respuesta += "<td style='width:100px; font-weight:bold; text-align:left;'>";
                    respuesta += "F.Emisión";
                    respuesta += "</td>";
                    respuesta += "<td style='width:100px; font-weight:bold; text-align:left;'>";
                    respuesta += "Presupuesto";
                    respuesta += "</td>";
                    respuesta += "<td style='width:50px; font-weight:bold; text-align:left;'>";
                    respuesta += "Ir";
                    respuesta += "</td>";
                    respuesta += "</tr>";

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        respuesta += "<tr>";
                        respuesta += "<td style='text-align:right;'>";
                        respuesta += LCC.Negocio.Util.DarFormatoMonedaConDecimales((decimal)dt.Rows[i][0]);
                        respuesta += "</td>";
                        respuesta += "<td>";
                        respuesta += "</td>";
                        respuesta += "<td style='text-align:left;'>";
                        respuesta += String.Format("{0:dd/MM/yyyy}", dt.Rows[i][3]);
                        respuesta += "</td>";
                        respuesta += "<td style='text-align:left;'>";
                        respuesta += dt.Rows[i][1] + "/" + String.Format("{0:0000}", dt.Rows[i][2]);
                        respuesta += "</td>";
                        respuesta += "<td style='text-align:left;'>";
                        respuesta += "<a href='Presupuesto.aspx?id=" + dt.Rows[i][4] + "' target='_blank'><img id='aa' src='../img/ir.gif' style='border-width:0px;'></a>";
                        respuesta += "</td>";
                        respuesta += "</tr>";
                    }
                }
            }

            sql = "SELECT TOP 5 PresupuestoYTarifa.Precio, Presupuesto.Anyo, Presupuesto.Codigo, PresupuestoVersion.FechaEmision, Presupuesto.IDPresupuesto "
               + " FROM PresupuestoVersionDetalle INNER JOIN PresupuestoYTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT "
               + " INNER JOIN Presupuesto INNER JOIN PresupuestoVersion ON Presupuesto.IDPresupuesto = PresupuestoVersion.IDPresupuesto ON "
               + " PresupuestoVersionDetalle.IDPresupuestoVersion = PresupuestoVersion.IDPresupuestoVersion "
               + " WHERE " + (IDCliente > 0 ? "Presupuesto.IDCliente <> " + IDCliente.ToString() : "") + " AND PresupuestoYTarifa.IDTarifa = " + IDTarifa
               + " AND Presupuesto.IDPresupuesto <> " + IDPresupuesto
               + " AND (PresupuestoVersion.Aceptado = 0) AND (PresupuestoVersionDetalle.Aceptada = 1) "
               + " ORDER BY PresupuestoVersion.FechaEmision DESC";

            dt = Datos.Instancia().getDataTableCache(sql, 0, 5);

            respuesta += "<tr>";
            respuesta += "<td colspan='5' style='font-weight:bold; text-align:center;'>";
            respuesta += "Últimos precios NO aceptados de otros clientes";
            respuesta += "</td>";
            respuesta += "</tr>";
            if (dt.Rows.Count == 0)
            {
                respuesta += "<tr>";
                respuesta += "<td colspan='5' style='text-align:center;'>";
                respuesta += "No existen";
                respuesta += "</td>";
                respuesta += "</tr>";
            }
            else
            {
                respuesta += "<tr>";
                respuesta += "<td style='width:100px; font-weight:bold; text-align:right;'>";
                respuesta += "Precio";
                respuesta += "</td>";
                respuesta += "<td style='width:40px;'>";
                respuesta += "</td>";
                respuesta += "<td style='width:100px; font-weight:bold; text-align:left;'>";
                respuesta += "F.Emisión";
                respuesta += "</td>";
                respuesta += "<td style='width:100px; font-weight:bold; text-align:left;'>";
                respuesta += "Presupuesto";
                respuesta += "</td>";
                respuesta += "<td style='width:50px; font-weight:bold; text-align:left;'>";
                respuesta += "Ir";
                respuesta += "</td>";
                respuesta += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    respuesta += "<tr>";
                    respuesta += "<td style='text-align:right;'>";
                    respuesta += LCC.Negocio.Util.DarFormatoMonedaConDecimales((decimal)dt.Rows[i][0]);
                    respuesta += "</td>";
                    respuesta += "<td>";
                    respuesta += "</td>";
                    respuesta += "<td style='text-align:left;'>";
                    respuesta += String.Format("{0:dd/MM/yyyy}", dt.Rows[i][3]);
                    respuesta += "</td>";
                    respuesta += "<td style='text-align:left;'>";
                    respuesta += dt.Rows[i][1] + "/" + String.Format("{0:0000}", dt.Rows[i][2]);
                    respuesta += "</td>";
                    respuesta += "<td style='text-align:left;'>";
                    respuesta += "<a href='Presupuesto.aspx?id=" + dt.Rows[i][4] + "' target='_blank'><img id='aa' src='../img/ir.gif' style='border-width:0px;'></a>";
                    respuesta += "</td>";
                    respuesta += "</tr>";
                }
            }
        
            respuesta += "</table>";
            respuesta += "</div>";

			Datos.Instancia().CerrarConn();

            return respuesta;
        }

		private string Informacion()
		{
			string respuesta = "";
			int IDPresupuesto = ObjetoAsociado("Presupuesto").IDActual[0];

			if (ObjetoAsociado("Presupuesto").ObjetoAsociado("Cliente") != null)
			{
				int IDCliente = ObjetoAsociado("Presupuesto").ObjetoAsociado("Cliente").IDActual[0];
				int IDTarifa = ObjetoAsociado("Tarifa").IDActual[0];

                respuesta = InformacionEstatica(IDPresupuesto, IDCliente, IDTarifa);
			}
			return respuesta;
		}
		#endregion

		#region Métodos Públicos
		public override void Metodo(System.Web.UI.Page pag, string NombreMetodo)
		{
			if (NombreMetodo == "Restaurar")
			{
				if (this.PermisoModificar)
				{
					ObjetoAsociado("PresupuestoYTarifa")["Concepto"] = DBNull.Value;
				}

				return;
			}

			base.Metodo(pag, NombreMetodo);
		}

		#endregion

		#region Gestión de registro
		public override TipoBasico Tipo(string campo)
		{
			if (campo == "Codigo" || campo == "CodigoENAC")
			{
				return ObjetoAsociado("Tarifa").Tipo(campo);
			}
			else if (campo == "Concepto")
			{
				return ObjetoAsociado("PresupuestoYTarifa").Tipo(campo);
			}
            else if (campo == "Precio")
            {
                return TipoBasico.NUMERO;
            }
            else if (campo == "Total")
            {
                return TipoBasico.NUMERO;
            }
            else if (campo == "MarcarParaEliminar")
            {
                return TipoBasico.BIT;
            }
            else if (campo == "Material")
            {
                return TipoBasico.TEXTO;
            }
            else
            {
                return base.Tipo(campo);
            }
		}

		public override bool PermiteNulos(string campo)
		{
			if (campo == "Concepto" || campo == "Precio")
			{
				return false;
			}
			else
			{
				return base.PermiteNulos(campo);
			}
		}

		public override bool PermisoModificar
		{
			get
			{
				bool perm = base.PermisoModificar;

				if (perm)
				{
                    if (UsuarioActual.Permiso("BD", "PresupuestoVersion", "ModificarVersionAceptada"))
                    {
                        perm = true;
                    }
                    else
                    {
                        perm = MetodoPermitido("ModificarLineas");
                    }
				}

				return perm;
			}
		}

		public override bool PermisoEliminar
		{
			get
			{
				bool perm = base.PermisoEliminar;

				if (perm)
				{
                    perm = MetodoPermitido("EliminarLineasSeleccionadas");
				}

				return perm;
			}
		}

		public override bool SoloLectura(string campo)
        {
            if (campo == "Unidades" || campo == "DivisorUnidades" || campo == "Aceptada"
                || campo == "AceptadaGeo" || campo == "Imprimir")
            {
                if (UsuarioActual.Permiso("BD", "PresupuestoVersion", "ModificarVersionAceptada"))
                {
                    return false;
                }
                else
                {
                    return !Nuevo && !MetodoPermitido("ModificarLineas");
                }
            }

            if (campo == "Concepto" || campo == "Precio")
            {
                return !Nuevo && !MetodoPermitido("ModificarLineas");
            }
            if (campo == "Codigo" || campo == "CodigoENAC" || campo == "Total" || campo == "Material")
            {
                return true;
            }
            else if (campo == "MarcarParaEliminar")
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
			else if (campo == "Concepto")
			{
				return ObjetoAsociado("PresupuestoYTarifa").MaxLength(campo);
			}
			else
			{
				return base.MaxLength(campo);
			}
		}

        public double TotalPresupuestadoMenosVersionActual
        {
            get
            {
                string sql = "SELECT Sum(" + LCC.Negocio.Presupuestos.PresupuestoVersionDetalle.SQLCampoUnidades + ")"
                        + " FROM PresupuestoVersion INNER JOIN"
                        + " Presupuesto ON PresupuestoVersion.IDPresupuesto = Presupuesto.IDPresupuesto INNER JOIN"
                        + " PresupuestoVersionDetalle ON PresupuestoVersion.IDPresupuestoVersion = PresupuestoVersionDetalle.IDPresupuestoVersion INNER JOIN"
                        + " PresupuestoYTarifa INNER JOIN"
                        + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa ON PresupuestoVersionDetalle.IDPyT = PresupuestoYTarifa.IDPyT"
                        + " WHERE (PresupuestoVersionDetalle.IDPyT = " + this["IDPyT"].ToString() + ")"
                        + " AND (PresupuestoVersionDetalle.Aceptada = 1) AND "
                        + " (PresupuestoVersion.Aceptado = 1)";

                if (!Nuevo)
                {
                    sql += " AND PresupuestoVersionDetalle.IDPresupuestoVersion <> " + this["IDPresupuestoVersion"].ToString();
                }

                return Datos.Instancia().DameExpresionDouble(sql);
            }
        }

        public double TotalRealizado
        {
            get
            {
                string sql = "SELECT SUM(" + TrabajoDetalle.SQLCampoUnidades + ")"
                    + " FROM TrabajoDetalle INNER JOIN"
                    + " PresupuestoYTarifa ON TrabajoDetalle.IDPyT = PresupuestoYTarifa.IDPyT INNER JOIN"
                    + " Trabajo ON TrabajoDetalle.IDTrabajo = Trabajo.IDTrabajo INNER JOIN"
                    + " Tarifa ON PresupuestoYTarifa.IDTarifa = Tarifa.IDTarifa"
                    + " WHERE TrabajoDetalle.IDPyT = " + this["IDPyT"].ToString();

                return Datos.Instancia().DameExpresionDouble(sql);
            }
        }

        public double TotalUnidades
        {
            get
            {
                TrabajoDetalle.CorregirDivisorUnidades(this);

                if (this["DivisorUnidades"] is DBNull)
                {
                    return (double)this["Unidades"];
                }
                else
                {
                    return (double)this["Unidades"] / (double)this["DivisorUnidades"];
                }
            }
        }

        public override void Guardar(bool conPermisos)
        {
            if (!Nuevo && !Eliminar && Modificado)
            {
                if ((bool)ObjetoAsociado("PresupuestoVersion")["Aceptado"]
                    && (int)ObjetoAsociado("Presupuesto")["IDPresupuestoClase"] != 3)
                {
                    double realizado = TotalRealizado;
                    double presupuestado = TotalPresupuestadoMenosVersionActual + TotalUnidades;

                    if (realizado > presupuestado + 0.001)
                    {
                        throw new Exception("El total de unidades presupuestadas (" + (presupuestado).ToString("#,##0.00")
                            + ") para la tarifa " + this["Codigo"]
                            + " es menor que el total de unidades realizadas (" + realizado.ToString("#,##0.00") + ").");
                    }
                }

                if (fila.DR.HasVersion(DataRowVersion.Original))
                {
                    if ((int)fila.DR["IDPyT", DataRowVersion.Original] != (int)fila.DR["IDPyT"])
                    {
                        Datos.Instancia().executeSQL("UPDATE PresupuestoVersionDetalle Set IDPyT = " + fila.DR["IDPyT"].ToString()
                            + " WHERE IDPresupuestoVersion = " + this["IDPresupuestoVersion"]
                            + " AND IDPyT = " + fila.DR["IDPyT", DataRowVersion.Original].ToString());
                    }
                }
            }

            if (Eliminar)
            {
                if (!PermisoModificar)
                {
                    // La versión está aceptada pero el usuario tiene permiso para eliminar líneas.
                    // De primeras, a lo bruto, no se puede eliminar si el IDPyT está en uso.

                    if (Datos.Instancia().getDataTable("Select top 1 IDTrabajo From TrabajoDetalle WHERE IDPyT = " + this["IDPyT"]).Rows.Count > 0)
                    {
                        marcarParaEliminar = false;
                        Eliminar = false;

                        throw new Exception("No se puede eliminar una tarifa que está siendo usada en algún trabajo de la obra.");
                    }
                }
            }
            
            base.Guardar(conPermisos);
        }

		public override object this[string campo]
		{
			get
			{
				if (campo == "Codigo" || campo == "CodigoENAC" || campo == "IDTarifa")
				{
					return ObjetoAsociado("Tarifa")[campo];
				}
                else if (campo == "Material")
                {
                    return ObjetoAsociado("Tarifa").ObjetoAsociado("Material")["Nombre"];
                }
				else if (campo == "Concepto" || campo == "Precio")
				{
					return ObjetoAsociado("PresupuestoYTarifa")[campo];
				}
				else if (campo == "Total")
				{
                    if (this["Unidades"] is DBNull || ObjetoAsociado("PresupuestoYTarifa")["Precio"] is DBNull)
					{
						return (Decimal)0;
					}
					else
					{
                        LCC.Negocio.Trabajos.TrabajoDetalle.CorregirDivisorUnidades(this);

                        if (this["DivisorUnidades"] is DBNull)
                        {
                            return System.Convert.ToDecimal((double)this["Unidades"])
                                * ((Decimal)ObjetoAsociado("PresupuestoYTarifa")["Precio"]);
                        }
                        else
                        {
                            return System.Convert.ToDecimal((double)this["Unidades"])
                                * ((Decimal)ObjetoAsociado("PresupuestoYTarifa")["Precio"])
                                / System.Convert.ToDecimal((double)this["DivisorUnidades"]);
                        }
					}
				}
				else if (campo == "MarcarParaEliminar")
				{
					return marcarParaEliminar;
				}
				else
				{
					return base[campo];
				}
			}
			set
			{
				if (campo == "Concepto" || campo == "Precio")
				{
                    bool hayCambio = false;

                    if (campo == "Concepto")
                    {
                        if (ObjetoAsociado("PresupuestoYTarifa")[campo].ToString() != value.ToString())
                        {
                            hayCambio = true;
                        }
                    }

                    if (campo == "Precio")
                    {
                        if ((Decimal)ObjetoAsociado("PresupuestoYTarifa")[campo] != Lib.NoDecimalNulo(value))
                        {
                            hayCambio = true;
                        }
                    }

                    if (hayCambio)
                    {
                        object Concepto = ObjetoAsociado("PresupuestoYTarifa")["Concepto"].ToString();
                        object Precio = ObjetoAsociado("PresupuestoYTarifa")["Precio"].ToString();
                        int IDPyT = ((ColPresupuestoYTarifa)this.ObjetoAsociado("Presupuesto").Coleccion("ColPresupuestoYTarifa")).CrearOModificar((int)this["IDPyT"],
                            this["IDPresupuestoVersion"], (int)this["IDTarifa"]);

                        if ((int)base["IDPyT"] != IDPyT)
                        {
                            base["IDPyT"] = IDPyT;
                            if (campo == "Precio")
                            {
                                // Copiamos el otro.
                                ObjetoAsociado("PresupuestoYTarifa")["Concepto"] = Concepto;
                            }
                            if (campo == "Concepto")
                            {
                                // Copiamos el otro.
                                ObjetoAsociado("PresupuestoYTarifa")["Precio"] = Precio;
                            }
                        }
                    }

                    ObjetoAsociado("PresupuestoYTarifa")[campo] = value;
				}
				else if (campo == "MarcarParaEliminar")
				{
					marcarParaEliminar = (bool)value;
				}
				else
				{
					base[campo] = value;
				}
			}
		}

        public override bool CumpleFiltro(string nombre)
        {
            //if (nombre == "IDTitulo")
            //{
            //    object FiltroIDTitulo = ObjetoAsociado("PresupuestoVersion")["FiltroIDTitulo"];

            //    if (!(FiltroIDTitulo is DBNull))
            //    {
            //        return (int)FiltroIDTitulo == (int)ObjetoAsociado("Tarifa")["IDTitulo"];
            //    }
            //}

            if (nombre == "IDTituloMaterial")
            {
                object FiltroIDTitulo = ObjetoAsociado("PresupuestoVersion")["FiltroIDTitulo"];
                object FiltroIDMaterial = ObjetoAsociado("PresupuestoVersion")["FiltroIDMaterial"];

                if (!(FiltroIDTitulo is DBNull) && !(FiltroIDMaterial is DBNull))
                {
                    return (int)FiltroIDTitulo == (int)ObjetoAsociado("Tarifa")["IDTitulo"]
                        && (int)FiltroIDMaterial == (int)ObjetoAsociado("Tarifa")["IDMaterial"];
                }

                if (!(FiltroIDTitulo is DBNull))
                {
                    return (int)FiltroIDTitulo == (int)ObjetoAsociado("Tarifa")["IDTitulo"];
                }

                if (!(FiltroIDMaterial is DBNull))
                {
                    return (int)FiltroIDMaterial == (int)ObjetoAsociado("Tarifa")["IDMaterial"];
                }
            }

            return base.CumpleFiltro(nombre);
        }

        public override bool Correcto
        {
            get
            {
                bool correcto = base.Correcto;
                LCC.Negocio.Trabajos.TrabajoDetalle.CorregirDivisorUnidades(this);

                // Si estamos en la pantalla de Oportunidades
                // el Presupuesto asociado es de clase Oportunidad y no podemos pedirle Total.

                if (Padre != null && Padre.Padre != null && Padre.Padre.Padre != null
                    && Padre.Padre.Padre.Padre != null && Padre.Padre.Padre.Padre is Presupuesto)
                {
                    if ((Decimal)this["Total"] > 0 && this.Nuevo
                        && !MetodoPermitido("ModificarLineas")
                        && !UsuarioActual.Permiso("BD", "PresupuestoVersion", "ModificarVersionAceptada"))
                    {
                        correcto = false;
                        ErrorCampo = "Precio";
                        ErrorMensaje = "Las tarifas nuevas en versiones aceptadas deben ser a 0 €.";
                    }
                }
                
                return correcto;
            }
        }

        public override bool ConDecimales(string campo)
        {
            if (campo == "DivisorUnidades")
            {
                return false;
            }
            else if (campo == "Precio")
            {
                return ObjetoAsociado("PresupuestoYTarifa").ConDecimales(campo);
            }
			else if (campo == "Total")
			{
				return true;
			}
			else
			{
				return base.ConDecimales(campo);
			}
        }

		/// <summary>
		/// Establece los valores por defecto para un objeto nuevo.
		/// </summary>
		public override void ValoresPorDefecto()
		{
			this["Unidades"] = 1;
			this["Aceptada"] = true;
			this["AceptadaGeo"] = false;
			this["Imprimir"] = true;

			base.ValoresPorDefecto();
		}

		public override void ValoresPorDefecto(BaseNegocio origen)
		{
			if (origen is PresupuestoVersion)
			{
				this["IDPresupuestoVersion"] = origen["IDPresupuestoVersion"];
			}
			if (origen is PresupuestoYTarifa)
			{
				this["IDPyT"] = origen["IDPyT"];

                // Buscamos Unidades de presupuesto de una versión anterior.
                int versionActual = (int)ObjetoAsociado("PresupuestoVersion")["Version"];

                foreach (BaseNegocio b in ObjetoAsociado("PresupuestoVersion").ObjetoAsociado("Presupuesto").Coleccion("ColPresupuestoVersion"))
                {
                    if ((int)b["Version"] < versionActual)
                    {
                        foreach (BaseNegocio d in b.Coleccion("ColPresupuestoVersionDetalle"))
                        {
                            if ((int)d["IDTarifa"] == (int)this["IDTarifa"])
                            {
                                this["Unidades"] = d["Unidades"];
                                this["DivisorUnidades"] = d["DivisorUnidades"];
                            }
                        }
                    }
                }

				if (this.Nuevo && !MetodoPermitido("ModificarLineas"))
				{
					this["Precio"] = 0;
				}
			}

			base.ValoresPorDefecto(origen);
		}
		#endregion

		#region Permisos
		public override bool MetodoPermitido(string NombreMetodo)
		{
			return ObjetoAsociado("PresupuestoVersion").MetodoPermitido(NombreMetodo);
		}
		#endregion
	}

	class ColPresupuestoVersionDetalle : ColBaseNegocio
	{
		public ColPresupuestoVersionDetalle(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
			: base(Padre, CampoRelacionPadre, Sql)
		{
		}

		public override BaseNegocio CrearInstanciaHijo()
		{
			BaseNegocio b;

			b = new PresupuestoVersionDetalle();

			return b;
		}

		public Decimal CalcularTotal(bool SoloAceptadas, ref double Unidades)
		{
			Decimal total = 0;

			Unidades = 0;

			foreach (BaseNegocio b in this)
			{
				// Excluimos las eliminadas.
				if (!b.Eliminar && ((bool)b["Aceptada"] || !SoloAceptadas))
				{
					total += (Decimal) b["Total"];

					if ((Decimal)b["Total"] > 0)
					{
						if (b["DivisorUnidades"] is DBNull)
						{
							Unidades += (double)b["Unidades"];
						}
						else
						{
							Unidades += (double)b["Unidades"] / (double)b["DivisorUnidades"];
						}
					}
				}
			}

			return total;
		}

		public bool ContieneTarifa(int IDTarifa)
		{
			foreach (BaseNegocio b in this)
			{
				if (Lib.NoIntNulo(b.ObjetoAsociado("PresupuestoYTarifa")["IDTarifa"]) == IDTarifa)
				{
					return true;
				}
			}

			return false;
		}

		public void CrearLinea(int IDTarifa, ref int posicion)
		{
			if (!ContieneTarifa(IDTarifa))
			{
				ColPresupuestoYTarifa col = (ColPresupuestoYTarifa) Padre.ObjetoAsociado("Presupuesto").Coleccion("ColPresupuestoYTarifa");
				PresupuestoYTarifa pyt = col.BuscarCrear(IDTarifa);

				BaseNegocio b = CrearEnBlanco();
				b.ValoresPorDefecto(pyt);

				InsertarObjetoActivo(posicion);

				posicion++;
			}
		}
	}
}
