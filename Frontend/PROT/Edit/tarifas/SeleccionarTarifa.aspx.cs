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

namespace LCC.WebGestion.presupuestos.tarifas
{
    public partial class presupuestos_tarifas_SeleccionarTarifa_ASPX : RaizPageSinMenus
	{
        public presupuestos_tarifas_SeleccionarTarifa_ASPX()
            : base()
        {
            esIFrame = true; // Para que no lea de nuevo el registro al cargar si no está modificado.
            usarAtlas = true;
            usarUpdatePanel = true;
            usarActualizando = true;
        }

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