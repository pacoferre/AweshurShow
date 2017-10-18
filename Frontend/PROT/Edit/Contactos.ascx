<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Contactos" Codebehind="Contactos.ascx.cs" %>
<%@ Register Src="PresupuestoContacto.ascx" TagName="PresupuestoContacto" TagPrefix="uc1" %>
<%@ Import Namespace="PROT.NegocioGeneral" %>
<asp:Panel ID="p1" Width="700" runat="server" Style="display: none" CssClass="modalPopup">
    <asp:Panel ID="pc" runat="server" CssClass="modalPopupHead" HorizontalAlign="Center">
        Modificar/Crear Contacto
    </asp:Panel>
    <prot:Editor ID="ei" runat="server" Width="100%" CssClass="especial" PermiteModificar="True"
        PermiteEliminar="False" PermiteAltas="True" NombreObjetoNegocio="PresupuestoContacto"
        Campo="" EstiloBotonera="Abajo" SoloAltas="False" ColeccionPadre="ColPresupuestoContacto"
        TienePopup="true" NombrePopup="mpe">
        <uc1:PresupuestoContacto ID="c" runat="server" />
    </prot:Editor>
</asp:Panel>
<prot:PopupEditor ID="pe" runat="server" PopupControlID="p1" BackgroundCssClass="modalBackground"
    DropShadow="true" PopupDragHandleControlID="pc" />
<ele:CajaEdicion ID="C1" Titulo="Contactos" runat="server">
    <prot:GridEnEditor ID="ge1" runat="server" Width="100%" CssClass="especial" DataMember="ColPresupuestoContacto"
        AutoGenerateColumns="False" CSSScroll="scrollBar" HeightScroll="250" ContieneCampos="false"
        ConSelectorRegistro="False" ShowHeader="true" ColFiltroNombre="" BotonNuevoEnCabecera="true">
        <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
        <HeaderStyle CssClass="cabecera"></HeaderStyle>
        <Columns>
            <asp:TemplateColumn Visible="False">
                <itemtemplate>
		            <%# ((BaseNegocio) Container.DataItem).Clave %>
	            </itemtemplate>
            </asp:TemplateColumn>
            <prot:ColumnaPosicion>
            </prot:ColumnaPosicion>
            <asp:TemplateColumn HeaderText="Tipo">
                <itemtemplate>
                    <asp:LinkButton id="t" runat="server" Text='<%# ((BaseNegocio) Container.DataItem).Propiedad("PresupuestoContactoTipo") %>' CausesValidation="false" CommandName="Select">
                    </asp:LinkButton>
	            </itemtemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Contacto">
                <itemtemplate>
                    <asp:LinkButton id="s" runat="server" Text='<%# ((BaseNegocio) Container.DataItem).Propiedad("DescripcionCompleta") %>' CausesValidation="false" CommandName="Select">
                    </asp:LinkButton>
	            </itemtemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn>
                <itemtemplate>
		            <bs:BotonSimple id="l1" runat="server" Text="Eliminar" Enabled="<%# ((BaseNegocio) Container.DataItem).PermisoEliminar %>" Visible="<%# ((BaseNegocio) Container.DataItem).EsEliminable %>" CausesValidation="false" CommandName="Delete">
		            </bs:BotonSimple>
		            <%# ((BaseNegocio) Container.DataItem).StringEstado %>
	            </itemtemplate>
                <headerstyle width="1px" />
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional">
        </PagerStyle>
    </prot:GridEnEditor>
</ele:CajaEdicion>
