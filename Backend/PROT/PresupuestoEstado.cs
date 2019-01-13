using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    public class PresupuestoEstado : BaseNegocio 
    {
        public PresupuestoEstado()
		{
            fila = new Fila("PresupuestoEstado");
            nombre = "Estado de Presupuesto";
			sinPermisoLeer = true;
        }

        public override string SQLLista(string NombreLista)
        {
            if (sqlListaSencillo == "")
            {
                sqlListaSencillo = "SELECT IDPresupuestoEstado AS ID, Nombre AS NomCompleto"
                    + " FROM PresupuestoEstado"
                    + " ORDER BY NomCompleto";
            }

            return base.SQLLista(NombreLista);
        }

        public static DataTable PresupuestoVisita()
        {
            DataTable dt;

            string sql = "SELECT Presupuesto.IDPresupuesto, CONVERT(varchar(4), Presupuesto.Anyo) + '/' + Presupuesto.Codigo AS Codigo, Presupuesto.NombreObra, Presupuesto.FechaEmision, "
                       + " Presupuesto.Observaciones, TituloReglamento.Clave AS TituloReglamento "
                       + " FROM Presupuesto INNER JOIN TituloReglamento ON Presupuesto.IDTituloReglamento = TituloReglamento.IDTituloReglamento INNER JOIN "
                       + " DivisionSucursal ON Presupuesto.IDDivisionSucursal = DivisionSucursal.IDDivisionSucursal "
                       + " WHERE (Presupuesto.IDPresupuestoEstado = 3) AND (DivisionSucursal.IDDivision = 4) AND (Presupuesto.IDTituloReglamento IN (1, 2, 6)) "
                       + " AND (DATEDIFF(month, Presupuesto.FechaEmision, GETDATE()) = CASE WHEN Presupuesto.IDTituloreglamento = 1 THEN 34 ELSE CASE WHEN Presupuesto.IDTituloreglamento = 2 THEN 58 ELSE "
                       + " CASE WHEN Presupuesto.IDTituloreglamento = 6 THEN (12 * AnyoReglamento) - 2 END END END)";

            dt = Datos.Instancia().getDataTable(sql);

            return dt;
        }
    }
}
