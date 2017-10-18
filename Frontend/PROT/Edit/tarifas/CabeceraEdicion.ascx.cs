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
using LCC.Negocio.Presupuestos;

namespace LCC.WebGestion.presupuestos.tarifas
{
	public partial class presupuestos_tarifas_CabeceraEdicion : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			n.Visible = !((bool)((LCC.WebGestion.RaizPage)Page).ObjetoNegocio.ObjetoAsociado("Division")["_SinENACEnTarifas"]);
			g.Visible = !((bool)((LCC.WebGestion.RaizPage)Page).ObjetoNegocio.ObjetoAsociado("Division")["_SinGeotecniaEnTarifas"]);
		}
	}
}