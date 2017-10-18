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

namespace LCC.WebGestion.presupuestos.tarifas
{
    public partial class AgregarTarifasExcel : RaizPageSinMenus
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GestionOnLoad(eR);
        }

        public AgregarTarifasExcel()
        {
            esIFrame = true; // Para que no lea de nuevo el registro al cargar si no está modificado.
            usarAtlas = true;
            usarUpdatePanel = true;
            usarActualizando = true;
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