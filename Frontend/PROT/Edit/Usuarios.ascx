<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Usuarios" Codebehind="Usuarios.ascx.cs" %>
<table>
    <tr>
        <td>Creador:
        </td>
    </tr>
    <tr style="height:18px">
        <td>
            <prot:Texto ID="uc" runat="server" ReadOnly="true" CalcPropiedad="NombreUsuario_1" Width="180px" />
        </td>
    </tr>
    <tr>
        <td>Procedencia:
        </td>
    </tr>
    <tr>
        <td>
            <ed:PresUsuario ID="up" runat="server" Campo="IDUsuario_2" />
        </td>
    </tr>
    <tr>
        <td>Responsable:
        </td>
    </tr>
    <tr>
        <td>
            <ed:PresUsuario ID="ur" runat="server" Campo="IDUsuario_3" />
        </td>
    </tr>
    <tr>
        <td><asp:Label ID="f" runat="server" Text="Firma:" />
        </td>
    </tr>
    <tr>
        <td>
            <ed:PresUsuarioFirmaPresupuesto ID="uf" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="a" runat="server" Text="Aceptación:" />
        </td>
    </tr>
    <tr>
        <td>
            <prot:Texto ID="ua" runat="server" ReadOnly="true" CalcPropiedad="NombreUsuario_4" Width="180px" />
        </td>
    </tr>
</table>