<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="ShopManagement.DashBoard" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Panel ID="Panel5" runat="server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Panel ID="Panel6" runat="server" Height="300px" Width="300px">
                    <asp:Chart ID="Chart4" runat="server">
                        <series>
                            <asp:Series Name="Series1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisY>
                                    <MajorGrid Enabled="False" />
                                    <LabelStyle Enabled="False" />
                                </AxisY>
                                <AxisX>
                                    <MajorGrid Enabled="False" />
                                </AxisX>
                            </asp:ChartArea>
                        </chartareas>
                        <Titles>
                            <asp:Title Font="Century Gothic, 10pt, style=Bold" ForeColor="Blue" Name="Title1" Text="Chart Client By Sex">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel8" runat="server" Height="300px" Width="300px">
                    <asp:Chart ID="Chart5" runat="server" Palette="None" PaletteCustomColors="192, 192, 255; Purple; 192, 0, 192; Olive; Green" OnLoad="Chart5_Load">
                        <Series>
                            <asp:Series ChartType="Pie" Legend="Legend1" Name="Series1">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Docking="Bottom" Name="Legend1" Alignment="center">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Font="Century Gothic, 10pt, style=Bold" ForeColor="Blue" Name="Title1" Text="Replenishment bt Item Category">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel10" runat="server" Height="300px" Width="300px">
                    <asp:Chart ID="Chart6" runat="server">
                        <Series>
                            <asp:Series Name="Series1">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel7" runat="server">
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel9" runat="server">
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
