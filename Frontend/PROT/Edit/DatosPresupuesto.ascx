<%@ Control Language="C#" AutoEventWireup="true" Inherits="LCC.WebGestion.presupuestos.presupuestos_DatosPresupuesto"
    CodeBehind="DatosPresupuesto.ascx.cs" %>
<%@ Register Src="../elementos/ClienteDelegacion.ascx" TagName="ClienteDelegacion"
    TagPrefix="uc1" %>
<%@ Register Src="../elementos/ClienteContacto.ascx" TagName="ClienteContacto" TagPrefix="uc2" %>
<%@ Register Src="Usuarios.ascx" TagName="Usuarios" TagPrefix="uc3" %>
<ele:Cajaedicion ID="C3" runat="server" Titulo="Datos">
    <table>
        <tr>
            <td>
                División/Sucursal:
            </td>
            <td>
                Tipo de presupuesto:
            </td>
            <asp:Panel ID="tdv" runat="server">
            <td>
            </td>
            </asp:Panel>
            <td>
                Subtipo:
            </td>
            <td>
                Año:
            </td>
        </tr>
        <tr>
            <td>
                <ed:DivisionSucursal ID="d" runat="server" />
            </td>
            <td>
                <ed:PresTipo ID="pt" runat="server" AutoPostBack="true" />
                &nbsp;
            </td>
            
                <asp:Panel ID="Conf" runat="server">
                <td>
                    <bs:BotonNormal ID="btncon" runat="server" Text="Configurar" URLEnlace="~/presupuestos/configurar/Configurar.aspx"
                     Permiso="Ver" PermisoClase="NAV" PermisoSubClase="PRES" />
                    </td>
                </asp:Panel>
            
            <td>
                <prot:Texto ID="st" runat="server" Campo="SubTipo" Width="80px" />&nbsp;
            </td>
            <td>
                <prot:Texto ID="an" runat="server" Campo="Anyo" Width="35px" ReadOnly="true" ReadOnlyDefinitivo="true" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="rgl" runat="server">
        <table>
            <tr>
                <td>
                    Reglamentamentación:
                </td>
            </tr>
            <tr>
                <td>
                    <ed:PresTituloReglamento ID="pr" runat="server" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <table>
        <tr>
            <td>
                Emisión:
            </td>
            <td>
                &nbsp; PEM:
            </td>
            <td>
                Total Presupuestado:
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <bs:Fecha ID="fe" runat="server" Campo="FechaEmision" />
            </td>
            <td>
                &nbsp;
                <bs:MonedaConDecimales ID="pm" runat="server" Campo="PEM" />
                &nbsp;
            </td>
            <td>
                <prot:Texto ID="tp" runat="server" CalcPropiedad="TotalPrincipal" ReadOnly="true"
                    Width="80px" />&nbsp;
            </td>
            <td>
                <asp:Panel ID="Acp" runat="server">
                    <span class='atencion'>Aceptado</span>
            </td>
            <td>
                &nbsp;
                <bs:ComboSimple ID="fap" runat="server" Campo="AceptadoPorEscrito" AutoPostBack="true">
                    <asp:ListItem Selected="True" Value="1">Escrito</asp:ListItem>
                    <asp:ListItem Value="2">Descripci&#243;n</asp:ListItem>
                </bs:ComboSimple>
                <prot:Texto ID="APor" runat="server" Campo="AceptadoPor" Width="180px" />
                </asp:Panel>
                <asp:Panel ID="NoAcp" runat="server">
                    <b>No Aceptado</b>
            </td>
            <td>
                <bs:BotonNormal ID="aceptar" runat="server" Text="Aceptar Presupuesto" URLEnlace="~/presupuestos/AceptarPresupuesto.aspx"
                    DesactivarSiModificado="true" PermisoClase="MET" PermisoSubClase="Presupuesto"
                    Permiso="AceptarPresupuesto" />
                </asp:Panel>
            </td>
            <td>
                <ed:VerArchivo id="v" runat="server" ObjetoAsociado="DocumentoAceptacionFirmadoNulo" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                Nombre de la obra:
            </td>
        </tr>
        <tr>
            <td>
                <prot:Texto ID="ObNoAcep" runat="server" Campo="NombreObra" Width="580px" TextMode="MultiLine"
                    Rows="1" />
                <prot:Texto ID="ObAcep" runat="server" ReadOnly="true" ObjetoAsociado="Obra" Campo="NombreObra"
                    Width="580px" TextMode="MultiLine" Rows="1" />
                <bs:EnlaceObjetoExterno ID="vo" runat="server" URLEnlace="~/obras/Obra.aspx" ObjetoAsociado="Obra" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            Clase presupuesto:
                        </td>
                        <td>
                            Forma de entrada:
                        </td>
                        <td>
                            Estado:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ed:PresClase ID="cp" runat="server" />
                            &nbsp;
                        </td>
                        <td>
                            <ed:PresEntrada ID="pe" runat="server" />
                            &nbsp;
                        </td>
                        <td>
                            <ed:PresEstado ID="ps" runat="server" />
                        </td>
                        <td>
                         <asp:Panel ID="panany" runat="server">
                            <bs:RadioButton Campo="AnyoReglamento" ID="anyreg" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="2">2</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                            </bs:RadioButton>
                        </asp:Panel>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            Cliente peticionario:
                        </td>
                        <td>
                            CIF/NIF:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ed:SeleccionarCliente ID="s" runat="server" />
                        </td>
                        <td>
                            <prot:Cif ID="cif" runat="server" Campo="CIF" />
                        </td>
                        <td>
                            <bs:BotonNormal ID="cc" runat="server" Text="C" Metodo="CrearCliente" ToolTip="Crear cliente con los datos actuales de contacto y dirección" />
                        </td>
                    </tr>
                </table>
                <uc2:ClienteContacto ID="c" runat="server" ObjetoAsociado="PrimerContactoPrincipal" />
                <uc1:ClienteDelegacion ID="ClD" runat="server" />
                <table>
                    <tr>
                        <td>
                            Teléfono:
                        </td>
                        <td>
                            Teléfono 2:
                        </td>
                        <td>
                            Fax:
                        </td>
                        <td>
                            Email:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <bs:Telefono ID="t1" runat="server" Campo="Telefono" />
                            &nbsp;
                        </td>
                        <td>
                            <bs:Telefono ID="t2" runat="server" Campo="Telefono2" />
                            &nbsp;
                        </td>
                        <td>
                            <bs:Telefono ID="fx" runat="server" Campo="Fax" />
                            &nbsp;
                        </td>
                        <td>
                            <ed:Email ID="em" runat="server" Campo="Email" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="VTop">
                <uc3:Usuarios ID="us" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table>
                    <tr>
                        <td>
                            Inicio Obra:
                        </td>
                        <td>
                            &nbsp;Final Obra:
                        </td>
                        <td>
                            &nbsp;Meses:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <bs:Fecha ID="fio" runat="server" Campo="FechaIniObra" />
                        </td>
                        <td>
                            &nbsp;
                            <bs:Fecha ID="ffo" runat="server" Campo="FechaFinObra" />
                        </td>
                        <td>
                            &nbsp;
                            <bs:Numero ID="ms" runat="server" Campo="Meses" TWidth="40" />
                        </td>
                        <td>
                            &nbsp;
                            <bs:BotonNormal ID="cpr" runat="server" Text="Copiar Presupuesto" URLEnlace="~/presupuestos/CopiarPresupuesto.aspx"
                                Permiso="Ver" PermisoClase="NAV" PermisoSubClase="PRES" />
                        </td>
                        <td>
                            &nbsp;
                            <bs:BotonNormal ID="cop" runat="server" Text="Generar Oportunidad" Pregunta="¿Esta seguro de generar una oportunidad?"
                                Permiso="Ver" PermisoClase="NAV" PermisoSubClase="PRES" Metodo="GenerarOportunidad" />
                        </td>
                        <td>
                            &nbsp;
                            <bs:BotonNormal ID="desace" runat="server" Visible="false" Text="Desaceptar Presupuesto"
                                URLEnlace="~/presupuestos/desaceptacion/DesAceptarPresupuesto.aspx" PermisoClase="MET"
                                PermisoSubClase="Presupuesto" Permiso="DesAceptarPresupuesto" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</ele:Cajaedicion>
