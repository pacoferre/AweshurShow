using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoColaboradorNaM : BaseNegocio 
    {
        public PresupuestoColaboradorNaM()
		{
            fila = new Fila("PresupuestoColaboradorNaM");
            nombre = "Colaborador";
			sinPermisoLeer = true;
        }

        public override object this[string campo]
        {
            get
            {
                if (campo == "Nombre")
                {
                    if (base["IDPresupuestoColaborador"] is DBNull)
                    {
                        return String.Empty;
                    }
                    else
                    {
                        return ProveedorListas.TextoDeCombo("PresupuestoColaborador", (int)base["IDPresupuestoColaborador"]);
                    }
                }
                else
                {
                    return base[campo];
                }
            }
            set
            {
                if (campo != "Nombre")
                {
                    base[campo] = value;
                }
                // Si es el Nombre. nada que hacer.
            }
        }
    }

    public class ColPresupuestoColaboradorNaM : ColBaseNegocio
    {
        public ColPresupuestoColaboradorNaM(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
            : base(Padre, CampoRelacionPadre, Sql)
        {
        }

        public override BaseNegocio CrearInstanciaHijo()
        {
            BaseNegocio b;

            b = new PresupuestoColaboradorNaM();

            return b;
        }
    }
}
