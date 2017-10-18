<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesAceptarPresupuesto.aspx.cs"
    Inherits="LCC.WebGestion.presupuestos.desaceptacion.DesAceptarPresupuesto" %>
<%@ Register Src="Trabajos.ascx" TagName="Trabajos" TagPrefix="uc1" %>
<%@ Register Src="Facturas.ascx" TagName="Facturas" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <prot:Editor ID="eR" runat="server" EstiloBotoneraBusqueda="Ninguna" Width="100%"
            PermiteAltas="False" PermiteEliminar="False" PermiteModificar="True" EstiloBotonera="Ninguna"
            NombreObjetoNegocio="Presupuesto" PermiteAltasConCopia="False" CssClass="general">
            <ele:Cajaedicion ID="C3" runat="server" Titulo="Desaceptar Presupuesto">
                <table>
                    <tr>
                        <td>
                            Presupuesto:
                        </td>
                        <td>
                            <ed:VerPresupuesto ID="vp" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Obra:
                        </td>
                        <td>
                            <prot:Texto ID="ObAcep" runat="server" ReadOnly="true" ObjetoAsociado="Obra" Campo="NombreObra"
                                Width="580px" TextMode="MultiLine" Rows="1" />
                        </td>
                        <td>
                            <bs:EnlaceObjetoExterno ID="eoe" runat="server" URLEnlace="~/obras/Obra.aspx" ObjetoAsociado="Obra" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Cliente Principal:
                        </td>
                        <td>
                            <ed:VerCliente ID="vc" runat="server" />
                        </td>
                    </tr>
                </table>
                <table width="50%">
                    <tr>
                        <td>
                            <uc1:Trabajos ID="tr" runat="server" />
                        </td>
                        <td>
                            <uc2:Facturas ID="fac" runat="server" />
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td colspan="2">
                            <strong>Nunca podrá ser desaceptado un presupuesto con Facturas existentes.</strong><br />
                            <strong>La desaceptación del presupuesto conlleva la eliminación de las ampliaciones, la obra y todos sus trabajos existentes.</strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <bs:BotonNormal ID="acp" runat="server" Text="Desaceptar Presupuesto" Metodo="DesAceptarPresupuesto"
                                Pregunta="¿Está seguro/a de querer desaceptar este presupuesto?" PermisoClase="MET"
                                PermisoSubClase="Presupuesto" Permiso="DesAceptarPresupuesto" />
                        </td>
                        <td>
                            <bs:BotonSimple ID="cer" runat="server" OnClick="cer_Click" Text="Cerrar" />
                        </td>
                    </tr>
                </table>
            </ele:Cajaedicion>
        </prot:Editor>
    </div>
    </form>
</body>
</html>
