<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="PageSales.aspx.cs" Inherits="ShopManagement.PageSales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <link rel="stylesheet" href="Styles/PageStyle.css" type="text/css" />
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Width="1300px">
        <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <HeaderTemplate>
                Sales<br />
            </HeaderTemplate>
            <ContentTemplate>
                <asp:Panel ID="Panel5" runat="server" Width="1300px" Height="570px">
                    <table>
                        <tr>
                            <td>
                                <asp:Panel ID="Panel1" runat="server" Height="640px" Width="450px">
                                    <asp:Panel ID="Panel11" runat="server" Height="50px" Width="450px" CssClass="panelTextBox">
                                        <table>
                                            <tr>
                                                <td style="width: 225px">
                                                    <asp:Label ID="Label3" runat="server" CssClass="label" Text="Search"></asp:Label>
                                                </td>
                                                <td style="width: 342px">
                                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="textboxes"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" Width="30px" ImageUrl="~/Image/search-interface-symbol.png" OnClick="ImageButton1_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 225px">&nbsp;</td>
                                                <td style="width: 342px">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel12" runat="server" CssClass="panelgrid" Height="520px" ScrollBars="Both" Width="450px">
                                        <asp:GridView ID="GridView2" runat="server" CssClass="gridview" Width="100px" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand">
                                            <Columns>

                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:ImageButton runat="server" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px"></asp:ImageButton>
                                                    </ItemTemplate>
                                                    <HeaderStyle BackColor="Blue" ForeColor="White" />
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="IdClient" HeaderText="Id Client" SortExpression="IdClient">
                                                    <HeaderStyle Wrap="False" BackColor="Blue" ForeColor="White" />
                                                    <ItemStyle Wrap="False" />
                                                </asp:BoundField>

                                                <asp:BoundField DataField="ClientName" HeaderText="Client Name" SortExpression="ClientName">
                                                    <HeaderStyle Wrap="False" />
                                                    <ItemStyle Wrap="False" />
                                                </asp:BoundField>

                                            </Columns>
                                        </asp:GridView>
                                    </asp:Panel>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="Panel7" runat="server" Width="1270px" CssClass="panelTextBox" Height="640px">
                                    <table class="auto-style1">
                                        <tr>
                                            <td style="width: 532px">
                                                <asp:Panel ID="Panel8" runat="server" Width="820px" CssClass="panelTextBox">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td style="width: 19px">&nbsp;</td>
                                                            <td style="width: 63px">&nbsp;</td>
                                                            <td style="width: 131px" colspan="2">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 19px; height: 41px;"></td>
                                                            <td style="width: 63px; height: 41px;">
                                                                <asp:Label ID="Label1" runat="server" Text="Id Client" CssClass="label" Width="100px"></asp:Label>
                                                            </td>
                                                            <td style="width: 131px; height: 41px;">
                                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxes" Width="100px"></asp:TextBox>
                                                            </td>
                                                            <td style="width: 131px; height: 41px;">
                                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="textboxes" Width="100px"></asp:TextBox>
                                                            </td>
                                                            <td style="height: 41px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 41px; width: 19px"></td>
                                                            <td style="height: 41px; width: 63px">
                                                                <asp:Label ID="Label2" runat="server" Text="Sale Date" CssClass="label"></asp:Label>
                                                            </td>
                                                            <td style="width: 131px; height: 41px;" colspan="2">
                                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxes" Width="170px"></asp:TextBox>
                                                                <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" TargetControlID="TextBox2" BehaviorID="_content_TextBox2_CalendarExtender" />
                                                            </td>
                                                            <td style="height: 41px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 19px">&nbsp;</td>
                                                            <td style="width: 63px">&nbsp;</td>
                                                            <td style="width: 131px" colspan="2">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 532px">
                                                <asp:Panel ID="Panel9" runat="server" Width="820px" CssClass="panelTextBox">
                                                    <table class="auto-style1">
                                                        <tr>
                                                            <td style="width: 276px">
                                                                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn" OnClick="Button1_Click" />
                                                            </td>
                                                            <td style="width: 266px">
                                                                <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn" OnClick="Button2_Click" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn" />
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="textboxes" EnableTheming="False" Width="30px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 276px">&nbsp;</td>
                                                            <td style="width: 266px">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 532px">
                                                <asp:Panel ID="Panel10" runat="server" Width="820px" ScrollBars="Both" CssClass="panelgrid" Height="400px">
                                                    <asp:GridView ID="GridView1" runat="server" CssClass="gridview" Style="left: 0px; top: 0px" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                                                        <Columns>

                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:ImageButton runat="server" ID="img3" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px"></asp:ImageButton>
                                                                </ItemTemplate>
                                                                <HeaderStyle BackColor="Blue" ForeColor="White" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="IdSale" HeaderText="IdSale" SortExpression="IdSale">
                                                                <HeaderStyle Wrap="False" BackColor="Blue" ForeColor="White" />
                                                                <ItemStyle Wrap="False" />
                                                            </asp:BoundField>

                                                            <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName">
                                                                <HeaderStyle Wrap="False" />
                                                                <ItemStyle Wrap="False" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" SortExpression="DateAdded">
                                                                <HeaderStyle Wrap="False" />
                                                                <ItemStyle Wrap="False" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" SortExpression="SaleDate">
                                                                <HeaderStyle Wrap="False" />
                                                                <ItemStyle Wrap="False" />
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
                </asp:Panel>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
            <HeaderTemplate>
                Sale Details<br />
            </HeaderTemplate>
            <ContentTemplate>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel13" runat="server" Height="560px" Width="300px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="height: 69px">
                                            <asp:Panel ID="Panel16" runat="server" Height="65px" Width="380px" CssClass="panelTextBox">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td style="height: 31px">
                                                            <asp:Label ID="Label4" runat="server" Text="Search"></asp:Label>
                                                        </td>
                                                        <td style="height: 31px; width: 250px;">
                                                            <asp:TextBox ID="TextBox6" runat="server" Width="100px" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                        <td style="height: 31px; width: 200px;">
                                                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/search-interface-symbol.png" OnClick="ImageButton2_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3">&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel17" runat="server" CssClass="panelgrid" Height="490px" ScrollBars="Both" Width="380px">
                                                <asp:GridView ID="GridView3" runat="server" CssClass="gridview-saledetail" Width="100%" AutoGenerateColumns="False" OnRowCommand="GridView3_RowCommand">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:ImageButton runat="server" ID="img" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px" />
                                                            </ItemTemplate>
                                                            <HeaderStyle BackColor="Blue" ForeColor="White" />
                                                        </asp:TemplateField>

                                                        <asp:BoundField DataField="IdSale" HeaderText="Id Sale" SortExpression="IdSale">
                                                            <HeaderStyle Wrap="False" BackColor="Blue" ForeColor="White" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
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
                            <asp:Panel ID="Panel14" runat="server" Height="490px" Width="380px">
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel18" runat="server" Height="150px" CssClass="panelTextBox" Width="490px">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td style="width: 71px">
                                                            <asp:Label ID="Label5" runat="server" Text="IdSale"></asp:Label>
                                                        </td>
                                                        <td colspan="2" style="width: 198px">
                                                            <asp:TextBox ID="TextBox7" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                        <td colspan="3" style="width: 228px">
                                                            <asp:TextBox ID="TextBox11" runat="server" Width="90px" Style="margin-left: 0px" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 71px">
                                                            <asp:Label ID="Label6" runat="server" Text="IdItem"></asp:Label>
                                                        </td>
                                                        <td colspan="2" style="width: 198px">
                                                            <asp:TextBox ID="TextBox8" runat="server" Width="80px" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                        <td colspan="3" style="width: 228px">
                                                            <asp:TextBox ID="TextBox12" runat="server" Width="90px" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 71px">
                                                            <asp:Label ID="Label7" runat="server" Text="ItemQuantity"></asp:Label>
                                                        </td>
                                                        <td style="width: 228px">
                                                            <asp:TextBox ID="TextBox9" runat="server" Width="60px" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                        <td colspan="2" style="width: 228px">
                                                            <asp:TextBox ID="TextBox13" runat="server" Width="60px" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 228px">
                                                            <asp:TextBox ID="TextBox14" runat="server" Width="60px" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 228px">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 71px; height: 33px">
                                                            <asp:Label ID="Label8" runat="server" Text="SellingPrice"></asp:Label>
                                                        </td>
                                                        <td colspan="5" style="height: 33px; width: 228px">
                                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel19" runat="server" Height="80px" CssClass="panelTextBox" Width="490px">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td style="width: 108px">
                                                            <asp:Button ID="Button4" runat="server" Text="Save" Width="80px" CssClass="btn" OnClick="Button4_Click" />
                                                        </td>
                                                        <td style="width: 118px">
                                                            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Update" Width="80px" CssClass="btn" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="Button6" runat="server" Text="Delete" Width="80px" CssClass="btn" />
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td style="width: 108px">
                                                            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="ViewDeleted" Width="120px" CssClass="btn" />
                                                        </td>
                                                        <td style="width: 118px">
                                                            <asp:Button ID="Button13" runat="server" CssClass="btn" Text="Print" OnClick="Button13_Click" />
                                                        </td>
                                                        <td colspan="2">
                                                            <asp:TextBox ID="TextBox22" runat="server" CssClass="textboxes" Width="100px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel20" runat="server" CssClass="panelgrid" Height="300px" ScrollBars="Both" Width="490px">
                                                <asp:GridView ID="GridView4" runat="server" CssClass="gridview-saledetail" Width="100%" Style="left: 2px; top: 1px" AutoGenerateColumns="False" OnRowCommand="GridView4_RowCommand">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:ImageButton runat="server" ID="img1" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px" />
                                                            </ItemTemplate>
                                                            <HeaderStyle BackColor="Blue" ForeColor="White" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="IdSale" HeaderText="Id Sale" SortExpression="IdSale">
                                                            <HeaderStyle Wrap="False" BackColor="Blue" ForeColor="White" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="ClientName" HeaderText="Client Name" SortExpression="ClientName">
                                                            <HeaderStyle Wrap="False" BackColor="Blue" ForeColor="White" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="ItemName" HeaderText="Item Name" SortExpression="ItemName">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="ItemQuantity" HeaderText="Item Quantity" SortExpression="ItemQuantity">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Unity" HeaderText="Unit " SortExpression="Unity">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" SortExpression="TotalPrice">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="SaleStatusDetail" HeaderText="SaleStatusDetail" SortExpression="SaleStatusDetail">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="IdItem" HeaderText="Id Item" SortExpression="IdItem">
                                                            <HeaderStyle Wrap="False" BackColor="Blue" ForeColor="White" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>

                                                    </Columns>
                                                </asp:GridView>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>

                                        <td>
                                            <asp:Panel ID="Panel2" runat="server">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td>
                                                            <table style="width: 100%">
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Panel ID="Panel15" runat="server" Height="490px" Width="300px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="height: 84px">
                                            <asp:Panel ID="Panel21" runat="server" Height="80px" Width="370px" CssClass="panelTextBox">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td colspan="3">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label9" runat="server" Text="Search"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox15" runat="server" Width="120px" CssClass="textboxes"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel22" runat="server" CssClass="panelgrid" Height="440px" ScrollBars="Both" Width="390px">
                                                <asp:GridView ID="GridView5" runat="server" CssClass="gridview-saledetail" Style="left: 0px; top: 0px" Width="100%" AutoGenerateColumns="False" OnRowCommand="GridView5_RowCommand">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:ImageButton runat="server" ID="img2" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px" />
                                                            </ItemTemplate>
                                                            <HeaderStyle BackColor="Blue" ForeColor="White" />
                                                        </asp:TemplateField>

                                                        <asp:BoundField DataField="IdItem" HeaderText="Item Id" SortExpression="IdItem">
                                                            <HeaderStyle Wrap="False" BackColor="Blue" ForeColor="White" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="ItemName" HeaderText="Item Name" SortExpression="ItemName">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Unity" HeaderText="Unit" SortExpression="Unity">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="QuantityBalance" HeaderText="Quantity Balance" SortExpression="QuantityBalance">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="SellingPrice" HeaderText="Selling Price" SortExpression="SellingPrice">
                                                            <HeaderStyle Wrap="False" />
                                                            <ItemStyle Wrap="False" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
            <HeaderTemplate>
                Client<br />
            </HeaderTemplate>
            <ContentTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 974px">
                            <asp:Panel ID="Panel23" runat="server" CssClass="panelTextBox" Width="1280px">
                                <table style="width: 100%">
                                    <tr>
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
                                            <asp:Label ID="Label10" runat="server" Text="Client Name" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox16" runat="server" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="Sex" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textboxes">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="Client Phone" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox17" runat="server" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text="Client Email" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox21" runat="server" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label17" runat="server" Text="Tin" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox20" runat="server" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label18" runat="server" Text="Pascaline" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 974px">
                            <asp:Panel ID="Panel24" runat="server" Width="1280px" CssClass="panelTextBox">
                                <table style="width: 100%">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td style="width: 106px">&nbsp;</td>
                                        <td style="width: 108px">&nbsp;</td>
                                        <td style="width: 110px">&nbsp;</td>
                                        <td style="width: 100px">&nbsp;</td>
                                        <td style="width: 105px">&nbsp;</td>
                                        <td style="width: 191px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td style="width: 106px">
                                            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Save" CssClass="btn" />
                                        </td>
                                        <td style="width: 108px">
                                            <asp:Button ID="Button9" runat="server" Text="Delete" CssClass="btn" />
                                        </td>
                                        <td style="width: 110px">
                                            <asp:Button ID="Button10" runat="server" Text="Update" CssClass="btn" />
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Button ID="Button11" runat="server" Text="ViewDeleteClient" CssClass="btn" />
                                        </td>
                                        <td style="width: 105px">
                                            <asp:Button ID="Button12" runat="server" Text="Print Client" CssClass="btn" />
                                        </td>
                                        <td style="width: 191px">
                                            <asp:TextBox ID="TextBox19" runat="server" CssClass="textboxes" Width="90px"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td style="width: 106px">&nbsp;</td>
                                        <td style="width: 108px">&nbsp;</td>
                                        <td style="width: 110px">&nbsp;</td>
                                        <td style="width: 100px">&nbsp;</td>
                                        <td style="width: 105px">&nbsp;</td>
                                        <td style="width: 191px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 974px">
                            <asp:Panel ID="Panel25" runat="server" CssClass="panelgrid" ScrollBars="Both" Width="1280px">
                                <asp:GridView ID="GridView6" runat="server" Style="left: 3px; top: 2px" CssClass="gridview" OnRowCommand="GridView6_RowCommand" Width="100%">
                                    <Columns>

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton runat="server" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px"></asp:ImageButton>
                                            </ItemTemplate>
                                            <HeaderStyle BackColor="Blue" ForeColor="White" />
                                        </asp:TemplateField>


                                    </Columns>
                                </asp:GridView>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
</asp:Content>
