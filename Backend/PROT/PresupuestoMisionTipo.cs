using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoMisionTipo : BaseNegocio 
    {
        private static string sqlLista1 = "";

        public PresupuestoMisionTipo()
		{
            fila = new Fila("PresupuestoMisionTipo");
            nombre = "Tipo de Misión";
			sinPermisoLeer = true;
        }

        public override string SQLLista(string NombreLista)
        {
            if (NombreLista == "ClavesMision")
            {
                if (sqlLista1 == "")
                {
                    sqlLista1 = "Select IDPresupuestoMisionTipo, Clave"
                        + " FROM PresupuestoMisionTipo";
                }

                return sqlLista1;
            }

            return base.SQLLista(NombreLista);
        }
    }
}
