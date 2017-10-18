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
	public partial class presupuestos_ImprimirPresupuesto : RaizPageSinMenus
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//LCC.Informes.Presupuestos.Prueba rpt = new LCC.Informes.Presupuestos.Prueba();

			//rpt.Where = "IDPresupuesto = " + this.Request["id"];
			//rpt.Parameters["pTitulo"].Value = "Hola Mundo.";
			//try
			//{
			//    rpt.Run(false);
			//}
			//catch (DataDynamics.ActiveReports.ReportException eRunReport)
			//{
			//    // Failure running report, just report the error to the user:
			//    Response.Clear();
			//    Response.Write("<h1>Error running report:</h1>");
			//    Response.Write(eRunReport.ToString());
			//    return;
			//}

			//PROT.ControlesEspeciales.Utiles.RespuestaDocumento.Responde(this,
			//    "application/pdf",
			//    rpt.ExportarAPDF(), "Presupuesto.pdf");
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