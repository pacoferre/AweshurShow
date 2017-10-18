<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_FiltroPresupuesto" Codebehind="FiltroPresupuesto.ascx.cs" %>
<ele:CajaPeq id="C2" runat="server" Titulo="Filtro">
    <fil:RaizPanelBuscador id="bus" runat="server" NombreObjetoNegocio="Presupuesto">
        <table>
            <tr>
                <td>División:
                </td>
                <td>
                    <fil:Division id="dv" runat="server" OnSelectedIndexChanged="dv_SelectedIndexChanged" />
                </td>
                <td>
                    Comunidad:
                </td>
                <td colspan="2">
                    <fil:Comunidad id="com" runat="server" />
                </td>
                <td>
                    Sucursal:
                </td>
                <td>
                    <fil:Sucursal id="suc" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Año:
                </td>
                <td>
                    <fil:PresAnyo id="ag" runat="server" />
                </td>
                <td>Código:
                </td>
                <td colspan="2">
                    <fil:PresupuestosCodDesde id="pc" runat="server" />
                    <fil:PresupuestosCodHasta id="pch" runat="server" />
                </td>
                <td>
                    Estado:
                </td>
                <td>
                    <fil:PresEstado id="pe" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Emisión:
                </td>
                <td>
                    <fil:PresVersEmisionDesde id="e1" runat="server" />
                </td>
                <td>Hasta:
                </td>
                <td>
                    <fil:PresVersEmisionHasta id="e2" runat="server" />
                </td>
                <td>
                    Aceptados:
                </td>
                <td>
                    Tipo:
                </td>
                <td>
                    <fil:PresTipo id="tip" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Aceptación:
                </td>
                <td>
                    <fil:PresVersAceptacionDesde id="e3" runat="server" />
                </td>
                <td>Hasta:
                </td>
                <td>
                    <fil:PresVersAceptacionHasta id="e4" runat="server" />
                </td>
                <td>
                    <fil:PresVersAceptados id="pa" runat="server" />
                </td>
                <td>
                    Mat./Sub.:
                </td>
                <td>
                    <fil:TarifaMaterial id="mat" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Nom/Ap.:
                </td>
                <td colspan="2">
                    <fil:ContactoNombre id="cn" runat="server" />
                </td>
                <td colspan="2">
                    Teléfs.:
                    <fil:ContactoTelef id="ct" runat="server" />
                </td>
                <td>Email:
                </td>
                <td>
                    <fil:ContactoEmail id="ce" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Cod.Cliente:
                </td>
                <td>
                    <fil:ClienteCod id="tar" runat="server" />
                </td>
                <td>Nom.Cliente:
                </td>
                <td colspan="2">
                    <fil:PresCliente id="des" runat="server" />
                </td>
                <td>
                    Tipo:
                </td>
                <td>
                    <fil:ClienteTipo id="ctip" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Cod.Obra:
                </td>
                <td>
                    <fil:ObraCod id="o1" runat="server" />
                </td>
                <td>Nom.Obra:
                </td>
                <td colspan="2">
                    <fil:PresObraNombre id="obn" runat="server" />
                </td>
                <td>Tarifa:
                </td>
                <td>
                    <fil:TarifaCodDesde id="ta1" runat="server" />
                    <fil:TarifaCodHasta id="ta2" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Usuario:
                </td>
                <td colspan="2">
                    <fil:PresUsuario id="us" runat="server" />
                </td>
                <td colspan="4" style="text-align:right">
                    <bs:ControlFiltroApp ID="c" runat="server" DestinoNuevo="Presupuesto.aspx" />
                </td>
            </tr>
        </table>
    </fil:RaizPanelBuscador>
</ele:CajaPeq>
