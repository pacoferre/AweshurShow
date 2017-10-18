<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Facturas.ascx.cs" Inherits="LCC.WebGestion.presupuestos.desaceptacion.Facturas" %>
<ele:CajaEdicion ID="C3" runat="server" Titulo="Facturas Existentes">
    <prot:GridEnEditor id="ge2" runat="server" Width="100%" CssClass="especial" DataMember="FacturasPresupuesto"
        AutoGenerateColumns="False" CSSScroll="scrollBar" HeightScroll="200" TipoOrigen="Vista"
        ContieneCampos="False" Ascendente="False" ConSelectorRegistro="True" AllowPaging="True"
        PageSize="100" ColFiltroNombre=""
        WidthScroll="0" AllowSorting="true">
        <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
        <SelectedItemStyle CssClass="seleccionado"></SelectedItemStyle>
        <HeaderStyle CssClass="cabecera"></HeaderStyle>
        <Columns>
	        <asp:BoundColumn Visible="False" DataField="IDFactura"></asp:BoundColumn>
			<asp:HyperLinkColumn DataNavigateUrlField="IDFactura" DataNavigateUrlFormatString="~/facturas/Factura.aspx?id={0}"
			    DataTextField="Numero" SortExpression="Numero" HeaderText="Numero">
			</asp:HyperLinkColumn>
			<asp:HyperLinkColumn DataNavigateUrlField="IDFactura" DataNavigateUrlFormatString="~/facturas/Factura.aspx?id={0}"
			    DataTextField="FechaFactura" SortExpression="FechaFactura" HeaderText="FechaFactura" DataTextFormatString="{0:dd-MM-yyyy}">
			</asp:HyperLinkColumn>
        </Columns>
        <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional"></PagerStyle>
    </prot:GridEnEditor>
</ele:CajaEdicion>