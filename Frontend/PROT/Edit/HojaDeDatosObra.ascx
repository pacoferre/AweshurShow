<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_HojaDeDatosObra" Codebehind="HojaDeDatosObra.ascx.cs" %>
<table>
    <tr>
        <td>
            Nombre de la obra:
        </td>
    </tr>
    <tr>
        <td>
            <prot:Texto id="ObNoAcep" runat="server" Campo="NombreObra" Width="580px" TextMode="MultiLine" Rows="1" />
            <prot:Texto id="ObAcep" runat="server" ReadOnly="true" ObjetoAsociado="Obra" Campo="NombreObra" Width="580px" TextMode="MultiLine" Rows="2" />
            <bs:EnlaceObjetoExterno id="vo" runat="server" URLEnlace="~/obras/Obra.aspx" ObjetoAsociado="Obra" />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>Inicio Obra:
        </td>
        <td>&nbsp;Final Obra:
        </td>
        <td>&nbsp;Meses:
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
            <bs:Fecha id="fio" runat="server" Campo="FechaIniObra" />
        </td>
        <td>&nbsp;
            <bs:Fecha id="ffo" runat="server" Campo="FechaFinObra" />
        </td>
        <td>&nbsp;
            <bs:Numero id="ms" runat="server" Campo="Meses" TWidth="40" />&nbsp;
        </td>
        <td>
            <bs:Check id="e3" runat="server" Campo="TienenCopiasPlanos" Text="Copias digitales de planos" />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>PEM:
        </td>
        <td>Hon.Técnicos:
        </td>
        <td>Licencias/Impuestos:
        </td>
    </tr>
    <tr>
        <td>
            <bs:MonedaConDecimales id="pm" runat="server" Campo="PEM" />&nbsp;
        </td>
        <td>
            <bs:MonedaConDecimales id="ht1" runat="server" Campo="HonorariosTecnicos" />&nbsp;
        </td>
        <td>
            <bs:MonedaConDecimales id="li1" runat="server" Campo="Licencias" />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>NºEdificios:
        </td>
        <td>Tipología:
        </td>
        <td>NºViviendas:
        </td>
        <td>Sup.Terreno:
        </td>
        <td>Pendiente(%):
        </td>
        <td>Altitud:
        </td>
    </tr>
    <tr>
        <td>
            <bs:Numero id="n1" runat="server" Campo="NumEdificios" TWidth="70" />&nbsp;
        </td>
        <td>
            <ed:PresTipoEdificio id="te" runat="server" />&nbsp;
        </td>
        <td>
            <bs:Numero id="n2" runat="server" Campo="NumViviendas" TWidth="70" />&nbsp;
        </td>
        <td>
            <bs:Numero id="n3" runat="server" Campo="SuperficieTerreno" TWidth="70" Formato="{0:0.00}" />&nbsp;
        </td>
        <td>
            <bs:Porcentaje id="n4" runat="server" Campo="Pendiente" TWidth="70" />&nbsp;
        </td>
        <td>
            <bs:Numero id="n5" runat="server" Campo="Altitud" TWidth="70" />
        </td>
    </tr>
</table>
<table cellpadding=0 cellspacing=0>
    <tr>
        <td class="VTop">
            <table>
                <tr>
                    <td>
                    </td>
                    <td align=right>Nº Plantas
                    </td>
                    <td align=right>Superficie
                    </td>
                </tr>
                <tr>
                    <td>Sobre Rasante:
                    </td>
                    <td>
                        <bs:Numero id="p1" runat="server" Campo="NumPlantaSobreRasante" TWidth="70" AlineacionDerecha="true" />&nbsp;
                    </td>
                    <td>
                        <bs:Numero id="s2" runat="server" Campo="SupSobreRasante" TWidth="70" AlineacionDerecha="true" Formato="{0:0.00}" />&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>Bajo Rasante:
                    </td>
                    <td>
                        <bs:Numero id="p3" runat="server" Campo="NumPlantaBajoRasante" TWidth="70" AlineacionDerecha="true" />&nbsp;
                    </td>
                    <td>
                        <bs:Numero id="s4" runat="server" Campo="SupBajoRasante" TWidth="70" AlineacionDerecha="true" Formato="{0:0.00}" />&nbsp;
                    </td>
                </tr>
                <tr>
                    <td><b>Total</b>:
                    </td>
                    <td>
                        <bs:BotonSimple id="cl" runat="server" Text="C" ToolTip="Calcular" />
                    </td>
                    <td>
                        <prot:Texto id="to" runat="server" CalcPropiedad="TotalSuperficie" ReadOnly="true" AlineacionDerecha="true" Width="70px" />
                    </td>
                </tr>
            </table>
        </td>
        <td style="width:5px">
        </td>
        <td>
            <table>
                <tr>
                    <td>
                        Estructura:
                    </td>
                </tr>
                <tr>
                    <td>
		                <prot:ContenedorPropiedades id="dl" runat="server" ShowHeader="False" ShowFooter="False"
			                RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" DataMember="ColPresupuestoConstruccion" ColFiltroNombre="1" CellPadding="2">
			                <HeaderStyle CssClass="cabecera" Width="20%"></HeaderStyle>
			                <ItemTemplate>
				                <bs:Check id="C1" runat="server" Campo="activo" CampoText="Nombre" />
			                </ItemTemplate>
		                </prot:ContenedorPropiedades>
                    </td>
                </tr>
                <tr>
                    <td>
                        Cimentación:
                    </td>
                </tr>
                <tr>
                    <td>
		                <prot:ContenedorPropiedades id="ContenedorPropiedades1" runat="server" ShowHeader="False" ShowFooter="False"
			                RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" DataMember="ColPresupuestoConstruccion" ColFiltroNombre="2" CellPadding="2">
			                <HeaderStyle CssClass="cabecera" Width="20%"></HeaderStyle>
			                <ItemTemplate>
				                <bs:Check id="C2" runat="server" Campo="activo" CampoText="Nombre" />
			                </ItemTemplate>
		                </prot:ContenedorPropiedades>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
