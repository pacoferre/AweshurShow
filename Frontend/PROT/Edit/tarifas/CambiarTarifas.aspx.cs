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
    public partial class CambiarTarifas : RaizPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NombreObjetoNegocio = "PresupuestoYTarifa";
            GestionOnLoad(eR);
        }
        
        protected override void OnInit(EventArgs e)
		{
            this.PermisoClase = "MET";
            this.PermisoSubClase = "Tarifas";
            this.Permiso = "ModificarTarifas";

            base.OnInit(e);
		}

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            con.Attributes.Add("onchange", "{$get('" + con.ClientID + "').style.backgroundColor='#FFAE5E'}");
            pr.Texto.Attributes.Add("onchange", "{$get('" + pr.Texto.ClientID + "').style.backgroundColor='#FFAE5E'}");
        }

        protected void btns_Click(object sender, EventArgs e)
        {
            PermitirRedirigir = true;

            string Mensaje = "";

            ObjetoNegocio["CambiarIDPyT"] = ObjetoNegocio["IDPyT"];
            ObjetoNegocio["CambiarConcepto"] = con.Text;
            ObjetoNegocio["CambiarPrecio"] = PROT.NegocioGeneral.Lib.NoDecimalNulo(pr.Texto.Text);

            try
            {
                // Esto es como matar a un padre...
                // Código de base de datos en un aspx...

                PROT.AccesoDatos.Datos.Instancia().BeginTransaction();

                ((LCC.Negocio.Presupuestos.PresupuestoYTarifa)ObjetoNegocio).MensajeMetodosModificar = "";

                ((LCC.Negocio.Presupuestos.PresupuestoYTarifa)ObjetoNegocio).Metodo(Page, "ModificarConceptoPrecioTarifas");

                Mensaje += ((LCC.Negocio.Presupuestos.PresupuestoYTarifa)ObjetoNegocio).MensajeMetodosModificar;

                foreach (DataGridItem dic in vtar.Grid.Items)
                {
                    ((LCC.Negocio.Presupuestos.PresupuestoYTarifa)ObjetoNegocio).MensajeMetodosModificar = "";
                    ObjetoNegocio["CambiarIDPresupuestoVersion"] = Int32.Parse(dic.Cells[0].Text);
                    ObjetoNegocio["CambiarUnidades"] = double.Parse(((PROT.ControlesEspeciales.Numero)dic.Controls[3].Controls[1]).Texto.Text);
                    ObjetoNegocio["CambiarDivisor"] = ((PROT.ControlesEspeciales.Numero)dic.Controls[4].Controls[1]).Texto.Text == "" ? null : ((PROT.ControlesEspeciales.Numero)dic.Controls[4].Controls[1]).Texto.Text;

                    ((LCC.Negocio.Presupuestos.PresupuestoYTarifa)ObjetoNegocio).Metodo(Page, "ModificarUnidadesTarifas");

                    Mensaje += ((LCC.Negocio.Presupuestos.PresupuestoYTarifa)ObjetoNegocio).MensajeMetodosModificar;
                }

                // Actualizar Presupuesto.
                ((LCC.Negocio.Presupuestos.PresupuestoYTarifa)ObjetoNegocio).Metodo(Page, "DespuesDeModificarTarifas");

                PROT.AccesoDatos.Datos.Instancia().CommitTransaction();
            }
            catch (Exception ex)
            {
                PROT.AccesoDatos.Datos.Instancia().RollBackTransaction();

                Mensaje += "ERROR: " + ex.Message + PROT.AccesoDatos.Datos.CRLF;
            }

            ((RaizPage)Page).Mensaje = Mensaje;
            RedirigirA = "~/presupuestos/presupuesto.aspx?id=" + ObjetoNegocio.ObjetoAsociado("Presupuesto").IDActual[0].ToString();
            //this.Response.Redirect("~/presupuestos/presupuesto.aspx?id=" + ObjetoNegocio.ObjetoAsociado("Presupuesto").IDActual[0].ToString(), true);
        }

        protected void cer_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("~/presupuestos/presupuesto.aspx?id=" + ObjetoNegocio.ObjetoAsociado("Presupuesto").IDActual[0].ToString(), true);
        }
    }
}
