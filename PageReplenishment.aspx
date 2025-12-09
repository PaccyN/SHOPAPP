<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="PageReplenishment.aspx.cs" Inherits="ShopManagement.PageReplenishment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <link  rel="stylesheet" href="Styles/PageStyle.css" type="text/css"/>
    <table style="width: 100%">
    <tr>
        <td>
            <asp:Panel ID="Panel5" runat="server" Width="300px">
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel7" runat="server" Height="80px" Width="390px">
                               
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 58px; height: 20px;">
                                            <asp:Label ID="Label12" runat="server" CssClass="label" Text="Search"></asp:Label>
                                        </td>
                                        <td style="width: 116px; height: 20px;">
                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="textboxes" Width="170px"></asp:TextBox>
                                        </td>
                                        <td style="height: 20px">
                                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/search-interface-symbol.png" OnClick="ImageButton3_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 58px">
                                            &nbsp;</td>
                                        <td style="width: 116px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                               
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="Panel8" runat="server" Height="520px" CssClass="panelgrid" ScrollBars="Both" Width="390px">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="gridview" OnRowCommand="GridView2_RowCommand">
                                    <Columns>
                                       <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:ImageButton runat="server" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px"></asp:ImageButton>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="Blue" ForeColor="white" />
                                        <ItemStyle />
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="IdItem" HeaderText="Item Id" SortExpression="IdItem">
                                        <HeaderStyle Wrap="false" BackColor="Blue" ForeColor="white" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                   
                                   <asp:BoundField DataField="ItemName" HeaderText="Item" SortExpression="ItemName">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                         <asp:BoundField DataField="Unity" HeaderText="Unit" SortExpression="Unity">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                   

                                   

                                  
                       
                                    </Columns>
                                </asp:GridView>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td>
            <asp:Panel ID="Panel6" runat="server" Width="700px">
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel9" runat="server" Width="890px" CssClass="panelTextBox">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 153px; height: 20px;"></td>
                                        <td colspan="2" style="height: 20px"></td>
                                        <td style="width: 107px; height: 20px;"></td>
                                        <td style="height: 20px"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 153px">
                                            <asp:Label ID="Label4" runat="server" Text="IdItem" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td style="width: 126px">
                                            <asp:TextBox ID="TextBox7" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td style="width: 106px">
                                            <asp:Label ID="Label7" runat="server" Text="RepleDate" Width="120px" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" TargetControlID="TextBox4" />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 153px">
                                            <asp:Label ID="Label5" runat="server" Text="ItemQuantity" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td style="width: 126px">
                                            <asp:TextBox ID="TextBox8" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td style="width: 107px">
                                            <asp:Label ID="Label8" runat="server" Text="SupplyName" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="Ndayizi"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 153px">
                                            <asp:Label ID="Label6" runat="server" Text="UnityReplePrice" CssClass="label"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="TextBox3" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td style="width: 107px">
                                            <asp:Label ID="Label9" runat="server" Text="SellingPrice" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="Panel10" runat="server" Width="890px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="height: 31px; width: 60px;"></td>
                                        <td style="height: 31px; width: 94px;">
                                            <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn" OnClick="Button1_Click" />
                                        </td>
                                        <td style="height: 31px; width: 121px;">
                                            <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn" OnClick="Button2_Click" />
                                        </td>
                                        <td style="height: 31px; width: 101px;">
                                            <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn" OnClick="Button3_Click" />
                                        </td>
                                        <td style="height: 31px; width: 108px;">
                                            <asp:Button ID="Button4" runat="server" Text="ViewDeleted" Width="170px" CssClass="btn" OnClick="Button4_Click" />
                                        </td>
                                        <td style="height: 31px; width: 80px;">
                                            <asp:TextBox ID="TextBox12" runat="server" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 60px">&nbsp;</td>
                                        <td style="width: 94px">
                                            &nbsp;</td>
                                        <td style="width: 121px">&nbsp;</td>
                                        <td style="width: 101px">&nbsp;</td>
                                        <td style="width: 108px">&nbsp;</td>
                                        <td style="width: 194px">&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="Panel11" runat="server" CssClass="panelgrid" ScrollBars="Both" Width="890px" Height="440px">
                                <asp:GridView ID="GridView1" runat="server" CssClass="gridview" style="left: 0px; top: 0px" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                                    <Columns>
                                        <%--<asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />--%>
                                         <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:ImageButton runat="server" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px"></asp:ImageButton>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="Blue" ForeColor="white" />
                                        <ItemStyle />
                                    </asp:TemplateField>
                                         <asp:BoundField DataField="IdReplinishment" HeaderText="Replinishment Id" SortExpression="IdReplinishment">
                                        <HeaderStyle Wrap="false" BackColor="Blue" ForeColor="white" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                   
                                   <asp:BoundField DataField="ItemName" HeaderText="Item" SortExpression="ItemName">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                         <asp:BoundField DataField="ItemQuantity" HeaderText="Item Quantity" SortExpression="ItemQuantity">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>   
                                    <asp:BoundField DataField="UnityPrice" HeaderText="Unity Price " SortExpression="UnityPrice">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>  
                                    <asp:BoundField DataField="SellingPrice" HeaderText="Selling Price " SortExpression="SellingPrice">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField> 
                                     <asp:BoundField DataField="TotalPrice" HeaderText=" Total Price " SortExpression="TotalPrice">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                      <asp:BoundField DataField="ReplinishmentDate" HeaderText=" Replinishment Date " SortExpression="ReplinishmentDate">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField> 
                                    <asp:BoundField DataField="SupplierName" HeaderText=" SupplierName " SortExpression="SupplierName">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="UserAdded" HeaderText=" UserAdded " SortExpression="UserAdded">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DateAdded" HeaderText=" DateAdded " SortExpression="DateAdded">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                   </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>
</asp:Content>
