using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoTipoPoliza : BaseNegocio 
    {
        public PresupuestoTipoPoliza()
		{
            fila = new Fila("PresupuestoTipoPoliza");
            nombre = "Tipo de Poliza";
			sinPermisoLeer = true;
        }
    }
}
