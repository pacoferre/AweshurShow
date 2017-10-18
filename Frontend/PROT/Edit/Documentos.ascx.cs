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
	public partial class presupuestos_Documentos : PROT.ControlesEspeciales.RaizASCX
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//r.ItemStyle.s

			////float:left; width:150px; font-weight:bold
			//r.Style.Add("", "");
			//r.Style.Add("", "");
			//r.Style.Add("", "");
		}

		protected override void OnPreRender(EventArgs e)
		{
			p.Visible = (r.Items.Count > 0);
			base.OnPreRender(e);
		}
	}
}