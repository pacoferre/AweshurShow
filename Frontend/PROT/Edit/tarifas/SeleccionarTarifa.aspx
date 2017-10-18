<%@ Page Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.tarifas.presupuestos_tarifas_SeleccionarTarifa_ASPX" Codebehind="SeleccionarTarifa.aspx.cs" %>
<%@ Register Src="SeleccionarTarifa.ascx" TagName="SeleccionarTarifa" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <prot:Editor id="eR" runat="server" EstiloBotoneraBusqueda="Ninguna" width="100%" PermiteAltas="True"
            PermiteEliminar="True" PermiteModificar="True" EstiloBotonera="Ninguna" NombreObjetoNegocio="Presupuesto"
            PermiteAltasConCopia="False" CssClass="general">
            <prot:Editor id="eI" runat="server" CssClass="especial" PermiteModificar="True"
                PermiteEliminar="False" PermiteAltas="True" NombreObjetoNegocio="PresupuestoVersion" Campo=""
                EstiloBotonera="Ninguna" SoloAltas="False" ColeccionPadre="ColPresupuestoVersion">
                <uc2:SeleccionarTarifa id="s" runat="server" />
            </prot:Editor>
        </prot:Editor>
    </div>
    </form>
</body>
</html>
