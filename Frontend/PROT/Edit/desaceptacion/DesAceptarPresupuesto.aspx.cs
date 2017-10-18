using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace LCC.WebGestion.presupuestos.desaceptacion
{
    public partial class DesAceptarPresupuesto : RaizPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GestionOnLoad(eR);
        }

        protected override void OnInit(EventArgs e)
        {
            this.PermisoClase = "MET";
            this.PermisoSubClase = "Presupuesto";
            this.Permiso = "DesAceptarPresupuesto";

            base.OnInit(e);
        }

        protected void cer_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("~/presupuestos/presupuesto.aspx?id=" + Request["id"], true);
        }
    }
}