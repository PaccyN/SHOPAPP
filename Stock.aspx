<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.master" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="ShopManagement.Stock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <link  rel="stylesheet" href="Styles/PageStyle.css" type="text/css"/>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Panel ID="Panel5" runat="server" CssClass="panelTextBox" Height="60px" Width="1290px">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 298px">
                                &nbsp;</td>
                            <td style="width: 343px">
                                <asp:Label ID="Label4" runat="server" CssClass="label" Text="Search"></asp:Label>
                            </td>
                            <td style="width: 34px">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/Image/excel.png" OnClick="ImageButton2_Click" Width="25px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 298px">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel6" runat="server" CssClass="panelgrid" Height="550px" Width="1290px" ScrollBars="Both">
                    <asp:GridView ID="GridView1" runat="server" CssClass="gridview" Width="100%">
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
