<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_VisorPresupuesto" Codebehind="VisorPresupuesto.ascx.cs" %>
<%@ Register Src="Notas.ascx" TagName="Notas" TagPrefix="uc9" %>
<%@ Register Src="Tareas.ascx" TagName="Tareas" TagPrefix="uc9" %>
<%@ Register Src="Documentos.ascx" TagName="Documentos" TagPrefix="uc10" %>
<%@ Register Src="Envios.ascx" TagName="Envios" TagPrefix="uc11" %>
<%@ Register Src="HojaDeDatos.ascx" TagName="HojaDeDatos" TagPrefix="uc8" %>
<%@ Register Src="OtrosDatosPresupuesto.ascx" TagName="OtrosDatosPresupuesto" TagPrefix="uc2" %>
<%@ Register Src="Tarifas.ascx" TagName="Tarifas" TagPrefix="uc4" %>
<%@ Register Src="DatosFacturacion.ascx" TagName="DatosFacturacion" TagPrefix="uc5" %>
<%@ Register Src="DatosOfertaPorc.ascx" TagName="DatosOfertaPorc" TagPrefix="uc6" %>
<%@ Register Src="Contactos.ascx" TagName="Contactos" TagPrefix="uc1" %>
<%@ Register Src="DatosPresupuesto.ascx" TagName="DatosPresupuesto" TagPrefix="uc1" %>
<%@ Register Src="Versiones.ascx" TagName="Versiones" TagPrefix="uc1" %>
<%@ Register Src="tarifas/EditorTarifas.ascx" TagName="EditorTarifas" TagPrefix="uc3" %>
<%@ Register Src="../elementos/googlemaps/MapaGoogle.ascx" TagName="MapaGoogle" TagPrefix="uc1" %>
<div style="float:left">
    <ed:Tabulador id="t1" runat="server" ControlASCX="dp" Indice="0" />
</div>
<div style="float:left">
    <ed:Tabulador id="tv" runat="server" ControlASCX="vs" Indice="1" />
</div>
<div style="float:left">
    <ed:Tabulador id="tn" runat="server" ControlASCX="nt" Indice="2" />
</div>
<div style="float:left">
    <ed:Tabulador id="ty" runat="server" ControlASCX="tt" Indice="3" />
</div>
<div style="float:left">
    <ed:Tabulador id="t2" runat="server" ControlASCX="ct" Indice="4" />
</div>
<div style="float:left">
    <ed:Tabulador id="t3" runat="server" ControlASCX="odp" Indice="5" />
</div>
<div style="float:left">
    <ed:Tabulador id="t4" runat="server" ControlASCX="dt" Indice="6" />
</div>
<div style="float:left">
    <ed:Tabulador id="t5" runat="server" ControlASCX="df" Indice="7" />
</div>
<div style="float:left">
    <ed:Tabulador id="t6" runat="server" ControlASCX="d4" Indice="8" />
</div>
<div style="float:left">
    <ed:Tabulador id="t8" runat="server" ControlASCX="hd" Indice="9" />
</div>
<div style="float:left">
    <ed:Tabulador id="t9" runat="server" ControlASCX="de" Indice="10" />
</div>
<div style="float:left">
    <ed:Tabulador id="ta" runat="server" ControlASCX="dv" Indice="11" />
</div>
<div style="float:left" >
    <ed:Tabulador id="tet" runat="server" ControlASCX="et" Indice="12" />
</div>
<div style="float:left" >
    <ed:Tabulador id="tg" runat="server" ControlASCX="mg" Indice="13" />
</div>
<br />
<uc1:DatosPresupuesto ID="dp" runat="server" Visible="false" />
<uc1:Versiones ID="vs" runat="server" Visible="false" />
<uc9:Notas ID="nt" runat="server" Visible="false" />
<uc9:Tareas ID="tt" runat="server" Visible="false" />
<uc1:Contactos ID="ct" runat="server" Visible="false" />
<uc2:OtrosDatosPresupuesto ID="odp" runat="server" Visible="false" />
<uc4:Tarifas ID="dt" runat="server" Visible="false" />
<uc5:DatosFacturacion ID="df" runat="server" Visible="false" />
<uc6:DatosOfertaPorc ID="d4" runat="server" Visible="false" />
<uc8:HojaDeDatos ID="hd" runat="server" Visible="false" />
<uc10:Documentos ID="de" runat="server" Visible="false" />
<uc11:Envios ID="dv" runat="server" Visible="false" />
<uc3:EditorTarifas ID="et" runat="server" Visible="false" />
<uc1:MapaGoogle id="mg" runat="server" Visible="false" />
