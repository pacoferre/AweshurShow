using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoClase : BaseNegocio 
    {
        public PresupuestoClase()
		{
            fila = new Fila("PresupuestoClase");
            nombre = "Clase de Presupuesto";
			sinPermisoLeer = true;
        }
    }
}
