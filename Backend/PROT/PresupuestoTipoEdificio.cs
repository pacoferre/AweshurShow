using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoTipoEdificio : BaseNegocio 
    {
        public PresupuestoTipoEdificio()
		{
            fila = new Fila("PresupuestoTipoEdificio");
            nombre = "Tipo de Edificio";
			sinPermisoLeer = true;
        }
    }
}
