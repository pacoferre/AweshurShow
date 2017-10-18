<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CopiarPresupuesto.aspx.cs"
    Inherits="LCC.WebGestion.presupuestos.CopiarPresupuesto" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <prot:Editor ID="eR" runat="server" EstiloBotoneraBusqueda="Ninguna" Width="100%"
            PermiteAltas="False" PermiteEliminar="False" PermiteModificar="True" EstiloBotonera="Ninguna"
            NombreObjetoNegocio="Presupuesto" PermiteAltasConCopia="False" CssClass="general">
            <ele:Cajaedicion ID="C3" runat="server" Titulo="Copiar Presupuesto">
                <table>
                    <tr>
                        <td>Sucursal destino:</td>
                        <td>
                            <ed:DivisionSucursalSencillo ID="dss" runat="server" Campo="C_IDDivisionSucursal" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <bs:Check ID="Dt" runat="server" Text="Datos" Campo="C_Datos" Checked="false" />
                        </td>
                        <td>
                            <bs:Check ID="Cl" runat="server" Text="Cliente" Campo="C_Cliente" Checked="false" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <bs:Check ID="Od" runat="server" Text="Otros Datos" Campo="C_Otros" Checked="false"/>
                        </td>
                        <td>
                            <bs:Check ID="Cn" runat="server" Text="Contactos (Si no se copia el cliente, el contacto principal tampoco se copiará)" Campo="C_Contactos" Checked="false"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <bs:Check ID="Ed" runat="server" Text="Editor de Tarifas" Campo="C_EditorTarifas" Checked="false"/>
                        </td>
                        <td>
                            <bs:Check ID="Lc" runat="server" Text="Localización" Campo="C_Localizacion"   Checked="false" />
                        </td>
                     </tr>
                     <tr>
                      <td>
                            <bs:Check ID="Fc" runat="server" Text="Facturación" Campo="C_Facturacion" Checked="false"/>
                        </td>
                     </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            Solo para Clase Presupuesto Oferta%
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <bs:Check ID="Of" runat="server" Text="Oferta %" Campo="C_Oferta" Checked="false" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <bs:BotonNormal ID="cp" runat="server" Text="Aceptar" Metodo="CopiarPresupuesto" />
                        </td>
                    </tr>
                </table>
            </ele:Cajaedicion>
        </prot:Editor>
    </div>
    </form>
</body>
</html>
