<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Seguro.ascx.cs" Inherits="LCC.WebGestion.presupuestos.Seguro" %>
<table>
    <tr>
        <td>
            Compañía de Seguros:
        </td>
        <td>
            Núm. Póliza:
        </td>
        <td>
            Corredor de Seguros:
        </td>
    </tr>
    <tr>
        <td>
            <ed:PresSeguro id="ps" runat="server" />
        </td>
        <td>
            <prot:Texto id="npo" runat="server" Campo="NumPoliza" Width="90px" />
        </td>
        <td>
            <ed:PresCorredorSeguros id="cd" runat="server" />
        </td>
    </tr>
</table>
