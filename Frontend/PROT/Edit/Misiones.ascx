<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Misiones" Codebehind="Misiones.ascx.cs" %>
<%@ Import Namespace="PROT.NegocioGeneral"%>
<ele:CajaInterna id="t" Titulo="Misiones a contratar" runat="server">
    <prot:GridEnEditor id="g" runat="server" Width="100%" CssClass="especial" DataMember="ColPresupuestoMision"
        AutoGenerateColumns="False" CSSScroll="scrollBar" 
        ContieneCampos="True" ConSelectorRegistro="False" ShowHeader="True">
        <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
        <HeaderStyle CssClass="cabecera"></HeaderStyle>
        <Columns>
            <asp:TemplateColumn Visible="False">
                <ItemTemplate>
	                <%# ((BaseNegocio) Container.DataItem).Clave %>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Misión">
                <ItemTemplate>
                    <%# ((BaseNegocio) Container.DataItem)["Nombre"] %>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn>
                <headerstyle Width="1px" />
                <ItemTemplate>
					<bs:Check id="a" runat="server" Campo="activo" CampoText="" />
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Importe">
                <ItemTemplate>
                    <bs:MonedaConDecimales id="i" runat="server" Campo="Importe" AlineacionDerecha="true" />
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Comentarios">
                <ItemTemplate>
                    <prot:Texto id="c" runat="server" Campo="Descripcion" Width="250px" />
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional"></PagerStyle>
    </prot:GridEnEditor>
    <br />
    <table>
        <tr>
            <td>
                TOTAL:
            </td>
            <td>
                <prot:Texto id="to" runat="server" ReadOnly="true" AlineacionDerecha="true" Width="80px" />
                <bs:BotonSimple id="cl" runat="server" Text="Calcular" />
            </td>
        </tr>
    </table>
</ele:CajaInterna>
