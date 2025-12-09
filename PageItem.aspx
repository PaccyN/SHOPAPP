<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="PageItem.aspx.cs" Inherits="ShopManagement.PageItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <link rel="stylesheet" href="Styles/PageStyle.css" type="text/css" />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Panel ID="Panel5" runat="server" CssClass="panelTextBox" Width="1280px">
                            <table class="auto-style1">
                                <tr>
                                    <td style="width: 62px">&nbsp;</td>
                                    <td style="width: 102px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td style="width: 82px">&nbsp;</td>
                                    <td style="width: 242px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 62px">&nbsp;</td>
                                    <td style="width: 102px">
                                        <asp:Label ID="Label1" runat="server" Text="Category Name" CssClass="label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textboxes" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:ImageButton ID="ImageButton3" runat="server" Height="25px" ImageUrl="~/Image/plus (1).png" Width="25px" />
                                        <ajaxToolkit:ModalPopupExtender ID="AddModalCat" runat="server" BehaviorID="AddModalCat" DynamicServicePath="" PopupControlID="Panel1"  CancelControlID="ImageButton2" BackgroundCssClass="modal-bg" PopupDragHandleControlID="Panel8" RepositionMode="RepositionOnWindowResize" TargetControlID="ImageButton3">
                            </ajaxToolkit:ModalPopupExtender>
                                    </td>
                                    <td style="width: 82px">
                                        <asp:Label ID="Label3" runat="server" Text="Manufacturer" CssClass="label"></asp:Label>
                                    </td>
                                    <td style="width: 242px">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textboxes"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 62px">&nbsp;</td>
                                    <td style="width: 102px">
                                        <asp:Label ID="Label6" runat="server" Text="Item Name" CssClass="label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxes"></asp:TextBox>
                                    </td>
                                    <td style="width: 82px">
                                        <asp:Label ID="Label4" runat="server" Text="Unity" CssClass="label"></asp:Label>
                                    </td>
                                    <td style="width: 242px">
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="textboxes"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="height: 20px; width: 62px;"></td>
                                    <td style="height: 20px; width: 102px;"></td>
                                    <td style="height: 20px"></td>
                                    <td style="height: 20px; width: 82px;"></td>
                                    <td style="height: 20px; width: 242px;"></td>
                                    <td style="height: 20px">
                                        <asp:Label ID="Label5" runat="server" Text="Pascaline" CssClass="label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 62px">&nbsp;</td>
                                    <td style="width: 102px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td style="width: 82px">&nbsp;</td>
                                    <td style="width: 242px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel6" runat="server" Width="1280px">
                            <table class="auto-style1">
                                <tr>
                                    <td style="width: 59px">&nbsp;</td>
                                    <td style="width: 184px">&nbsp;</td>
                                    <td style="width: 171px">&nbsp;</td>
                                    <td style="width: 184px">&nbsp;</td>
                                    <td style="width: 182px">&nbsp;</td>
                                    <td style="width: 109px">&nbsp;</td>
                                    <td style="width: 56px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 59px">&nbsp;</td>
                                    <td style="width: 184px">
                                        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" CssClass="btn" />
                                    </td>
                                    <td style="width: 171px">
                                        <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn" OnClick="Button2_Click" />
                                    </td>
                                    <td style="width: 184px">
                                        <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn" OnClick="Button3_Click" />
                                    </td>
                                    <td style="width: 182px">
                                        <asp:Button ID="Button4" runat="server" Text="View Deleted Item" CssClass="btn" OnClick="Button4_Click" />
                                    </td>
                                    <td style="width: 109px">
                                        <asp:Button ID="Button6" runat="server" Text="Print Item" CssClass="btn" />
                                    </td>
                                    <td style="width: 56px">
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="textboxes" Width="27px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton4" runat="server" Height="30px" ImageUrl="~/Image/excel.png" OnClick="ImageButton4_Click" Width="30px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 59px">&nbsp;</td>
                                    <td style="width: 184px">&nbsp;</td>
                                    <td style="width: 171px">&nbsp;</td>
                                    <td style="width: 184px">&nbsp;</td>
                                    <td style="width: 182px">&nbsp;</td>
                                    <td style="width: 109px">&nbsp;</td>
                                    <td style="width: 56px">&nbsp;</td>
                                    <td></td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel7" runat="server" ScrollBars="Both" CssClass="panelgrid" Width="1280px" Height="400px">
                            <asp:GridView ID="GridView1" runat="server" CssClass="gridview" GridLines="None" Style="left: 0px; top: 0px" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" >
                                <Columns>
                                    <%--<asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select"  ControlStyle-CssClass="btn-select"/>--%>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:ImageButton runat="server" ID="img" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px"/>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="Blue" ForeColor="white" />
                                        <ItemStyle />
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="IdItem" HeaderText="Item Id" SortExpression="IdItem">
                                        <HeaderStyle Wrap="false" BackColor="Blue" ForeColor="white" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CategoryName" HeaderText="Item Category" SortExpression="CategoryName">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="IdCategory" HeaderText="Category Id" SortExpression="IdCategory">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ItemName" HeaderText="Item" SortExpression="ItemName">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Unity" HeaderText="Unit" SortExpression="Unity">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="UserAdded" HeaderText="Added By" SortExpression="UserAdded">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DateAdded" DataFormatString="{0:yyyy-MM-dd hh:mm:ss}" HeaderText="Created At" SortExpression="DateAdded">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ItemStatus" HeaderText="Status" SortExpression="ItemStatus">
                                        <HeaderStyle Wrap="false" />
                                        <ItemStyle Wrap="false" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" Style="background-color:#c0c0c0" Width="500px">
                            <table style="width: 100%">
                                <tr>
                                    <td>
                                        <table style="width: 100%">
                                            <tr>
                                                <td style="width: 1054px" class="auto-style2">
                                                    <asp:Panel ID="Panel8" runat="server">
                                                    </asp:Panel>
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/Image/close (2).png" Width="25px" OnClick="ImageButton2_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="width: 100%">
                                            <tr>
                                                <td class="auto-style2" style="width: 474px">
                                                    &nbsp;</td>
                                                <td class="auto-style2" style="width: 474px">
                                                    <asp:Label ID="Label7" runat="server" Text="CategoryName"></asp:Label>
                                                </td>
                                                <td style="width: 308px">
                                                    <asp:TextBox ID="TextBox6" runat="server" style="margin-top: 0px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="width: 100%">
                                            <tr>
                                                <td style="text-align:center">
                                                    <asp:Button ID="Button7" runat="server" Text="SAVE" OnClick="Button7_Click" />
                                                </td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
</asp:Content>
