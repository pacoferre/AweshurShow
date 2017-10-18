<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_Documentos" Codebehind="Documentos.ascx.cs" %>
<%@ Register Src="../elementos/documentos/Documentos.ascx" TagName="Documentos" TagPrefix="uc10" %>
<%@ Register Src="DocumentoModelo.ascx" TagName="DocumentoModelo" TagPrefix="uc1" %>
<%@ Register Src="DocumentoAceptacionFirmado.ascx" TagName="DocumentoAceptacionFirmado" TagPrefix="uc2" %>
<%@ Import Namespace="PROT.NegocioGeneral"%>
<ele:CajaEdicion ID="C2" runat="server" Titulo="Documentos">
    <asp:Panel ID="p" runat="server">
    <table class="especial" style="width:100%">
        <tr class="cabecera">
            <td style="width:10px">
                Vers./Amp.
            </td>
            <td>
                <prot:ListaTemplada id="r" runat="server" EsVistaDeObjeto="True" DataMember="Modelos"
                    RepeatLayout="Flow" RepeatDirection="Horizontal" ContieneCampos="true" Width="100%">
                    <ItemStyle Width="150px" Font-Bold="true" />
                    <ItemTemplate>
                        <%# DataBinder.Eval(Container, "DataItem.NomCompleto") %>
                    </ItemTemplate>
                </prot:ListaTemplada>
            </td>
            <td style="width:10%">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <prot:ListaTemplada ID="j" runat="server" EsVistaDeObjeto="True" DataMember="ListaVersiones" 
                        RepeatLayout="Table" RepeatDirection="Vertical" ContieneCampos="true" CssClass="especial"
                        Width="100%" >
                    <ItemTemplate>
                        <div style="width:90px; height:20px">
                            <%# DataBinder.Eval(Container, "DataItem.Concepto") %>
                        </div>
                    </ItemTemplate>
                </prot:ListaTemplada>
            </td>
            <td>
                <prot:ListaTemplada ID="v" runat="server" EsVistaDeObjeto="True" DataMember="ListaVersiones" 
                        RepeatLayout="Table" RepeatDirection="Vertical" ContieneCampos="true" CssClass="especial"
                        Width="100%" >
                    <ItemTemplate>
                        <uc1:DocumentoModelo ID="m" runat="server"
                            IDPresupuestoVersion='<%# DataBinder.Eval(Container, "DataItem.IDPresupuestoVersion") %>' />
                    </ItemTemplate>
                </prot:ListaTemplada>
            </td>
            <td style="width:10%">
                &nbsp;
            </td>
        </tr>
    </table>
    </asp:Panel>
    <ele:CajaInterna id="ad" Titulo="Documento de aceptación firmado por el cliente" runat="server">
        <uc2:DocumentoAceptacionFirmado id="df" runat="server" />
    </ele:CajaInterna>    
    <ele:CajaInterna id="t" Titulo="Documentos adjuntos manuales" runat="server">
        <uc10:Documentos ID="de" runat="server"
            NombreObjetoNegocio="PresupuestoVersionDocumento"
            ColeccionPadre="ColPresupuestoVersionDocumento"
            ObjetoAsociadoUpload="PresupuestoVersionDocumento_0"
            ColFiltroNombre="a"
            HeightScroll="150"/>
    </ele:CajaInterna>
</ele:CajaEdicion>

