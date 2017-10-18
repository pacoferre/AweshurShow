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

namespace LCC.WebGestion.presupuestos
{
	public partial class presupuestos_Totales : PROT.ControlesEspeciales.RaizASCX
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		public override void EstablecerEstado(bool activo, PROT.NegocioGeneral.BaseNegocio t)
		{
			Leer(t);

			base.EstablecerEstado(activo, t);
		}
	}
}