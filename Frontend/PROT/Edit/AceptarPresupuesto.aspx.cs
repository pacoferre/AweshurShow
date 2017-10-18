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
	public partial class presupuestos_AceptarPresupuesto : RaizPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			GestionOnLoad(eR);
		}

		protected override void OnInit(EventArgs e)
		{
			this.Permiso = "Ver";
			this.PermisoClase = "NAV";
			this.PermisoSubClase = "PRES";
			base.OnInit(e);
		}
	}
}