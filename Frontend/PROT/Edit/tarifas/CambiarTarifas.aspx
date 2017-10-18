<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambiarTarifas.aspx.cs"
    Inherits="LCC.WebGestion.presupuestos.tarifas.CambiarTarifas" %>

<%@ Register Src="FacturasTarifas.ascx" TagName="FacturasTarifas" TagPrefix="uc1" %>
<%@ Register Src="VersionesTarifas.ascx" TagName="VersionesTarifas" TagPrefix="uc2" %>
<%@ Register Src="../desaceptacion/TrabajosTarifas.ascx" TagName="TrabajosTarifas"
    TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cambiar Tarifas</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <prot:Editor ID="eR" runat="server" EstiloBotoneraBusqueda="Ninguna" Width="100%"
            PermiteAltas="False" PermiteEliminar="False" PermiteModificar="True" EstiloBotonera="Ninguna"
            NombreObjetoNegocio="PresupuestoYTarifa" PermiteAltasConCopia="False" CssClass="general">
            <ele:Cajaedicion ID="C3" runat="server" Titulo="Cambiar Tarifas">
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
                            <ed:VerObra ID="vo" runat="server" />
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                        </td>
                        <td>
                            Código:
                        </td>
                        <td>
                            Concepto:
                        </td>
                        <td align="right">
                            Precio:
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top">
                            <strong>Tarifa Seleccionada:</strong>
                        </td>
                        <td style="vertical-align: top">
                            <prot:Texto ID="cod" runat="server" ObjetoAsociado="Tarifa" Campo="Codigo" Width="50px"
                                ReadOnly="true" />
                        </td>
                        <td style="vertical-align: top">
                            <prot:Texto ID="con" runat="server" CalcPropiedad="DescripcionTarifa" Width="500px"
                                TextMode="MultiLine" />
                        </td>
                        <td style="vertical-align: top">
                            <prot:Numero ID="pr" runat="server" Campo="Precio" AdmiteNegativos="true" AdmiteDecimales="true" AlineacionDerecha="true"
                                TWidth="100" />
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <uc3:TrabajosTarifas ID="trab" runat="server" />
                        </td>
                        <td>
                            <uc1:FacturasTarifas ID="fa" runat="server" ObjetoAsociado="Presupuesto" />
                        </td>
                        <td>
                            <uc2:VersionesTarifas ID="vtar" runat="server"  />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Si existen facturas no se podrá modificar ningún campo de la tarifa excepto si se tiene permisos.</strong>
                        </td>
                        <td>
                            <bs:BotonNormal ID="btns" runat="server" Text="Modificar" OnClick="btns_Click" Pregunta="¿Está seguro de querer modificar los campos de las tarifas marcados en naranja?"
                                PermisoClase="MET" PermisoSubClase="Tarifas" Permiso="ModificarTarifas" />
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
