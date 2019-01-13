using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoConstruccion : PROT.NegocioGeneral.Especializadas.NAMActivo
    {
        public PresupuestoConstruccion()
        {
            fila = new Fila("PresupuestoConstruccion");
            nombre = "Construcción";
            sinPermisoLeer = true;

            campoNTablaExterna = "IDPresupuesto0";
            campoN = "IDPresupuesto";
            campoMTablaExterna = "IDPresupuestoConstruccionTipo0";
            campoM = "IDPresupuestoConstruccionTipo";

//            opcCampoOtros = new string[2] { "Importe", "Descripcion" };
        }

        public override bool CumpleFiltro(string nombre)
        {
            if (Nombre != "")
            {
                return ((int)this["IDPresupuestoConstruccionGrupo"]) == Int32.Parse(nombre);
            }
            return base.CumpleFiltro(nombre);
        }
    }

    public class ColPresupuestoConstruccion : ColBaseNegocio
    {
        public ColPresupuestoConstruccion(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
            : base(Padre, CampoRelacionPadre, Sql)
        {
            campoRelacionHijo = "IDPresupuesto";
            siempreNecesitaGuardar = false;
        }

        public override BaseNegocio CrearInstanciaHijo()
        {
            BaseNegocio b;

            b = new PresupuestoConstruccion();

            return b;
        }
    }
}
