<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Totales" Codebehind="Totales.ascx.cs" %>
<table>
    <tr>
        <td align=left><b>Totales</b>
        </td>
        <td align=right>Actual&nbsp;
        </td>
        <td align=right>Principal&nbsp;
        </td>
        <td align=right>Todos
        </td>
    </tr>
    <tr>
        <td>
            Presupuestado
        </td>
        <td>
            <prot:Texto id="t5" runat="server" AlineacionDerecha="true" CalcPropiedad="TotalUnidades" ReadOnly="true" Width="50px" />&nbsp;
            <prot:Texto id="t7" runat="server" AlineacionDerecha="true" CalcPropiedad="TotalVersion" ReadOnly="true" Width="80px" />&nbsp;
        </td>
        <td>
            <prot:Texto id="t1" runat="server" AlineacionDerecha="true" CalcPropiedad="TotalPresupuestado" ReadOnly="true" Width="80px" />&nbsp;
        </td>
        <td>
            <prot:Texto id="t2" runat="server" AlineacionDerecha="true" CalcPropiedad="TotalConAmpliaciones" ReadOnly="true" Width="80px" />
        </td>
    </tr>
    <tr>
        <td>
            Aceptado
        </td>
        <td>
            <prot:Texto id="t6" runat="server" AlineacionDerecha="true" CalcPropiedad="TotalUnidadesAceptado" ReadOnly="true" Width="50px" />&nbsp;
            <prot:Texto id="t8" runat="server" AlineacionDerecha="true" CalcPropiedad="TotalVersionAceptado" ReadOnly="true" Width="80px" />&nbsp;
        </td>
        <td>
            <prot:Texto id="t3" runat="server" AlineacionDerecha="true" CalcPropiedad="TotalAceptado" ReadOnly="true" Width="80px" />&nbsp;
        </td>
        <td>
            <prot:Texto id="t4" runat="server" AlineacionDerecha="true" CalcPropiedad="TotalAceptadoConAmpliaciones" ReadOnly="true" Width="80px" />
        </td>
    </tr>
</table>