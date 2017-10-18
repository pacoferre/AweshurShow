<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DocumentoAceptacionFirmado.ascx.cs" Inherits="LCC.WebGestion.presupuestos.DocumentoAceptacionFirmado" %>
<%@ Register Src="../elementos/Upload.ascx" TagName="Upload" TagPrefix="uc1" %>
<ed:VerArchivo id="vp" runat="server" ObjetoAsociado="DocumentoAceptacionFirmado" />
<uc1:Upload ID="Up" runat="server" NombreObjetoNegocio="Presupuesto" ObjetoAsociado="DocumentoAceptacionFirmado" ObjetoAsociadoUpload="DocumentoAceptacionFirmado" />&nbsp;
<bs:BotonNormal ID="bn" runat="server" Metodo="EliminarDocumentoAceptacion" Text="Eliminar" />
<prot:Etiqueta ID="et" runat="server" CalcPropiedad="EliminandoAceptacionFirmada"></prot:Etiqueta>