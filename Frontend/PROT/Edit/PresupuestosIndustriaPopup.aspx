<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PresupuestosIndustriaPopup.aspx.cs" Inherits="LCC.WebGestion.presupuestos.PresupuestosIndustriaPopup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
   <form id="form1" runat="server">
    <div>
        <ele:CajaPeq ID="C" runat="server" Titulo="Listado de Presupuestos Denegados">
            <prot:Grid ID="lst" runat="server" CssClass="general" Width="100%" AutoGenerateColumns="False"
                 CSSScroll="scrollBar" PageSize="100" AllowSorting="True" AllowPaging="True"
                Ascendente="False" ConSelectorRegistro="True" WidthScroll="0">
                <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
                <SelectedItemStyle CssClass="seleccionado"></SelectedItemStyle>
                <HeaderStyle CssClass="cabecera"></HeaderStyle>
                <Columns>
                    <asp:BoundColumn Visible="False" DataField="IDPresupuesto"></asp:BoundColumn>
                    <asp:HyperLinkColumn DataNavigateUrlField="IDPresupuesto" DataNavigateUrlFormatString="~/presupuestos/Presupuesto.aspx?id={0}"
                        DataTextField="Codigo" HeaderText="C&#243;digo" HeaderStyle-Width="10%"></asp:HyperLinkColumn>
                    <asp:HyperLinkColumn DataNavigateUrlField="IDPresupuesto" DataNavigateUrlFormatString="~/presupuestos/Presupuesto.aspx?id={0}"
                        DataTextField="Anyo" HeaderText="Año" HeaderStyle-Width="20%"></asp:HyperLinkColumn>
                </Columns>
                <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" CssClass="adicional"
                    Mode="NumericPages"></PagerStyle>
            </prot:Grid>
        </ele:CajaPeq>
    </div>
    </form>
</body>
</html>
