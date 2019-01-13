using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    public class PresupuestoConcepto : BaseNegocio 
    {
        public PresupuestoConcepto()
		{
            fila = new Fila("PresupuestoConcepto");
            nombre = "Concepto de Presupuesto";
			sinPermisoLeer = true;
        }

        public override string SQLLista(string NombreLista)
        {
            if (sqlListaSencillo == "")
            {
                sqlListaSencillo = "Select IDPresupuestoConcepto AS ID, Nombre As NomCompleto"
                    + " FROM PresupuestoConcepto Where IDDivision = {ID} ORDER BY Nombre";
            }

            return base.SQLLista(NombreLista);
        }
    }
}
