using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoContactoTipo : BaseNegocio 
    {
        public PresupuestoContactoTipo()
		{
            fila = new Fila("PresupuestoContactoTipo");
            nombre = "Tipo de Contacto en Presupuesto";
			sinPermisoLeer = true;
        }
    }
}
