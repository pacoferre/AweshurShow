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
	public partial class presupuestos_HojaDeDatosObra : PROT.ControlesEspeciales.RaizASCX
	{
		protected override void OnPreRender(EventArgs e)
		{
			if (objeto != null)
			{
				ObAcep.Visible = (bool)objeto["Aceptado"];
				ObNoAcep.Visible = !ObAcep.Visible;
			}

			base.OnPreRender(e);
		}
	}
}