using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoColaborador : BaseNegocio 
    {
        public PresupuestoColaborador()
		{
            fila = new Fila("PresupuestoColaborador");
            nombre = "Colaborador de Presupuestos";
			sinPermisoLeer = true;
        }
    }
}
