<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ConfTipoPresupuesto.ascx.cs"
    Inherits="LCC.WebGestion.presupuestos.configurar.ConfTipoPresupuesto" %>
<%@ Import Namespace="PROT.NegocioGeneral" %>
<ele:CajaInterna ID="ci21" runat="server" Titulo="Presupuesto" Width="910" Height="40">
    <table>
    <tr>
        <td>
            <ed:VerPresupuesto ID="vp" runat="server" />
        </td>
    </tr>
    </table>
</ele:CajaInterna>

    <ele:CajaInterna ID="ci5" runat="server" Titulo="Tipo Presupuesto" Width="910" Height="210">
    <table>
        <tr>
            <td>
                ¿Qué tipo de presupuesto geotécnico desea crear?
            </td>
        </tr>
        <tr>
            <td>
                <bs:RadioButton ID="tcla" runat="server" Campo="_TipoPresupuestoGeotecnico" AutoPostBack="true"
                    RepeatDirection="Vertical">
                    <asp:ListItem Value="0">Edificación</asp:ListItem>
                    <asp:ListItem Value="1">Obra Civil</asp:ListItem>
                </bs:RadioButton>
            </td>
        </tr>
        <tr>
            <td>
                ___________________________________________
            </td>
        </tr>
        <asp:Panel ID="ped" runat="server">
            <tr>
                <td>
                    <bs:Check ID="edi" runat="server" Campo="_EdificacionEdificio" />
                </td>
            </tr>
            <tr>
                <td>
                    <bs:Check ID="via" runat="server" Campo="_EdificacionViales" />
                </td>
            </tr>
            <tr>
                <td>
                    <prot:Texto ID="desc" Titulo="Descripción del programa de trabajo:" runat="server"
                        Campo="_DescripcionTrabajo" Width="250px" />
                </td>
            </tr>
            
        </asp:Panel>
        <asp:Panel ID="poc" runat="server">
            <tr>
                <td>
                    <bs:Check ID="pue" runat="server" Campo="_ObraCivilPuente" />
                </td>
            </tr>
            <tr>
                <td>
                    <bs:Check ID="car" runat="server" Campo="_ObraCivilCarretera" />
                </td>
            </tr>
        </asp:Panel>
        <tr>
            <td>
                ___________________________________________
            </td>
        </tr>
        <tr>
        <td>
            <bs:Check ID="cmit" runat="server" Text="Mostrar Informe Técnico" Campo="_MostrarInformeTecnico" />
        </td>
        </tr>
    </table>
    </ele:CajaInterna>

