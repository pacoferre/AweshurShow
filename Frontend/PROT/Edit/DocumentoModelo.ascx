<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_DocumentoModelo" Codebehind="DocumentoModelo.ascx.cs" %>
<%@ Register Src="DocumentoModeloVersion.ascx" TagName="DocumentoModeloVersion" TagPrefix="uc1" %>
<prot:ListaTemplada id="r" runat="server" EsVistaDeObjeto="True" DataMember="Modelos"
    RepeatLayout="Flow" RepeatDirection="Horizontal" ContieneCampos="true" Width="100%" >
    <ItemStyle Width="150px" />
    <ItemTemplate>
        <uc1:DocumentoModeloVersion ID="b" runat="server"
            IDPresupuestoVersion='<%# IDPresupuestoVersion %>' IDGenDocModelo='<%# DataBinder.Eval(Container, "DataItem.ID") %>' />
    </ItemTemplate>
</prot:ListaTemplada>
