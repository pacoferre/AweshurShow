<%@ Page Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Presupuestos" Codebehind="Presupuestos.aspx.cs" %>
<%@ Register Src="FiltroPresupuesto.ascx" TagName="FiltroPresupuesto" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc3:FiltroPresupuesto id="bus" runat="server" />
		<ele:CajaPeq id="C" runat="server" Titulo="Lista de Presupuestos">
	        <prot:Grid id="lst" runat="server" CssClass="general" Width="100%" AutoGenerateColumns="False"
		        HeightScroll="400" CSSScroll="scrollBar" PageSize="100" AllowSorting="True"
		        AllowPaging="True" Ascendente="False" ConSelectorRegistro="True" WidthScroll="0">
		        <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
		        <SelectedItemStyle CssClass="seleccionado"></SelectedItemStyle>
		        <HeaderStyle CssClass="cabecera"></HeaderStyle>
		        <Columns>
			        <asp:BoundColumn Visible="False" DataField="IDPresupuesto"></asp:BoundColumn>
			        <asp:BoundColumn DataField="Anyo" HeaderText="Año" SortExpression="Sucursal, Anyo, Codigo">
			            <HeaderStyle Width="1px" />
			        </asp:BoundColumn>
					<asp:HyperLinkColumn DataNavigateUrlField="IDPresupuesto" DataNavigateUrlFormatString="~/presupuestos/Presupuesto.aspx?id={0}"
					    DataTextField="Codigo" SortExpression="Sucursal, Anyo, Codigo" HeaderText="Cod.">
			            <HeaderStyle Width="1px" />
				    </asp:HyperLinkColumn>
					<asp:HyperLinkColumn DataNavigateUrlField="IDPresupuesto" DataNavigateUrlFormatString="~/presupuestos/Presupuesto.aspx?id={0}"
					    DataTextField="Sucursal" SortExpression="Sucursal, Anyo, Codigo" HeaderText="Sucursal">
					</asp:HyperLinkColumn>
					<asp:TemplateColumn HeaderText="N">
                        <itemstyle horizontalalign="Center" />
                        <itemtemplate>
                            <%# (int)DataBinder.Eval(Container, "DataItem.TieneNotas") == 0 ? "" :
                                "<a onclick='cB();' href='../informes/NotasTareas/Imprimir.aspx?nt=N&to=P&id="
                                + DataBinder.Eval(Container, "DataItem.IDPresupuesto") + "' target='_blank'><img id='lst_ctl03_not' src='../img/TNotas.gif' style='border-width:0px;' /></a>"%>
                        </itemtemplate>
                        <headerstyle width="20px" />
                    </asp:TemplateColumn>
					<asp:HyperLinkColumn DataNavigateUrlField="IDPresupuesto" DataNavigateUrlFormatString="~/presupuestos/Presupuesto.aspx?id={0}"
					    DataTextField="CCliente" SortExpression="CCliente, Codigo" HeaderText="Cliente">
					</asp:HyperLinkColumn>
					<asp:HyperLinkColumn DataNavigateUrlField="IDPresupuesto" DataNavigateUrlFormatString="~/presupuestos/Presupuesto.aspx?id={0}"
					    DataTextField="Peticionario" SortExpression="Peticionario, Codigo" HeaderText="Peticionario"></asp:HyperLinkColumn>
					<asp:HyperLinkColumn DataNavigateUrlField="IDPresupuesto" DataNavigateUrlFormatString="~/presupuestos/Presupuesto.aspx?id={0}"
					    DataTextField="NombreObra" HeaderText="Obra"></asp:HyperLinkColumn>
				    <asp:TemplateColumn HeaderText="P/A Totales">
                        <itemtemplate>
                            <%# LCC.Negocio.Presupuestos.BasePresupuesto.VersionesDelFiltro((int)((System.Data.DataRowView)Container.DataItem)["IDPresupuesto"])%>
	                    </itemtemplate>
			            <HeaderStyle Width="80px" />
                    </asp:TemplateColumn>
			        <asp:BoundColumn DataField="TipoPres" HeaderText="Tipo">
			            <HeaderStyle Width="30px" />
			        </asp:BoundColumn>
			        <asp:BoundColumn DataField="Aceptado" HeaderText="Acep.">
			            <HeaderStyle Width="1px" />
			        </asp:BoundColumn>
		        </Columns>
		        <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" CssClass="adicional" Mode="NumericPages"></PagerStyle>
	        </prot:Grid>
        </ele:CajaPeq>
    </div>
    </form>
</body>
</html>
