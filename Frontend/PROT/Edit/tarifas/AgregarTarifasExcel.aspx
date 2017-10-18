<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarTarifasExcel.aspx.cs"
    Inherits="LCC.WebGestion.presupuestos.tarifas.AgregarTarifasExcel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agregar/Modificar tarifas desde Excel</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <prot:Editor ID="eR" runat="server" EstiloBotoneraBusqueda="Ninguna" Width="100%"
            PermiteAltas="False" PermiteEliminar="False" PermiteModificar="True" EstiloBotonera="Ninguna"
            NombreObjetoNegocio="Presupuesto" PermiteAltasConCopia="False" CssClass="general">
            <ele:Cajaedicion ID="C3" runat="server" Titulo="Agregar/Modificar Tarifas">
                <table>
                    <tr>
                        <td align="center">
                            <bs:BotonNormal ID="acp" runat="server" Text="Agregar/Modificar Tarifas" Metodo="AceptarAgregarTarifasExcel" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <prot:Texto ID="tx" Campo="TarifasExcel" runat="server" Width="780" AlturaAutomatica="true" TextMode="MultiLine"></prot:Texto>
                        </td>
                    </tr>
                </table>
            </ele:Cajaedicion>
        </prot:Editor>
    </div>
    </form>
</body>
</html>
