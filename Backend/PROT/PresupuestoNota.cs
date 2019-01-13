using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;
using LCC.Negocio.Tablas;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoNota : LCC.Negocio.Bases.Nota 
    {
        public PresupuestoNota()
		{
            fila = new Fila("PresupuestoNota");
            genero = "a";
            nombre = "Nota";
			sinPermisoLeer = true;
        }
    }

    public class ColPresupuestoNota : LCC.Negocio.Bases.ColNota
    {
        public ColPresupuestoNota(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
            : base(Padre, CampoRelacionPadre, Sql)
        {
        }

        public override BaseNegocio CrearInstanciaHijo()
        {
            BaseNegocio b;

            b = new PresupuestoNota();

            return b;
        }
    }
}
