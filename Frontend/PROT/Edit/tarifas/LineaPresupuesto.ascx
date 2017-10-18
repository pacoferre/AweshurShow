<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="LCC.WebGestion.presupuestos.tarifas.presupuestos_tarifas_LineaPresupuesto" Codebehind="LineaPresupuesto.ascx.cs" %>
<%@ Register Src="InformacionTarifas.ascx" TagName="InformacionTarifas" TagPrefix="uc1" %>
<%@ Import Namespace="PROT.NegocioGeneral"%>
<table>
    <tr>
        <td>
            <bs:Numero ID="t" runat="server" Campo="Codigo" TWidth="35" ReadOnly="true" />
        </td>
        <td>
            <bs:Numero ID="e" runat="server" Campo="CodigoENAC" TWidth="35" ReadOnly="true" />
        </td>
        <td>
            <prot:Texto ID="c" runat="server" Campo="Concepto" Width="425px"
                TextMode="MultiLine" Rows="1" />
        </td>
        <td>
            <bs:BotonNormal ID="r" runat="server" Metodo="Restaurar" Text="X" Width="10px" Tooltip="Restablecer Descripción de la tarifa" />
        </td>
        <td>
            <bs:MonedaConDecimales ID="p" runat="server" Campo="Precio" AlineacionDerecha="true" AdmiteNegativos="true" />
        </td>
        <td>
            <uc1:InformacionTarifas ID="it" runat="server" />
        </td>
        <td>
            <ed:UnidadesTarifa ID="u" runat="server" />
        </td>
        <td>
            <bs:Numero ID="d" runat="server" Campo="DivisorUnidades" AdmiteNegativos="false" TWidth="25"
                AlineacionDerecha="true" />
        </td>
        <td>
            <bs:MonedaConDecimales ID="z" runat="server" ReadOnly="true" SiempreLeerNoGuardar="True"
                Campo="Total" AlineacionDerecha="true" />
        </td>
        <td>
            <bs:Check ID="a" runat="server" Campo="Aceptada" />
        </td>
        <td>
            <bs:Check ID="g" runat="server" Campo="AceptadaGeo" />
        </td>
        <td>
            <bs:Check ID="i" runat="server" Campo="Imprimir" />
        </td>
        <td>
            <prot:Texto ID="Mat" runat="server" Campo="Material" TextMode="SingleLine" Rows="1" ReadOnly="true" Width="150" />
        </td>
    </tr>
</table>
