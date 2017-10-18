using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;
using LCC.Negocio;
using LCC.Negocio.Clientes;
using LCC.Negocio.Obras;
using LCC.Negocio.Tablas;
using LCC.Negocio.Bases;
using LCC.Negocio.Tareas;
using LCC.Negocio.Divisiones;
using PROT.GestionArchivos;

namespace LCC.Negocio.Presupuestos
{
    public class Presupuesto : BasePresupuesto
    {
        public static int IDPyTModificar = 0;

        static string sql = "";
        /// <summary>
        /// Creación del objeto
        /// </summary>
        public Presupuesto() : base()
        {
            genero = "o";
            nombre = "Presupuesto";
		}

		#region Objetos Asociados
		public override BaseNegocio ObjetoAsociado(string Nombre)
		{
			return base.ObjetoAsociado(Nombre);
		}
		#endregion

		#region Gestión de registro
		public override void LeerObjetosAsociados()
        {
            if (!Nuevo)
            {
                if ((int)this["IDPresupuestoTipoBase"] == 2)
                {
                    throw new Exception("Error, una Oportunidad no puede ser tratada como Presupuesto.");
                }
            }
			genero = "o";
			nombre = "Presupuesto";

			//if ((int)this["IDPresupuestoTipoBase"] == 1)
			//{
			//    genero = "o";
			//    nombre = "Presupuesto";
			//}
			//else if ((int)this["IDPresupuestoTipoBase"] == 3)
			//{
			//    genero = "a";
			//    nombre = "Ampliación";
			//}
			//else
			//{
			//    genero = "a";
			//    nombre = "Modificación";
			//}

            base.LeerObjetosAsociados();
        }

        /// <summary>
        /// Guarda el objeto
        /// </summary>
        /// <param name="conPermisos">true para que use los permisos de cliente, false para no</param>
        public override void Guardar(bool conPermisos)
        {
            if ((int)this["IDPresupuestoTipoBase"] == 2)
            {
                throw new Exception("Error, una Oportunidad no puede ser tratada como Presupuesto.");
            }

            if (Nuevo)
            {
                PonerCodigoPresupuesto();
            }
            else
            {
                if (!(this["IDObra"] is DBNull))
                {
                    ObjetoAsociado("Obra").Leer();
                    if (this["NombreObra"].ToString() != ObjetoAsociado("Obra")["NombreObra"].ToString())
                    {
                        this["NombreObra"] = ObjetoAsociado("Obra")["NombreObra"];
                    }
                }
            }

            base.Guardar(conPermisos);
        }

        /// <summary>
        /// Establece los valores por defecto para un objeto nuevo.
        /// </summary>
        public override void ValoresPorDefecto()
        {
            base.ValoresPorDefecto();
            this["IDPresupuestoTipoBase"] = 1;
        }
        #endregion

        #region Filtro
        public override string SQLLista(string NombreLista)
        {
            if (NombreLista == "Favoritos")
            {
                return "SELECT Presupuesto.IDPresupuesto AS ID, DivisionSucursal.Nombre + ' - ' + PresupuestoTipoBase.Clave +"
					+ " ' - ' + LTRIM(STR(Presupuesto.Anyo)) + '/' + Presupuesto.Codigo + ' -> ' +"
					+ " Presupuesto.NombreObra AS NomCompleto, '{1}' AS Ord"
                    + " FROM Presupuesto INNER JOIN"
					+ " PresupuestoTipoBase ON Presupuesto.IDPresupuestoTipoBase = PresupuestoTipoBase.IDPresupuestoTipoBase"
					+ " LEFT OUTER JOIN DivisionSucursal ON Presupuesto.IDDivisionSucursal = DivisionSucursal.IDDivisionSucursal"
                    + " WHERE IDPresupuesto IN ({0})";
            }
            return base.SQLLista(NombreLista);
        }

		public override string SQLWhere(PROT.NegocioGeneral.Filtro filtro)
		{
			string where = base.SQLWhere(filtro);

			Datos.AndWhere(ref where, "(Presupuesto.IDPresupuestoTipoBase = 1)");

			return where;
		}
		#endregion

        #region Vistas
        public override DataView Vista(string NombreVista)
        {
            if (NombreVista == "TrabajosPresupuesto")
            {
                sql = "SELECT IDTrabajo, Codigo, CASE WHEN Trabajo.IDFactura IS NULL THEN "
                    + " 'No' ELSE 'Si' END AS Facturado FROM Trabajo "
                    + " WHERE IDObra = " + this["IDObra"];
                
                return Datos.Instancia().getDataView(sql);
            }

            if (NombreVista == "FacturasPresupuesto")
            {
                sql = "SELECT IDFactura, LTRIM(STR(Factura.Anyo)) + '/' + LTRIM(STR(Factura.Numero)) AS Numero, "
                    + " FechaFactura FROM Factura "
                    + " WHERE IDObra = " + this["IDObra"];
                
                return Datos.Instancia().getDataView(sql);
            }

            if (NombreVista == "FacturasTarifasPresupuesto")
            {
                // ¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡ Pero qué es esto !!!!!!!!!!!!!!!!!!!!!
                //sql = "SELECT Factura.IDFactura, LTRIM(STR(Factura.Anyo)) + '/' + LTRIM(STR(Factura.Numero)) AS Numero, FechaFactura "
                //    + " FROM TrabajoDetalle INNER JOIN "
                //    + " Trabajo ON TrabajoDetalle.IDTrabajo = Trabajo.IDTrabajo INNER JOIN "
                //    + " Factura ON Trabajo.IDFactura = Factura.IDFactura "
                //    + " WHERE Factura.IDObra = " + this["IDObra"] + " AND IDPYT = " + IDPyTModificar.ToString();

                sql = "SELECT Factura.IDFactura, LTRIM(STR(Factura.Anyo)) + '/' + LTRIM(STR(Factura.Numero)) AS Numero, FechaFactura "
                    + " FROM Factura INNER JOIN"
                    + " FacturaDetalle ON Factura.IDFactura = FacturaDetalle.IDFactura"
                    + " WHERE Factura.IDObra = " + this["IDObra"]
                    + " AND FacturaDetalle.IDPYT = " + IDPyTModificar.ToString();

                return Datos.Instancia().getDataView(sql);
            }
           
            return base.Vista(NombreVista);
        }

        #endregion

    }
}
