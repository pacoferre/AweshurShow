using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace SaerFaxWeb.mant.entities
{
    public partial class search : PROT.ControlesEspeciales.RaizASCXConBusquedas
    {
        void bus_CambioEnFiltro(object sender, EventArgs e)
        {
            Parent.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            bus.CambioEnFiltro += new EventHandler(bus_CambioEnFiltro);
            if (!IsPostBack)
            {
                StringBuilder s = new StringBuilder(50);

                s.AppendLine("$('#" + hd1.ClientID + "').click(function () {");
                s.AppendLine("$(this).next().toggle('fast');");
                s.AppendLine("visibleSe = !visibleSe;");
                s.AppendLine("return false;");
                s.AppendLine("});");
                s.AppendLine("if (!visibleSe) {");
                s.AppendLine("$('#" + hd1.ClientID + "').next().hide(); }");
                s.AppendLine("else { $('#" + hd1.ClientID + "').next().show(); }");

                ((RaizPage) Page).pageLoad.AppendLine(s.ToString());

                ((RaizPage) Page).RegistraClientScriptBlock("vSe", "var visibleSe = false;", true);
            }
        }

        public override PROT.ControlesEspeciales.PanelBuscador PanelBuscador
        {
            get
            {
                return bus;
            }
        }

        protected override void OnPreRender(EventArgs e)
        {
            if (et.SelectedValue == "0")
            {
                n.Texto.Text = "";
                n.Guardar(bus.FiltroActual);
                trauto.Style[HtmlTextWriterStyle.Display] = "none";
            }
            else
            {
                trauto.Style[HtmlTextWriterStyle.Display] = "";
            }
            base.OnPreRender(e);
        }
    }
}