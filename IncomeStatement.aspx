<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.master" AutoEventWireup="true" CodeBehind="IncomeStatement.aspx.cs" Inherits="ShopManagement.IncomeStatement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <link  rel="stylesheet" href="Styles/PageStyle.css" type="text/css"/>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Panel ID="Panel5" runat="server" CssClass="panelTextBox" Width="1290px">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 3%; height: 21px;"></td>
                            <td colspan="3" style="height: 21px"></td>
                            <td style="width: 3%; height: 21px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 3%">&nbsp;</td>
                            <td style="width: 17%">
                                <asp:Label ID="Label4" runat="server" Text="Date" CssClass="label"></asp:Label>
                            </td>
                            <td style="width: 188px">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxes"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" TargetControlID="TextBox1" />
                            </td>
                            <td style="width: 57%">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxes"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" TargetControlID="TextBox2" />
                            </td>
                            <td style="width: 3%">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 3%">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                            <td style="width: 3%">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel6" runat="server" Width="1290px">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 428px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate" CssClass="btn" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel7" runat="server" CssClass="panelgrid" ScrollBars="Both" Width="1290px" Height="500px">
                    <asp:GridView ID="GridView1" runat="server" CssClass="gridview" style="left: 2px; top: -4px" Width="100%">
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
