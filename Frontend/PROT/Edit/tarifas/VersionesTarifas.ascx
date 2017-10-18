<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VersionesTarifas.ascx.cs"
    Inherits="LCC.WebGestion.presupuestos.tarifas.VersionesTarifas" %>
<%@ Import Namespace="PROT.NegocioGeneral" %>
<prot:GridEnEditor ID="g" runat="server" Width="100%" CssClass="especial" DataMember="VersionesTarifas"
    AutoGenerateColumns="False" CSSScroll="scrollBar" HeightScroll="248" TipoOrigen="Vista"
    ContieneCampos="False" ConSelectorRegistro="False" Ascendente="True" ColFiltroNombre="" WidthScroll="0">
    <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
    <SelectedItemStyle CssClass="seleccionado"></SelectedItemStyle>
    <HeaderStyle CssClass="cabecera"></HeaderStyle>
    <Columns>
        <asp:BoundColumn DataField="IDPresupuestoVersion" Visible="false"></asp:BoundColumn>
        <asp:TemplateColumn HeaderText="Versión">
            <ItemTemplate>
                <%# DataBinder.Eval(Container, "DataItem.Version").ToString() %>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="Codigo">
            <ItemTemplate>
                <%# DataBinder.Eval(Container, "DataItem.Codigo").ToString() %>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="Unidades">
            <HeaderStyle Width="50px" />
            <ItemStyle HorizontalAlign="Right" />
            <HeaderStyle HorizontalAlign="Right" />
            <ItemTemplate>
                <prot:Numero ID="unia" runat="server" TWidth="50" AdmiteDecimales="true" AlineacionDerecha="true"
                    ValorInicial='<%# DataBinder.Eval(Container, "DataItem.Unidades").ToString() %>' />
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="Divisior">
            <HeaderStyle Width="50px" />
            <ItemStyle HorizontalAlign="Right" />
            <HeaderStyle HorizontalAlign="Right" />
            <ItemTemplate>
                <prot:Numero ID="diva" runat="server" AlineacionDerecha="true" TWidth="50" ValorInicial='<%# DataBinder.Eval(Container, "DataItem.DivisorUnidades").ToString() %>' />
            </ItemTemplate>
        </asp:TemplateColumn>
    </Columns>
    <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional">
    </PagerStyle>
</prot:GridEnEditor>
