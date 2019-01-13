using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoMisionGrupo : BaseNegocio 
    {
        public PresupuestoMisionGrupo()
		{
            fila = new Fila("PresupuestoMisionGrupo");
            nombre = "Grupo de Misión";
			sinPermisoLeer = true;
        }
    }
}
