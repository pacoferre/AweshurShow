using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoEmpresaCompetencia : BaseNegocio 
    {
        public PresupuestoEmpresaCompetencia()
		{
            fila = new Fila("PresupuestoEmpresaCompetencia");
            nombre = "Empresa de la competencia";
			sinPermisoLeer = true;
        }
    }
}
