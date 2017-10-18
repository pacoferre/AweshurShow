<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.tarifas.presupuestos_tarifas_EditorTarifas" Codebehind="EditorTarifas.ascx.cs" %>
<%@ Register Src="DetallePresupuesto.ascx" TagName="DetallePresupuesto" TagPrefix="uc1" %>
<%@ Register Src="SeleccionarTarifa.ascx" TagName="SeleccionarTarifa" TagPrefix="uc2" %>
<%@ Import Namespace="PROT.NegocioGeneral"%>
<ele:CajaEdicion id="C1" Titulo="Editor de Tarifas" runat="server">
    <table width="100%">
        <tr>
            <td class="VTop">
                <prot:GridEnEditor id="ge1" runat="server" CssClass="especial" DataMember="ColPresupuestoVersion"
                    AutoGenerateColumns="False" 
                    ContieneCampos="false" ConSelectorRegistro="True" ShowHeader="true">
                    <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
                    <HeaderStyle CssClass="cabecera"></HeaderStyle>
                    <Columns>
                        <asp:TemplateColumn Visible="False">
	                        <ItemTemplate>
		                        <%# ((BaseNegocio) Container.DataItem).Clave %>
	                        </ItemTemplate>
                        </asp:TemplateColumn>
                        <prot:ColumnaPosicion></prot:ColumnaPosicion>
                        <asp:TemplateColumn HeaderText="V">
	                        <ItemTemplate>
                                <asp:LinkButton id="r" runat="server" Text='<%# ((BaseNegocio) Container.DataItem)["Version"].ToString() %>' CausesValidation="false" CommandName="Select">
                                </asp:LinkButton>
	                        </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional"></PagerStyle>
                </prot:GridEnEditor>
            </td>
            <td>
                <prot:Editor id="eI" runat="server" CssClass="especial" PermiteModificar="True"
                    PermiteEliminar="False" PermiteAltas="True" NombreObjetoNegocio="PresupuestoVersion" Campo=""
                    EstiloBotonera="Ninguna" SoloAltas="False" ColeccionPadre="ColPresupuestoVersion">
                    <uc1:DetallePresupuesto id="d" runat="server" />
                </prot:Editor>
            </td>
        </tr>
    </table>
</ele:CajaEdicion>