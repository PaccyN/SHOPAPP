<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.master" AutoEventWireup="true" CodeBehind="Expense.aspx.cs" Inherits="ShopManagement.Expense" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <link rel="stylesheet" href="Styles/PageStyle.css" type="text/css" />
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Panel ID="Panel5" runat="server" Width="1290px" CssClass="panelTextBox">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 18%">&nbsp;</td>
                            <td style="width: 15%">
                                <asp:Label ID="Label4" runat="server" Text="Expense Type Name" Width="200px" CssClass="label"></asp:Label>
                            </td>
                            <td style="width: 230px">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textboxes" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 52%">
                                <asp:Label ID="Label7" runat="server" Text="Description" CssClass="label"></asp:Label>
                            </td>
                            <td colspan="3" style="width: 46%">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                            <td colspan="2" style="width: 56%">&nbsp;</td>
                            <td colspan="3" style="width: 56%">&nbsp;</td>
                            <td style="width: 56%">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 18%">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Date Expense" CssClass="label"></asp:Label>
                            </td>
                            <td style="width: 230px">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxes"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" TargetControlID="TextBox1" />
                            </td>
                            <td style="width: 52%">
                                <asp:Label ID="Label8" runat="server" Text="Currency" CssClass="label"></asp:Label>
                            </td>
                            <td colspan="2" style="width: 22%">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                            <td colspan="4" style="width: 56%">&nbsp;</td>
                            <td colspan="3" style="width: 56%">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 18%; height: 31px"></td>
                            <td style="height: 31px">
                                <asp:Label ID="Label6" runat="server" Text="Amount Spent" CssClass="label"></asp:Label>
                            </td>
                            <td style="height: 31px; width: 230px;">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                            <td colspan="10" style="width: 56%; height: 31px"></td>
                        </tr>
                        <tr>
                            <td style="width: 18%; height: 31px"></td>
                            <td colspan="2" style="height: 31px"></td>
                            <td colspan="2" style="width: 56%; height: 31px"></td>
                            <td colspan="3" style="width: 56%; height: 31px"></td>
                            <td colspan="3" style="width: 56%; height: 31px">
                                <asp:Label ID="Label9" runat="server" Text="User Added" Width="150px"></asp:Label>
                            </td>
                            <td colspan="2" style="width: 56%; height: 31px"></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel6" runat="server" Width="1290px" CssClass="panelTextBox">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 232px">&nbsp;</td>
                            <td style="width: 190px">
                                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn" OnClick="Button1_Click" />
                            </td>
                            <td style="width: 177px">
                                <asp:Button ID="Button2" runat="server" Text="Delete" CssClass="btn" OnClick="Button2_Click" />
                            </td>
                            <td style="width: 156px">
                                <asp:Button ID="Button3" runat="server" Text="Update" CssClass="btn" OnClick="Button3_Click" />
                            </td>
                            <td style="width: 340px">
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel7" runat="server" Width="1290px" CssClass="panelgrid" Height="440px" ScrollBars="Both">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridview" OnRowCommand="GridView1_RowCommand" Width="100%">
                         <Columns>
                                   
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:ImageButton runat="server" ID="img" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px"/>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="Blue" ForeColor="white" />
                                        <ItemStyle />
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="IdExpense" HeaderText="Expense Id" SortExpression="IdExpense">
                                        <HeaderStyle Wrap="false" BackColor="Blue" ForeColor="white" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ExpenseTypeName" HeaderText="ExpenseType Name " SortExpression="ExpenseTypeName">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DateExpense" HeaderText="Date Expense" SortExpression="DateExpense">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="AmountSpent" HeaderText="Amount Spent" SortExpression="AmountSpent">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="UserAdded" HeaderText="Added by" SortExpression="UserAdded">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="ExpenseStatus" HeaderText="ExpenseStatus" SortExpression="ExpenseStatus">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                  
                                    <asp:BoundField DataField="Currency" HeaderText="Currency" SortExpression="Currency">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
