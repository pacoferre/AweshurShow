<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_DatosOfertaPorc" Codebehind="DatosOfertaPorc.ascx.cs" %>
<%@ Register Src="Misiones.ascx" TagName="Misiones" TagPrefix="uc1" %>
<ele:CajaEdicion ID="C3" runat="server" Titulo="Oferta %">
    <table>
        <tr>
            <td>Grupo de Misiones:
            </td>
        </tr>
        <tr>
            <td>
                <ed:PresMisionGrupo id="pm" runat="server" OnSelectedIndexChanged="pm_SelectedIndexChanged" />
            </td>
        </tr>
    </table>
    <uc1:Misiones id="m1" runat="server" />
</ele:CajaEdicion>