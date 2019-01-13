using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoTipoBase : BaseNegocio 
    {
        public PresupuestoTipoBase()
		{
            fila = new Fila("PresupuestoTipoBase");
            nombre = "Tipo Base de Presupuesto";
			sinPermisoLeer = true;
        }

        public override string SQLLista(string NombreLista)
        {
            if (sqlListaSencillo == "")
            {
                sqlListaSencillo = "SELECT IDPresupuestoTipoBase AS ID, Nombre AS NomCompleto"
                    + " FROM PresupuestoTipoBase"
                    + " WHERE (IDPresupuestoTipoBase <> 2)";
            }

            return base.SQLLista(NombreLista);
        }
    }
}
