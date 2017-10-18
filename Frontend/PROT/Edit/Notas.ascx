<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Notas" Codebehind="Notas.ascx.cs" %>
<%@ Register Src="../elementos/Notas.ascx" TagName="Notas" TagPrefix="uc1" %>
<ele:CajaEdicion id="C3" runat="server" Titulo="Notas">
    <uc1:Notas ID="n" runat="server" Coleccion="ColPresupuestoNota" NombreObjeto="PresupuestoNota" />
</ele:CajaEdicion>
