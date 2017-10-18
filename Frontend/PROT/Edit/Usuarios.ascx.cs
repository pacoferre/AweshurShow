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
	public partial class presupuestos_Usuarios : PROT.ControlesEspeciales.RaizASCX
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected override void OnPreRender(EventArgs e)
		{
			f.Visible = (objeto is LCC.Negocio.Presupuestos.Presupuesto);
			uf.Visible = f.Visible;

			a.Visible = (bool)objeto["Aceptado"];
			ua.Visible = a.Visible;

			base.OnPreRender(e);
		}
	}
}
//<%@ Import Namespace="PROT.NegocioGeneral" %>
//<asp:Panel ID="p1" Width="550" runat="server" Style="display: none" CssClass="modalPopup">
//    <asp:Panel ID="pc" runat="server" CssClass="modalPopupHead" HorizontalAlign="Center">
//        Usuarios
//    </asp:Panel>
//    <prot:Editor ID="eI" runat="server" Width="100%" CssClass="especial" PermiteModificar="True"
//        PermiteEliminar="False" PermiteAltas="True" NombreObjetoNegocio="PresupuestoUsuario"
//        Campo="" EstiloBotonera="Abajo" SoloAltas="True" ColeccionPadre="ColPresupuestoUsuario"
//        TienePopup="true" NombrePopup="mpe">
//        <table>
//            <tr>
//                <td>
//                    Tipo:
//                </td>
//                <td>
//                    Usuario:
//                </td>
//            </tr>
//            <tr>
//                <td>
//                    <ed:PresUsuarioTipo ID="ut" runat="server" />
//                </td>
//                <td>
//                    <ed:PresUsuario ID="usa" runat="server" Campo="IDUsuario" />
//                </td>
//            </tr>
//        </table>
//    </prot:Editor>
//</asp:Panel>
//<prot:PopupEditor ID="pe" runat="server" PopupControlID="p1" BackgroundCssClass="modalBackground"
//    DropShadow="true" PopupDragHandleControlID="pc" />
//<ele:CajaEdicion ID="C8" runat="server" Titulo="Usuarios">
//    <prot:GridEnEditor ID="g" runat="server" Width="100%" CssClass="especial" DataMember="ColPresupuestoUsuario"
//        AutoGenerateColumns="False" CSSScroll="scrollBar" HeightScroll="120" ContieneCampos="True"
//        ConSelectorRegistro="False" ShowHeader="True" BotonNuevoEnCabecera="True">
//        <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
//        <HeaderStyle CssClass="cabecera"></HeaderStyle>
//        <Columns>
//            <asp:TemplateColumn Visible="False">
//                <itemtemplate>
//                    <%# ((BaseNegocio) Container.DataItem).Clave %>
//                </itemtemplate>
//            </asp:TemplateColumn>
//            <asp:TemplateColumn HeaderText="Tipo">
//                <itemtemplate>
//                    <%# ((BaseNegocio)Container.DataItem).Propiedad("UsuarioTipo")%>
//                </itemtemplate>
//            </asp:TemplateColumn>
//            <asp:TemplateColumn HeaderText="Usuario">
//                <itemtemplate>
//                    <%# ((BaseNegocio)Container.DataItem).Propiedad("Usuario")%>
//                </itemtemplate>
//            </asp:TemplateColumn>
//            <asp:TemplateColumn>
//                <itemtemplate>
//                    <bs:BotonSimple id="l2" runat="server" Text="Eliminar"
//                        Enabled="<%# ((BaseNegocio) Container.DataItem).PermisoEliminar %>"
//                        Visible="<%# ((BaseNegocio) Container.DataItem).EsEliminable %>" CausesValidation="false" CommandName="Delete">
//                    </bs:BotonSimple>
//                    <%# ((BaseNegocio) Container.DataItem).StringEstado %>
//                </itemtemplate>
//            </asp:TemplateColumn>
//        </Columns>
//        <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional">
//        </PagerStyle>
//    </prot:GridEnEditor>
//</ele:CajaEdicion>

