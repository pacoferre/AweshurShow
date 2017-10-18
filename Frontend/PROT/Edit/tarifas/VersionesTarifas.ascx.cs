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
    public partial class VersionesTarifas : PROT.ControlesEspeciales.RaizASCX
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public PROT.ControlesEspeciales.GridEnEditor Grid
        {
            get
            {
                return g;
            }
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            foreach (DataGridItem dic in g.Items)
            {
                string IDPyT = dic.Cells[0].Text;

                PROT.ControlesEspeciales.Numero uni = ((PROT.ControlesEspeciales.Numero)dic.Controls[3].Controls[1]);
                PROT.ControlesEspeciales.Numero div = ((PROT.ControlesEspeciales.Numero)dic.Controls[4].Controls[1]);

                uni.Texto.Attributes.Add("onchange", "{$get('" + uni.Texto.ClientID + "').style.backgroundColor='#FFAE5E'}");
                div.Texto.Attributes.Add("onchange", "{$get('" + div.Texto.ClientID + "').style.backgroundColor='#FFAE5E'}");
            }
        }
    }
}