<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_PreciosCompetencia" Codebehind="PreciosCompetencia.ascx.cs" %>
<%@ Import Namespace="PROT.NegocioGeneral"%>

<asp:Panel ID="p1" Width="350" runat="server" Style="display: none" CssClass="modalPopup">
    <asp:Panel ID="pc" runat="server" CssClass="modalPopupHead" HorizontalAlign="Center">
        Nueva Empresa de Competencia
    </asp:Panel>
    <prot:Editor id="eI" runat="server" Width="100%" CssClass="especial"
        PermiteModificar="True" PermiteEliminar="False" PermiteAltas="True"
        NombreObjetoNegocio="PresupuestoPrecioCompetencia" Campo="" EstiloBotonera="Abajo"
        SoloAltas="True" ColeccionPadre="ColPresupuestoPrecioCompetencia"
        TienePopup="true" NombrePopup="mpe">
        <table>
            <tr>
                <td>
                    Empresa competencia:
                </td>
                <td>
                    Precio competencia:
                </td>
            </tr>
            <tr>
                <td>
                    <ed:PresEmpresaCompetencia id="ec" runat="server" />
                </td>
                <td>
                    <bs:MonedaConDecimales ID="pec" runat="server" Campo="PrecioCompetencia" />
                </td>
            </tr>
        </table>
    </prot:Editor>
</asp:Panel>
<prot:PopupEditor ID="pe" runat="server" PopupControlID="p1" BackgroundCssClass="modalBackground"
    DropShadow="true" PopupDragHandleControlID="pc" />
<prot:GridEnEditor id="ge1" runat="server" Width="100%" CssClass="especial" DataMember="ColPresupuestoPrecioCompetencia"
    AutoGenerateColumns="False" CSSScroll="scrollBar" HeightScroll="150" BotonNuevoEnCabecera="true"
    ContieneCampos="True" ConSelectorRegistro="False" ShowHeader="true">
    <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
    <HeaderStyle CssClass="cabecera"></HeaderStyle>
    <Columns>
        <asp:TemplateColumn Visible="False">
            <ItemTemplate>
                <%# ((BaseNegocio) Container.DataItem).Clave %>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="Empresas competencia">
            <ItemTemplate>
                <%# ((BaseNegocio) Container.DataItem)["Nombre"] %>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="Precio">
            <ItemTemplate>
                <bs:MonedaConDecimales ID="p" runat="server" Campo="PrecioCompetencia" />
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <ItemTemplate>
                <bs:BotonSimple id="l1" runat="server" Text="Eliminar" Enabled="<%# ((BaseNegocio) Container.DataItem).PermisoEliminar %>" Visible="<%# ((BaseNegocio) Container.DataItem).EsEliminable %>" CausesValidation="false" CommandName="Delete">
                </bs:BotonSimple>
                <%# ((BaseNegocio) Container.DataItem).StringEstado %>
            </ItemTemplate>
        </asp:TemplateColumn>
    </Columns>
    <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional"></PagerStyle>
</prot:GridEnEditor>
