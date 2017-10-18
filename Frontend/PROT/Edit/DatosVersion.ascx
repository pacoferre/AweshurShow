<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_DatosVersion" Codebehind="DatosVersion.ascx.cs" %>
<%@ Register Src="../elementos/ClienteDelegacion.ascx" TagName="ClienteDelegacion" TagPrefix="uc1" %>
<div style="float:left; width:auto">
    <table>
        <tr>
            <td>
                Tipo/Estado:
            </td>
            <td>
                Emisión:
            </td>
            <td>
                &nbsp;Aceptación:
            </td>
            <td>
               <%-- &nbsp;Aplicación:--%>
            </td>
        </tr>
        <tr>
            <td>
                <b><prot:Etiqueta ID="e" runat="server" CalcPropiedad="Estado" /></b>
            </td>
            <td>
                <bs:Fecha id="fe" runat="server" Campo="FechaEmision" />
            </td>
            <td>&nbsp;
                <bs:Fecha id="fa" runat="server" Campo="FechaAceptacion" SoloLecturaDefinitivo="true" />
            </td>
            <td>&nbsp;
            <%--    <bs:Fecha id="fp" runat="server" Campo="FechaAplicacion" />--%>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                Observaciones:
            </td>
        </tr>
        <tr>
            <td>
                <prot:Texto ID="o" runat="server" Campo="Observaciones" Width="500px" TextMode="MultiLine" Rows="1" />
            </td>
        </tr>
    </table>
</div>
<div>
    <table>
        <tr>
            <td>Contacto alternativo:
            </td>
        </tr>
        <tr>
            <td>
                <ed:PresContacto ID="PresContacto1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <uc1:ClienteDelegacion id="ClD" runat="server" TextoNingunoCliente="(misma dirección que el presupuesto)"/>
            </td>
        </tr>
    </table>
</div>
