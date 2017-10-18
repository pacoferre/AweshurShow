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

namespace LCC.WebGestion.presupuestos.configurar
{
    public partial class ConfTipoPresupuesto : PROT.ControlesEspeciales.RaizASCX
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //chca.Attributes.Add("onclick", "ActivaDesactiva('" + ncal.ClientID + "', '" + divi.ClientID + "', '"
            //    + ejcal.ClientID + "', '" + acta.ClientID + "', '" + deca.ClientID + "', " + chca.ClientID + ");");
        }

        protected override void OnPreRender(EventArgs e)
        {
            mtls.Attributes.Add("onclick", "if ($get('" + mtls.ClientID + "').checked)"
                  + "{$get('" + mtlc.ClientID + "').checked=true}"
                  + "else{$get('" + mtlc.ClientID + "').checked=false}");

            mtlc.Attributes.Add("onclick", "if ($get('" + mtlc.ClientID + "').checked)"
                  + "{$get('" + mtls.ClientID + "').checked=true}"
                  + "else{$get('" + mtls.ClientID + "').checked=false}");


            son.Attributes.Add("onclick", "if ($get('" + son.ClientID + "').checked)"
                  + "{$get('" + psonde.ClientID + "').style.visibility=''}"
                  + "else{$get('" + psonde.ClientID + "').style.visibility='hidden'}");

            if (!son.Checked)
            {
                psonde.Style[HtmlTextWriterStyle.Visibility] = "hidden";
            }
            else
            {
                psonde.Style[HtmlTextWriterStyle.Visibility] = "";
            }
            
            chca.Attributes.Add("onclick", "if ($get('" + chca.ClientID + "').checked)"
                   + "{$get('" + pcal.ClientID + "').style.visibility=''}"
                   + "else{$get('" + pcal.ClientID + "').style.visibility='hidden'}");

            if (!chca.Checked)
            {
                pcal.Style[HtmlTextWriterStyle.Visibility] = "hidden";
            }
            else
            {
                pcal.Style[HtmlTextWriterStyle.Visibility] = "";
            }

            chpe.Attributes.Add("onclick", "if ($get('" + chpe.ClientID + "').checked)"
                   + "{$get('" + ppen.ClientID + "').style.visibility=''}"
                   + "else{$get('" + ppen.ClientID + "').style.visibility='hidden'}");

            if (!chpe.Checked)
            {
                ppen.Style[HtmlTextWriterStyle.Visibility] = "hidden";
            }
            else
            {
                ppen.Style[HtmlTextWriterStyle.Visibility] = "";
            }

            if (tcla.SelectedItem.Value == "0")
            {
                ped.Visible = true;
                poc.Visible = false;
            }
            else
            {
                poc.Visible = true;
                ped.Visible = false;
            }
           
            base.OnPreRender(e);
        }
    }
}