<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.tarifas.presupuestos_DetallePresupuesto" Codebehind="DetallePresupuesto.ascx.cs" %>
<%@ Register Src="../Totales.ascx" TagName="Totales" TagPrefix="uc3" %>
<%@ Register Src="CabeceraEdicion.ascx" TagName="CabeceraEdicion" TagPrefix="uc1" %>
<%@ Register Src="LineaPresupuesto.ascx" TagName="LineaPresupuesto" TagPrefix="uc2" %>
<%@ Import Namespace="PROT.NegocioGeneral"%>
<ele:CajaEdicion ID="C3" runat="server" Titulo="Tarifas">
    <table>
        <tr>
            <td>
                <uc3:Totales ID="tot" runat="server" />
            </td>
            <td>
                <bs:BotonNormal ID="sl" runat="server" Text="Seleccionar tarifas"
                    Metodo="SeleccionarTarifas"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <bs:BotonNormal ID="bnag" runat="server" Text="Agregar Tarifas desde Excel"
                    Metodo="AgregarTarifasExcel"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <bs:BotonSimple ID="rec" runat="server" Text="Actualizar" />
                <br />
                <br />
                <bs:BotonNormal ID="el" runat="server" Text="Eliminar/No eliminar las líneas seleccionadas"
                    Metodo="EliminarLineasSeleccionadas"/>
            </td>
        </tr>
    </table>
    <prot:GridEnEditor id="g1" runat="server" Width="100%" CssClass="especial" DataMember="ColPresupuestoVersionDetalle"
        AutoGenerateColumns="False" CSSScroll="scrollBar" HeightScroll="500" TipoOrigen="Coleccion"
        ContieneCampos="True" Ascendente="False" ConSelectorRegistro="True" PageSize="40"
        ColFiltroNombre="IDTituloMaterial" WidthScroll="0" AllowPaging="false">
        <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
        <SelectedItemStyle CssClass="seleccionado"></SelectedItemStyle>
        <HeaderStyle CssClass="cabecera"></HeaderStyle>
        <Columns>
            <asp:TemplateColumn Visible="False">
                <ItemTemplate>
                    <%# ((BaseNegocio) Container.DataItem).Clave %>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="S">
                <ItemTemplate>
                    <bs:Check id="l" runat="server" Campo="MarcarParaEliminar"></bs:Check>
                </ItemTemplate>
                <headerstyle HorizontalAlign="Center" />
            </asp:TemplateColumn>
            <asp:TemplateColumn>
                <headertemplate>
                    <uc1:CabeceraEdicion ID="cb" runat="server" />
                </headertemplate>
                <ItemTemplate>
                    <uc2:LineaPresupuesto ID="f" runat="server" />
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn>
                <ItemTemplate>
                    <bs:BotonSimple id="l1" runat="server" Text="Eliminar" Enabled="<%# ((BaseNegocio) Container.DataItem).PermisoEliminar %>" Visible="<%# ((BaseNegocio) Container.DataItem).EsEliminable %>" CausesValidation="false" CommandName="Delete">
                    </bs:BotonSimple>
                    <%# ((BaseNegocio) Container.DataItem).StringEstado %>
                </ItemTemplate>
                <headerstyle width="100px" />
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional"></PagerStyle>
    </prot:GridEnEditor>
</ele:CajaEdicion>

