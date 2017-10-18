<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_PresupuestoContacto" Codebehind="PresupuestoContacto.ascx.cs" %>
<%@ Register Src="../elementos/ClienteContacto.ascx" TagName="ClienteContacto" TagPrefix="uc1" %>
<table cellpadding=0 cellspacing=0>
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        Tipo de Contacto:
                    </td>
                </tr>
                <tr>
                    <td>
                        <ed:PresContactoTipo id="pc" runat="server" />&nbsp;
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <uc1:ClienteContacto id="c" runat="server" />
        </td>
    </tr>
</table>