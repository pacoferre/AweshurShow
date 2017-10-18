<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Envios" Codebehind="Envios.ascx.cs" %>
<%@ Register Src="../elementos/comunicaciones/Comunicaciones.ascx" TagName="Comunicaciones" TagPrefix="uc1" %>
<ele:CajaEdicion ID="C3" runat="server" Titulo="Comunicaciones">
    <uc1:Comunicaciones ID="a" runat="server" />
</ele:CajaEdicion>