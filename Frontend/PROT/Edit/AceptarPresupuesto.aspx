<%@ Page Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_AceptarPresupuesto" Codebehind="AceptarPresupuesto.aspx.cs" %>
<%@ Register Src="Totales.ascx" TagName="Totales" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <prot:Editor id="eR" runat="server" EstiloBotoneraBusqueda="Ninguna" width="100%" PermiteAltas="False"
            PermiteEliminar="False" PermiteModificar="True" EstiloBotonera="Ninguna" NombreObjetoNegocio="Presupuesto"
            PermiteAltasConCopia="False" CssClass="general">
            <ele:CajaEdicion ID="C3" runat="server" Titulo="Aceptar Presupuesto">
                <table>
                    <tr>
                        <td>
                            División/Sucursal:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ed:DivisionSucursal id="d" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Cliente peticionario:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ed:SeleccionarCliente id="s" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Presupuesto:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ed:VerPresupuesto ID="vp" runat="server" />
                        </td>
                    </tr>
                   
                    <tr>
                        <td>
                            <uc1:Totales ID="tt" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <bs:BotonNormal ID="acp" runat="server" Text="Aceptar Presupuesto" Metodo="AceptarPresupuesto" PermisoClase="MET" PermisoSubClase="Presupuesto" Permiso="AceptarPresupuesto" />
                        </td>
                    </tr>
                </table>
            </ele:CajaEdicion>
        </prot:Editor>
    </div>
    </form>
</body>
</html>
