<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Configurar.aspx.cs" Inherits="LCC.WebGestion.presupuestos.Configurar" %>

<%@ Register Src="ConfTipoPresupuesto.ascx" TagName="ConfTipoPresupuesto" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <prot:Editor ID="eR" runat="server" EstiloBotoneraBusqueda="Ninguna" Width="100%" 
            PermiteModificar="True" EstiloBotonera="ArribayAbajo"
            NombreObjetoNegocio="Presupuesto" CssClass="general">
            <uc1:ConfTipoPresupuesto ID="ctp" runat="server" />
        </prot:Editor>
    </div>
    </form>
</body>
</html>
