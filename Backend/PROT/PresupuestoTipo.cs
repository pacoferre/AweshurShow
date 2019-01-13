using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    public class PresupuestoTipo : BaseNegocio 
    {
        public PresupuestoTipo()
		{
            fila = new Fila("PresupuestoTipo");
            nombre = "Tipo de Presupuesto";
			sinPermisoLeer = true;
        }

        public override string SQLLista(string NombreLista)
        {
            if (this.sqlListaSencillo == "")
            {
                sqlListaSencillo = "SELECT PresupuestoTipo.IDPresupuestoTipo AS ID, PresupuestoTipo.Nombre AS NomCompleto"
                    + " FROM PresupuestoTipo"
                    + " WHERE PresupuestoTipo.IDDivision = {ID}"
                    + " ORDER BY NomCompleto";
            }
            return base.SQLLista(NombreLista);
        }
    }
}
