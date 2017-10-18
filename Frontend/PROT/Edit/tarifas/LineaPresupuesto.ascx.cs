using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace LCC.WebGestion.presupuestos.tarifas
{
	public partial class presupuestos_tarifas_LineaPresupuesto : PROT.ControlesEspeciales.RaizASCX
	{
		protected void Page_Load(object sender, EventArgs ev)
		{
		}

        //private void PermisosModificacion(PROT.NegocioGeneral.BaseNegocio t)
        //{
        //    bool permisoModificar = t.MetodoPermitido("ModificarLineas");

        //    //r.Enabled = permisoModificar;  comprobar.


        //    //a.Enabled = permisoModificar;
        //    //g.Enabled = permisoModificar;
        //    //i.Enabled = permisoModificar;
        //}

		public override bool Leer(PROT.NegocioGeneral.BaseNegocio t)
		{
			it.Clave = t.Propiedad("ClaveInfo");

			return base.Leer(t);
		}

        //public override bool Guardar(PROT.NegocioGeneral.BaseNegocio t)
        //{
        //    PermisosModificacion(t);

        //    return base.Guardar(t);
        //}

		public override void EstablecerEstado(bool activo, PROT.NegocioGeneral.BaseNegocio tv)
		{
			e.Visible = !((bool)objeto.ObjetoAsociado("Division")["_SinENACEnTarifas"]);
			g.Visible = !((bool)objeto.ObjetoAsociado("Division")["_SinGeotecniaEnTarifas"]);

            base.EstablecerEstado(activo, tv);

//			PermisosModificacion(t);
		}
	}
}