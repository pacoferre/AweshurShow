<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrabajosTarifas.ascx.cs" Inherits="LCC.WebGestion.presupuestos.desaceptacion.TrabajosTarifas" %>
<ele:CajaEdicion ID="C3" runat="server" Titulo="Trabajos que contienen la tarifa seleccionada">
    <prot:GridEnEditor id="ge1" runat="server" Width="100%" CssClass="especial" DataMember="TrabajosTarifas"
        AutoGenerateColumns="False" CSSScroll="scrollBar" HeightScroll="200" TipoOrigen="Vista"
        ContieneCampos="False" Ascendente="False" ConSelectorRegistro="True" AllowPaging="True"
        PageSize="100" ColFiltroNombre=""
        WidthScroll="0" AllowSorting="true">
        <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
        <SelectedItemStyle CssClass="seleccionado"></SelectedItemStyle>
        <HeaderStyle CssClass="cabecera"></HeaderStyle>
        <Columns>
	        <asp:BoundColumn Visible="False" DataField="IDTrabajo"></asp:BoundColumn>
			<asp:HyperLinkColumn DataNavigateUrlField="IDTrabajo" DataNavigateUrlFormatString="~/trabajos/Trabajo.aspx?id={0}"
			    DataTextField="Codigo" SortExpression="Codigo" HeaderText="Codigo">
			</asp:HyperLinkColumn>
			<asp:HyperLinkColumn DataNavigateUrlField="IDTrabajo" DataNavigateUrlFormatString="~/trabajos/Trabajo.aspx?id={0}"
			    DataTextField="Facturado" SortExpression="Facturado" HeaderText="Facturado">
			</asp:HyperLinkColumn>
        </Columns>
        <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional"></PagerStyle>
    </prot:GridEnEditor>
</ele:CajaEdicion>