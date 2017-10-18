<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Versiones" Codebehind="Versiones.ascx.cs" %>
<%@ Register Src="DatosVersion.ascx" TagName="DatosVersion" TagPrefix="uc1" %>
<%@ Import Namespace="PROT.NegocioGeneral"%>
<asp:Panel ID="p1" Width="550" runat="server" Style="display: none" CssClass="modalPopup">
    <asp:Panel ID="pc" runat="server" CssClass="modalPopupHead" HorizontalAlign="Center">
        Datos Versión
    </asp:Panel>
    <prot:Editor id="eI" runat="server" CssClass="especial" PermiteModificar="True"
            PermiteEliminar="False" PermiteAltas="False" NombreObjetoNegocio="PresupuestoVersion" Campo=""
            EstiloBotonera="Abajo" SoloAltas="False" ColeccionPadre="ColPresupuestoVersion"
            TienePopup="true" NombrePopup="mpe">
            <uc1:DatosVersion ID="dv" runat="server" />
        </prot:Editor>
</asp:Panel>
<prot:PopupEditor ID="pe" runat="server" PopupControlID="p1" BackgroundCssClass="modalBackground"
    DropShadow="true" PopupDragHandleControlID="pc" />
<ele:CajaEdicion ID="C3" runat="server" Titulo="Vers./Amp.">
    <prot:GridEnEditor id="g" runat="server" Width="100%" CssClass="especial" DataMember="ColPresupuestoVersion"
        AutoGenerateColumns="False" CSSScroll="scrollBar" BotonNuevoEnCabecera="true" HeightScroll="220"
        ContieneCampos="True" ConSelectorRegistro="False" ShowHeader="True">
        <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
        <HeaderStyle CssClass="cabecera"></HeaderStyle>
        <Columns>
            <asp:TemplateColumn Visible="False">
                <ItemTemplate>
                    <%# ((BaseNegocio) Container.DataItem).Clave %>
                </ItemTemplate>
            </asp:TemplateColumn>
            <prot:ColumnaPosicion></prot:ColumnaPosicion>
            <asp:TemplateColumn>
                <ItemTemplate>
                    <bs:Check id="c" runat="server" />
                </ItemTemplate>
                <itemstyle width="1px" />
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Versión">
                <itemstyle width="1px" />
                <ItemTemplate>
                    <%# ((BaseNegocio) Container.DataItem)["Version"] %>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Est/Tip">
                <itemstyle width="60px" />
                <ItemTemplate>
                    <%# ((BaseNegocio) Container.DataItem).Propiedad("Estado") %>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn>
                <itemstyle width="1px" />
                <ItemTemplate>
		            <bs:BotonNormal id="ep" runat="server" Text="P" ToolTip="Establecer Principal"
		                Metodo="EstablecerVersionPrincipal" CausesValidation="false">
		            </bs:BotonNormal>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Emisión">
                <itemstyle width="70px" />
                <ItemTemplate>
                    <%# Lib.FormateaFecha(((BaseNegocio)Container.DataItem)["FechaEmision"])%>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Aceptación">
                <itemstyle width="70px" />
                <ItemTemplate>
                    <%# Lib.FormateaFecha(((BaseNegocio)Container.DataItem)["FechaAceptacion"])%>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn>
                <itemstyle width="1px" />
                <ItemTemplate>
		            <bs:BotonNormal id="ac" runat="server" Text="A" ToolTip="Aceptar Ampliación"
		                Metodo="AceptarAmpliacion" CausesValidation="false">
		            </bs:BotonNormal>
                </ItemTemplate>
            </asp:TemplateColumn>
           <%-- <asp:TemplateColumn HeaderText="Aplicación">
                <itemstyle width="70px" />
                <ItemTemplate>
                    <%# Lib.FormateaFecha(((BaseNegocio)Container.DataItem)["FechaAplicacion"])%>
                </ItemTemplate>
            </asp:TemplateColumn>--%>
            <asp:TemplateColumn HeaderText="Presupuestado">
                <itemstyle width="90px" />
                <ItemTemplate>
                    <%# ((BaseNegocio)Container.DataItem).Propiedad("TotalVersion")%>
                </ItemTemplate>
                <itemstyle horizontalalign="Right" />
                <headerstyle horizontalalign="Right" />
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Aceptado">
                <itemstyle width="90px" />
                <ItemTemplate>
                    <%# ((BaseNegocio)Container.DataItem).Propiedad("TotalVersionAceptado")%>
                </ItemTemplate>
                <itemstyle horizontalalign="Right" />
                <headerstyle horizontalalign="Right" />
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Observaciones">
                <ItemTemplate>
                    <%# ((BaseNegocio)Container.DataItem)["Observaciones"]%>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn>
                <itemstyle width="1px" />
                <ItemTemplate>
		            <bs:BotonSimple id="l1" runat="server" Text="Modificar" CausesValidation="false" CommandName="Select">
		            </bs:BotonSimple>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional"></PagerStyle>
    </prot:GridEnEditor>
    <bs:BotonNormal ID="e1" runat="server" Width="300px" Text="Eliminar versiones seleccionadas"
        Metodo="EliminarVersiones" GridControl="g" GridColSeleccion="2"
        ToolTip="Eliminar las versiones (si es posible)"
        Pregunta="¿Está seguro/a de querer eliminar las versiones seleccionadas? (solamente se eliminarán las posibles)" />
    &nbsp;&nbsp;
    <bs:BotonNormal ID="b2" runat="server" Width="300px" Text="Crear versión nueva a partir de selección"
        Metodo="CrearAmpliacion" GridControl="g" GridColSeleccion="2"
        ToolTip="Crea una versión con las tarifas de las versiones seleccionadas" />
</ele:CajaEdicion>
