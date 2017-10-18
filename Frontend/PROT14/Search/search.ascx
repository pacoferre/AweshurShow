<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="search.ascx.cs" Inherits="SaerFaxWeb.mant.entities.search" %>
<div class="yui-panel" style="visibility: visible;">
    <div class="hd" id="hd1" runat="server" style="margin-bottom: 1px; cursor:pointer;">
        <span style="cursor: default">Search</span>
    </div>
    <div class="bd" style="padding:4px">
        <fil:RaizPanelBuscador ID="bus" runat="server" NombreObjetoNegocio="Entity" CssClass="petition">
            <table style="width:600px;">
                <tbody>
                    <tr>
                        <td style="width:180px">
                            <label>
                                Operations center
                            </label>
                        </td>
                        <td>
                            <fil:OperationsCenter ID="oc" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                Entity type
                            </label>
                        </td>
                        <td>
                            <fil:EntityTypeWA ID="et" runat="server" />
                        </td>
                    </tr>
                    <tr id="trauto" runat="server">
                        <td>
                            <label>
                                Entity
                            </label>
                        </td>
                        <td>
                            <fil:EntitiesByEntityWA ID="n" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                Top
                            </label>
                        </td>
                        <td>
                            <fil:Top ID="tp" runat="server" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </fil:RaizPanelBuscador>
    </div>
</div>
