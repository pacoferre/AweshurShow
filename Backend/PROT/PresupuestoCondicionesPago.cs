using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoCondicionesPago : BaseNegocio 
    {
        public PresupuestoCondicionesPago()
		{
            fila = new Fila("PresupuestoCondicionesPago");
            nombre = "Condición de Pago";
			sinPermisoLeer = true;
        }
    }
}
