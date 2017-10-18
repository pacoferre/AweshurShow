<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Tarifas" Codebehind="Tarifas.ascx.cs" %>
<%@ Register Src="Totales.ascx" TagName="Totales" TagPrefix="uc1" %>
<%@ Import Namespace="PROT.NegocioGeneral" %>
<ele:CajaEdicion id="C3" runat="server" Titulo="Tarifas">
    Lista de Tarifas usadas por el presupuesto.
    <prot:GridEnEditor id="ge1" runat="server" Width="100%" CssClass="especial" DataMember="Tarifas"
        AutoGenerateColumns="False" CSSScroll="scrollBar" HeightScroll="240" TipoOrigen="Vista"
        ContieneCampos="False" Ascendente="False" ConSelectorRegistro="False" OnEditCommand="ge1_EditCommand"
         AllowPaging="True" PageSize="100" ColFiltroNombre="" WidthScroll="0">
        <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
        <SelectedItemStyle CssClass="seleccionado"></SelectedItemStyle>
        <HeaderStyle CssClass="cabecera"></HeaderStyle>
        <Columns>
            <asp:BoundColumn DataField="IDPyT" HeaderText="Tarifa" Visible="false"></asp:BoundColumn>
	        <asp:BoundColumn DataField="Codigo" HeaderText="Tarifa">
                <headerstyle width="1px" />
 	        </asp:BoundColumn>
	        <asp:BoundColumn DataField="Descripcion" HeaderText="Descripci&#243;n"></asp:BoundColumn>
	        <asp:BoundColumn DataField="Unidades" HeaderText="Unidades">
	            <headerstyle width="60px" />
                <itemstyle horizontalalign="Right" />
                <headerstyle horizontalalign="Right" />
            </asp:BoundColumn>
	        <asp:BoundColumn DataField="Precio" HeaderText="Precio" DataFormatString="{0:#,##0.00}">
                <headerstyle width="60px" />
                <itemstyle horizontalalign="Right" />
                <headerstyle horizontalalign="Right" />
	        </asp:BoundColumn>
            <asp:BoundColumn DataField="FechaAplicacion" HeaderText="Fecha de Aplicación" DataFormatString="{0:dd-MM-yyyy}">
                <itemstyle width="80px" />
            </asp:BoundColumn>
            <asp:TemplateColumn HeaderText="Cambiar Tarifa" HeaderStyle-Width="100px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <bs:BotonNormal id="cam" runat="server" Text="Modificar" CausesValidation="false" CommandName="Edit" 
                    PermisoClase="MET" PermisoSubClase="Tarifas" Permiso="ModificarTarifas" />
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional"></PagerStyle>
    </prot:GridEnEditor>
    <uc1:Totales ID="tt" runat="server" />
</ele:CajaEdicion>
<div align="center">
    <bs:BotonNormal ID="im" runat="server" Text="Imprimir Tarifas" Metodo="ImprimirTarifas" />&nbsp;&nbsp;
     <bs:BotonNormal ID="ima" runat="server" Text="Imprimir Tarifas Aceptadas" Metodo="ImprimirTarifasAceptadas" />&nbsp;&nbsp;
</div>