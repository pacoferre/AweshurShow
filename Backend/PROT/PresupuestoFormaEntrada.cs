using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoFormaEntrada : BaseNegocio 
    {
        public PresupuestoFormaEntrada()
		{
            fila = new Fila("PresupuestoFormaEntrada");
            nombre = "Forma de Entrada de Presupuesto";
			sinPermisoLeer = true;
        }
    }
}
