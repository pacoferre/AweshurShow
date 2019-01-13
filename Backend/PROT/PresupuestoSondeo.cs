using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoSondeo : BaseNegocio
    {
        public PresupuestoSondeo()
        {
            fila = new Fila("PresupuestoSondeo");
            nombre = "Presupuesto Sondeo";
            sinPermisoLeer = true;
        }
    }

    class ColPresupuestoSondeo : ColBaseNegocio
    {
        public ColPresupuestoSondeo(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
            : base(Padre, CampoRelacionPadre, Sql)
        {

        }

        public override BaseNegocio CrearInstanciaHijo()
        {
            BaseNegocio b;

            b = new PresupuestoSondeo();

            return b;
        }
    }
}
