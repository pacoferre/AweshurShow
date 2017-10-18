<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_DatosFacturacion" Codebehind="DatosFacturacion.ascx.cs" %>
<ele:CajaEdicion ID="C3" runat="server" Titulo="Facturación">
    <table>
        <tr>
            <td>
                Forma de Pago:
            </td>
            <td>
                % Bonif.:
            </td>
            <td>IVA:
            </td>
            <td>
                <bs:Check id="gyb" runat="server" Campo="GastosYBfo" Text="Gastos y BFO Industrial" />
            </td>
        </tr>
        <tr>
            <td>
                <ed:TipoFormaPago id="tfp" runat="server" />&nbsp;
            </td>
            <td>
                <bs:Porcentaje id="bn" runat="server" Campo="Descuento" ToolTip="% Bonificación" />&nbsp;
            </td>
            <td>
                <ed:FacturaTipoIVA ID="iv" runat="server" />&nbsp;
            </td>
            <td>
                <bs:Porcentaje id="n1" runat="server" Campo="PorcentajeGastosGenerales" ToolTip="Gastos" />
                <bs:Porcentaje id="n2" runat="server" Campo="PorcentajeBfoIndustrial" ToolTip="BFO Industrial" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                Condiciones de Pago:
            </td>
        </tr>
        <tr>
            <td>
                <ed:PresCondicionesPago id="pcp" runat="server" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                Entidad Bancaria Aval:
            </td>
            <td>
                Estado del Aval:
            </td>
            <td>
                Fecha Aceptación:
            </td>
            <td>&nbsp;
                Importe:
            </td>
        </tr>
        <tr>
            <td>
                <ed:EntidadBancaria id="eb" runat="server" />&nbsp;
            </td>
            <td>
                <ed:PresAvalEstado id="pae" runat="server" />&nbsp;
            </td>
            <td>
                <bs:Fecha id="fa" runat="server" Campo="FechaAvalAceptacion" />
            </td>
            <td>
                &nbsp;
                <bs:MonedaConDecimales id="ia1" runat="server" Campo="ImporteAval" />
            </td>
        </tr>
    </table>
</ele:CajaEdicion>