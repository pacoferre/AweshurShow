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
	public partial class presupuestos_DatosOfertaPorc : PROT.ControlesEspeciales.RaizASCX
	{
		protected void pm_SelectedIndexChanged(object sender, EventArgs e)
		{
			pm.Guardar(objeto);
			((PROT.ControlesEspeciales.RaizASCX)this.m1).Leer(this.objeto);
		}
	}
}