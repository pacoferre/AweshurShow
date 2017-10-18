<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_OtrosDatosPresupuesto" Codebehind="OtrosDatosPresupuesto.ascx.cs" %>
<%@ Register Src="Colaboradores.ascx" TagName="Colaboradores" TagPrefix="uc2" %>
<%@ Register Src="PreciosCompetencia.ascx" TagName="PreciosCompetencia" TagPrefix="uc2" %>
<ele:CajaEdicion ID="C3" runat="server" Titulo="Otros Datos">
    <table>
        <tr>
            <td>
                Observaciones:
            </td>
        </tr>
        <tr>
            <td>
                <prot:Texto id="ob" runat="server" Campo="Observaciones" Width="550px" />
            </td>
        </tr>
        <tr>
            <td>
                Programa - Presupuesto para:
            </td>
        </tr>
        <tr>
            <td>
                <ed:PresConcepto id="pc" runat="server" />
                <bs:Check id="mtb" runat="server" Campo="MostrarTotalMenosBonificacion" Text="Mostrar total menos bonificación"/>
            </td>
        </tr>
        <tr>
            <td>
                Honorarios Mensuales de Referencia:
            </td>
        </tr>
        <tr>
            <td>
                <bs:MonedaConDecimales id="ia" runat="server" Campo="_HonorariosMensualesReferencia" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                Nota:
            </td>
        </tr>
        <tr>
            <td>
                <prot:Texto id="nt" runat="server" Campo="Nota" Width="550px" TextMode="MultiLine" Rows="1" />
            </td>
        </tr>
    </table>
    <table style="width:550px">
        <tr>
            <td style="width:50%">
                <uc2:Colaboradores ID="cl" runat="server" />
            </td>
            <td style="width:50%">
                <uc2:PreciosCompetencia ID="p" runat="server" />
            </td>
        </tr>
    </table>
</ele:CajaEdicion>
