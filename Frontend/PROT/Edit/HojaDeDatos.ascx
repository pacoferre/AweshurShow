<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_HojaDeDatos" Codebehind="HojaDeDatos.ascx.cs" %>
<%@ Register Src="HojaDeDatosObra.ascx" TagName="HojaDeDatosObra" TagPrefix="uc1" %>
<%@ Register Src="Misiones.ascx" TagName="Misiones" TagPrefix="uc2" %>
<%@ Register src="Seguro.ascx" tagname="Seguro" tagprefix="uc3" %>
<ele:CajaEdicion ID="C3" runat="server" Titulo="Hoja Datos">
<uc3:Seguro ID="s" runat="server" />
    <table>
        <tr>
            <td>Estado de ejecución de la obra:
            </td>
            <td>
                <bs:Check id="e1" runat="server" Campo="EstadoEmpezada" Text="Iniciada" />
            </td>
            <td>
                <bs:Check id="e2" runat="server" Campo="EstadoConstPreexistente" Text="Preexistente" />
            </td>
            <td>
                <bs:Check id="e3" runat="server" Campo="EstadoRehabilitacion" Text="Rehabilitación" />
            </td>
            <td>
                <bs:Check id="e4" runat="server" Campo="EstadoObraNueva" Text="Obra Nueva" />
            </td>
            <td>
                <bs:Check id="e5" runat="server" Campo="EstadoTerminada" Text="Terminada" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>Autor del Proyecto:</td>
            <td>Director de la obra:</td>
            <td>Director de la ejecución de la obra:</td>
        </tr>
        <tr>
            <td><prot:Texto id="id1" runat="server" Campo="_AutorDelProyecto"/>
            </td>
            <td><prot:Texto id="id2" runat="server" Campo="_DirectorDeObra"/>
            </td>
            <td><prot:Texto id="id3" runat="server" Campo="_DirectorEjecucion"/>
            </td>
        </tr>
    </table>
    <uc1:HojaDeDatosObra id="h" runat="server" />
</ele:CajaEdicion>


