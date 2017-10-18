<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_DocumentoModeloVersion" Codebehind="DocumentoModeloVersion.ascx.cs" %>
<ed:ProcesarProcesando id="pp" runat="server" />
<ed:VerArchivo id="v" runat="server" />
<bs:Check id="a2" runat="server" Campo="Activo" ToolTip="Documento activo" />
<prot:Etiqueta ID="e" runat="server" CalcPropiedad="StringEstado" />