<table>
    <tr>
        <td rowspan="2">
            <ele:CajaInterna ID="C5" runat="server" Titulo="Sondeos" Width="300" Height="430">
                <table>
                    <tr>
                        <td>
                            <bs:Check ID="son" runat="server" Text="Sondeos" Campo="_Sondeos" />
                        </td>
                    </tr>
                </table>
                
                <table>
                <tr>
                <td>
                    <asp:Panel ID="psonde" runat="server">
                            <asp:Panel ID="p1" Width="250" runat="server" Style="display: none" CssClass="modalPopup">
                                <asp:Panel ID="pc" runat="server" CssClass="modalPopupHead" HorizontalAlign="Center">
                                    Nuevo Sondeo
                                </asp:Panel>
                                <prot:Editor ID="eI" runat="server" Width="100%" CssClass="especial" PermiteModificar="True"
                                    PermiteEliminar="False" PermiteAltas="True" NombreObjetoNegocio="PresupuestoSondeo"
                                    Campo="" EstiloBotonera="Abajo" SoloAltas="True" ColeccionPadre="ColPresupuestoSondeo"
                                    TienePopup="true" NombrePopup="mpe">
                                    <table>
                                        <tr>
                                            <td>
                                                N.Sondeo
                                            </td>
                                            <td>
                                                M
                                            </td>
                                            <td>
                                                M.I.
                                            </td>
                                            <td>
                                                S.P.T.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <prot:Numero ID="ns" runat="server" Campo="Numero" TWidth="60" />&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <prot:Numero ID="me" runat="server" Campo="Metros" AdmiteDecimales="true" TWidth="25" />&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <prot:Numero ID="mi" runat="server" Campo="Mi" TWidth="25" />&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <prot:Numero ID="spt" runat="server" Campo="Spt" TWidth="25" />
                                            </td>
                                        </tr>
                                    </table>
                                </prot:Editor>
                            </asp:Panel>
                            <prot:PopupEditor ID="pe" runat="server" PopupControlID="p1" BackgroundCssClass="modalBackground"
                                DropShadow="true" PopupDragHandleControlID="pc" />
                                
                            <prot:GridEnEditor ID="ged1" runat="server" Width="100%" CssClass="especial" DataMember="ColPresupuestoSondeo"
                                AutoGenerateColumns="False" CSSScroll="scrollBar" HeightScroll="150" ContieneCampos="True"
                                ConSelectorRegistro="True" ShowHeader="True" ColFiltroNombre="" BotonNuevoEnCabecera="True">
                                <AlternatingItemStyle CssClass="alternado"></AlternatingItemStyle>
                                <HeaderStyle CssClass="cabecera"></HeaderStyle>
                                <Columns>
                                    <asp:TemplateColumn Visible="False">
                                        <ItemTemplate>
                                            <%# ((BaseNegocio) Container.DataItem).Clave %>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="Nº Sondeos">
                                        <ItemTemplate>
                                            <prot:Numero ID="num" runat="server" Campo="Numero" TWidth="40" />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="Metros">
                                        <ItemTemplate>
                                            <prot:Numero ID="met" runat="server" Campo="Metros" TWidth="25" />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="M.I.">
                                        <ItemTemplate>
                                            <prot:Numero ID="mi" runat="server" Campo="Mi" TWidth="25" />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="S.P.T.">
                                        <ItemTemplate>
                                            <prot:Numero ID="spt" runat="server" Campo="Spt" TWidth="25" />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn>
                                        <ItemTemplate>
                                            <bs:BotonSimple ID="l2" runat="server" Text="Eliminar" Enabled="<%# ((BaseNegocio) Container.DataItem).PermisoEliminar %>"
                                                Visible="<%# ((BaseNegocio) Container.DataItem).EsEliminable %>" CausesValidation="false"
                                                CommandName="Delete"></bs:BotonSimple>
                                            <%# ((BaseNegocio) Container.DataItem).StringEstado %>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                                <PagerStyle HorizontalAlign="Right" Position="TopAndBottom" Mode="NumericPages" CssClass="adicional">
                                </PagerStyle>
                            </prot:GridEnEditor>
                    
                    <table>
                    <tr>
                        <td colspan="2">
                            <bs:Check ID="at" runat="server" Campo="_AceptarTarifa9001" Text="Aceptar Tarifa 9001" /> (Se pondrán a 0€ las tarifas de "TRABAJOS DE LABORATORIO")
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Sondeo:
                        </td>
                        <td>
                            <prot:Texto ID="tson" runat="server" Campo="_DescripcionSondeo" Width="150" TextMode="MultiLine"></prot:Texto>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            S.P.T.:
                        </td>
                        <td>
                            <prot:Texto ID="tspt" runat="server" Campo="_DescripcionSpt" Width="150" TextMode="MultiLine"></prot:Texto>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            M.I.:
                        </td>
                        <td>
                            <prot:Texto ID="tmi" runat="server" Campo="_DescripcionMi" Width="150" TextMode="MultiLine"></prot:Texto>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Muestra de agua:
                        </td>
                        <td>
                            <prot:Texto ID="tma" runat="server" Width="150" Campo="_DescripcionMuestraAgua" TextMode="MultiLine"> </prot:Texto>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Nivel freático:
                        </td>
                        <td>
                            <prot:Texto ID="nfr" runat="server" Width="150" Campo="_DescripcionNivelFreatico" TextMode="MultiLine"></prot:Texto>
                        </td>
                    </tr>
                    <tr>
                    <td colspan="2">
                        <bs:Check ID="mtls" runat="server" Text="Mostrar Trabajo Laboratorio" Campo="_MostrarTrabajoLaboratorio" />
                    </td>
                    </tr>
                </table>
                
                 </asp:Panel>
                </td>
                </tr>
                </table>
            </ele:CajaInterna>
        </td>
        <td style="vertical-align:top;">
            <ele:CajaInterna ID="cal" runat="server" Titulo="Calicatas" Width="300" Height="244">
                <table>
                    <tr>
                        <td>
                            <bs:Check ID="chca" runat="server" Campo="_Calicatas" />
                        </td>
                    </tr>
                    <tr>
                    <td>
                    
                    <asp:Panel id="pcal" runat="server">
                    <table>
                    <tr>
                        <td>
                            Nº Calicatas:
                            <prot:Numero ID="ncal" runat="server" Campo="_NumCalicatas" TWidth="30" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <bs:Check ID="divi" runat="server" Text="Dimensionamiento de viales" TextAlign="Right"
                                Campo="_DimensionamientoDeViales" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <bs:Check ID="ejcal" runat="server" Text="Ejecución de calicatas por parte del peticionario"
                                TextAlign="Right" Campo="_EjecucionCalicatas" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <bs:Check ID="acta" runat="server" Text="Aceptar Tarifa 9200" TextAlign="Right" Campo="_AceptarTarifa9200" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <prot:Texto ID="deca" runat="server" Titulo="Descripción" Campo="_DescripcionCalicatas"
                                Width="270" TextMode="MultiLine" />
                        </td>
                    </tr>
                     <tr>
                    <td colspan="2">
                        <bs:Check ID="mtlc" runat="server" Text="Mostrar Trabajo Laboratorio" Campo="_MostrarTrabajoLaboratorio" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>
                    </td>
                    </tr>
                </table>
            </ele:CajaInterna>
        </td>
        <td rowspan="2" style="vertical-align:top;">
            <ele:CajaInterna ID="Ca3" runat="server" Titulo="Resumen" Width="300" Height="430">
            </ele:CajaInterna>
        </td>
    </tr>
    <tr>
        <td style="vertical-align:top;">
            <ele:CajaInterna ID="Ca23" runat="server" Titulo="Penetros" Width="300" Height="180">
                <table>
                    <tr>
                        <td>
                            <bs:Check ID="chpe" runat="server" Campo="_Penetros" />
                        </td>
                    </tr>
                    <tr>
                    <td>
                    
                    <asp:Panel id="ppen" runat="server">
                    <table>
                    <tr>
                        <td>
                            Nº Penetros:
                            <prot:Numero ID="Npn" runat="server" Campo="_NumPenetros" TWidth="30" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <prot:Texto ID="dpen" Titulo="Descripción" Width="270" runat="server" Campo="_DescripcionPenetros"
                                TextMode="MultiLine" />
                        </td>
                    </tr>
                    </table>
                    </asp:Panel>
                    </td>
                    </tr>
                </table>
            </ele:CajaInterna>
        </td>
    </tr>
</table>
