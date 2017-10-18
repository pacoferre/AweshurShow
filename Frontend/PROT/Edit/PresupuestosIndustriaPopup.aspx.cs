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

namespace LCC.WebGestion.presupuestos
{
    public partial class PresupuestosIndustriaPopup : RaizPageSinMenus
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Titulo = "PresupuestoVisita";
            NombreObjetoNegocio = "PresupuestoVisita";
            GestionOnLoad(null, lst, null, true);
        }

        protected override void OnInit(EventArgs e)
        {
            this.Permiso = "Ver";
            this.PermisoClase = "NAV";
            this.PermisoSubClase = "GES";
            base.OnInit(e);
        }
    }
}
