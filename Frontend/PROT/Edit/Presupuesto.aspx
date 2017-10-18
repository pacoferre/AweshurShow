<%@ Page Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Presupuesto" Codebehind="Presupuesto.aspx.cs" %>
<%@ Register Src="VisorPresupuesto.ascx" TagName="VisorPresupuesto" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <prot:Editor id="eR" runat="server" EstiloBotoneraBusqueda="ArribayAbajo" width="100%" PermiteAltas="True"
            PermiteEliminar="True" PermiteModificar="True" EstiloBotonera="ArribayAbajo" NombreObjetoNegocio="Presupuesto"
            PermiteAltasConCopia="False" CssClass="general" ConBuscarLista="true" AspxLista="Presupuestos.aspx">
            <uc1:VisorPresupuesto id="v" runat="server" />
        </prot:Editor>
    </div>
    </form>
</body>
</html>
