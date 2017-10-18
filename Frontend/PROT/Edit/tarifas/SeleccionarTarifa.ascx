<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.tarifas.presupuestos_tarifas_SeleccionarTarifa" Codebehind="SeleccionarTarifa.ascx.cs" %>
<%@ Register Src="../../tarifas/FiltroTarifa.ascx" TagName="FiltroTarifa" TagPrefix="uc1" %>
<ele:CajaEdicion ID="C3" runat="server" Titulo="Seleccionar Tarifas">
    <uc1:FiltroTarifa ID="f" runat="server" />
    <div style="text-align:center">
        <bs:BotonNormal ID="m" runat="server" Text="Añadir tarifas seleccionadas" Metodo="Nuevas"
            GridColSeleccion="1" GridControl="lst" UsarObjetoRecibido="false" />
        &nbsp;&nbsp;
        <bs:BotonSimple ID="cr" runat="server" Text="Cerrar" />
    </div>
    <ele:CajaPeq id="C" runat="server" Titulo="Lista de Tarifas">
	    <prot:grid id="lst" runat="server" CssClass="general" Width="100%" HeightScroll="350" CSSScroll="scrollBar"
		    AllowPaging="True" AllowSorting="True"
		    PageSize="100" AutoGenerateColumns="False" ConSelectorCheckBox="True">
		    <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" CssClass="adicional" Mode="NumericPages"></PagerStyle>
		    <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
		    <SelectedItemStyle CssClass="seleccionado"></SelectedItemStyle>
		    <HeaderStyle CssClass="cabecera"></HeaderStyle>
		    <Columns>
			    <asp:BoundColumn Visible="False" DataField="IDTarifa"></asp:BoundColumn>
                <asp:TemplateColumn>
	                <ItemTemplate>
	                    <bs:Check id="c" runat="server" />
	                </ItemTemplate>
                    <headerstyle width="1px" />
                </asp:TemplateColumn>
			    <asp:BoundColumn DataField="Grupo" SortExpression="Grupo, Codigo" HeaderText="Grupo de Tarifas"></asp:BoundColumn>
			    <asp:BoundColumn DataField="Codigo" SortExpression="Codigo" HeaderText="Código"></asp:BoundColumn>
			    <asp:BoundColumn DataField="CodigoENAC" SortExpression="CodigoENAC" HeaderText="C.ENAC"></asp:BoundColumn>
			    <asp:BoundColumn DataField="DescLarga" SortExpression="DescLarga" HeaderText="Descripción"></asp:BoundColumn>
	            <asp:BoundColumn DataField="Precio" HeaderText="Precio" DataFormatString="{0:#,##0.00}">
                    <headerstyle width="60px" horizontalalign="Right" />
                    <itemstyle horizontalalign="Right" />
	            </asp:BoundColumn>
		    </Columns>
	    </prot:grid>
    </ele:CajaPeq>
</ele:CajaEdicion>