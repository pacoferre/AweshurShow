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
	public partial class presupuestos_GenerarPresupuesto : RaizPageSinMenus
	{
		protected override void OnInit(EventArgs e)
		{
			this.Permiso = "Ver";
			this.PermisoClase = "NAV";
			this.PermisoSubClase = "PRES";
			base.OnInit(e);
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			//PROT.ControlesEspeciales.Utiles.RespuestaDocumento.Responde(this,
			//    PROT.ControlesEspeciales.Utiles.TipoDocumentoRespuesta.PDF,
			//    (new PROT.GestionArchivos.GenerarWord()).Generar(TextBox1.Text),
			//    "Presupuesto.pdf");
		}
	}
}