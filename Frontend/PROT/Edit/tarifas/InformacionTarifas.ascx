<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.tarifas.presupuestos_tarifas_InformacionTarifas" Codebehind="InformacionTarifas.ascx.cs" %>
<asp:Image ImageAlign="Bottom" ID="l" ImageUrl="~/img/inf.gif" runat="server" />
<asp:Panel ID="p" runat="server" CssClass="PCE" HorizontalAlign="Right" Width="700px">
</asp:Panel>
<ajaxToolkit:PopupControlExtender ID="e" runat="server" TargetControlID="l"
    PopupControlID="p" Position="Left" OffsetX="-500" OffsetY="20" />
<ajaxToolkit:DynamicPopulateExtender ID="dp" runat="server"
    TargetControlID="p"
    ClearContentsDuringUpdate="false" 
    PopulateTriggerControlID="l" 
    ServiceMethod="InfoPres"
    ServicePath="~/serviciosweb/IPres.asmx" />
    