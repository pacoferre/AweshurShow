using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoConstruccionGrupo : BaseNegocio
    {
        public PresupuestoConstruccionGrupo()
        {
            fila = new Fila("PresupuestoConstruccionGrupo");
            nombre = "Grupo de Construcción";
            sinPermisoLeer = true;
        }
    }
}
