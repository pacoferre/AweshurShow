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
using LCC.Negocio.Presupuestos;

namespace LCC.WebGestion.presupuestos.tarifas
{
	public partial class presupuestos_DetallePresupuesto : PROT.ControlesEspeciales.RaizASCX
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            /*
             
        <tr>
            <td>
                Titulo: <fil:PresTituloTarifaObjeto id="t" runat="server" />
            </td>
            <td>
                Material: <fil:PresMaterial id="m" runat="server"></fil:PresMaterial>
            </td>
        </tr>
             
             */

        }

        public override bool Leer(PROT.NegocioGeneral.BaseNegocio t)
        {
            if (t.Coleccion("ColPresupuestoVersionDetalle").Count > 80)
            {
                g1.AllowPaging = true;
            }
            else
            {
                g1.AllowPaging = false;
            }

            return base.Leer(t);
        }

        protected override void OnPreRender(EventArgs e)
        {
            if (objeto != null)
            {
                bnag.Visible = !(bool)objeto["Aceptado"];
            }
            
            base.OnPreRender(e);
        }

        public override void EstablecerEstado(bool activo, PROT.NegocioGeneral.BaseNegocio tv)
        {
            base.EstablecerEstado(activo, tv);

            if (!((PresupuestoVersion)tv).MetodoPermitido("ModificarLineas")
                && ((PresupuestoVersion)tv).MetodoPermitido("EliminarLineasSeleccionadas"))
            {
                foreach (DataGridItem itm in g1.Items)
                {
                    LCC.ControlesLCCGestion.bases.Check ch = (LCC.ControlesLCCGestion.bases.Check)itm.Cells[1].Controls[1];
                    LCC.ControlesLCCGestion.bases.BotonSimple bel = (LCC.ControlesLCCGestion.bases.BotonSimple)itm.Cells[3].Controls[1];

                    ch.Enabled = true;
                    bel.Enabled = true;
                }
            }
        }
	}
}
//<prot:Editor id="eI" runat="server" Width="100%" CssClass="especial" PermiteModificar="True" PermiteEliminar="False" PermiteAltas="True" NombreObjetoNegocio="Contacto" Campo="" EstiloBotonera="Derecha" SoloAltas="True" ColeccionPadre="ColPresupuestoYTarifa">
//    <uc1:DetallePresupuestoYTarifa id="t" runat="server" />
//</prot:Editor>
