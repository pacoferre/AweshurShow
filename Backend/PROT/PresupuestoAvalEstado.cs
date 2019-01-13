using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoAvalEstado : BaseNegocio 
    {
        public PresupuestoAvalEstado()
		{
            fila = new Fila("PresupuestoAvalEstado");
            nombre = "Estado de Aval";
			sinPermisoLeer = true;
        }
    }
}
