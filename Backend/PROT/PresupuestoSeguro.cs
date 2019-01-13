using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoSeguro : BaseNegocio 
    {
        public PresupuestoSeguro()
		{
            fila = new Fila("PresupuestoSeguro");
            nombre = "Compañia de Seguros";
			sinPermisoLeer = true;
        }
    }
}
