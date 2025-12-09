<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.Master" AutoEventWireup="true" CodeBehind="PageClient.aspx.cs" Inherits="ShopManagement.PageClient" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content  ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <link  rel="stylesheet" href="Styles/PageStyle.css" type="text/css"/>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Panel ID="Panel5" runat="server" CssClass="panelTextBox">
                    <table class="auto-style1">
                        <tr>
                            <td style="height: 33px; width: 15px"></td>
                            <td style="height: 33px"></td>
                            <td style="height: 33px"></td>
                            <td style="height: 33px"></td>
                            <td style="height: 33px"></td>
                            <td style="height: 33px"></td>
                        </tr>
                        <tr>
                            <td style="width: 15px">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Client Name" CssClass="label"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Sex" CssClass="label"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textboxes">
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 15px">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Client Phone" CssClass="label"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Client Email" CssClass="label"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 15px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel6" runat="server">
                    <table class="auto-style1">
                        <tr>
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
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Update" />
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Delete" />
                            </td>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="View Deleted Client" />
                            </td>
                            <td>
                                <asp:Button ID="Button5" runat="server" Text="Print Client" />
                            </td>
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
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel7" runat="server" Height="300px" Width="1000px">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

