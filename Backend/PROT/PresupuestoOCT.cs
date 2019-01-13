using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoOCT : BaseNegocio 
    {
        public PresupuestoOCT()
		{
            fila = new Fila("PresupuestoOCT");
            nombre = "Empresa OCT";
			sinPermisoLeer = true;
        }
    }
}
