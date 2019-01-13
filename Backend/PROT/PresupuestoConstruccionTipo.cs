using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoConstruccionTipo : BaseNegocio
    {
        public PresupuestoConstruccionTipo()
        {
            fila = new Fila("PresupuestoConstruccionTipo");
            nombre = "Tipo de Construcción";
            sinPermisoLeer = true;
        }
    }
}
