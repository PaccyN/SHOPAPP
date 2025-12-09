<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.master" AutoEventWireup="true" CodeBehind="Filling.aspx.cs" Inherits="ShopManagement.Filling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <link rel="stylesheet" href="Styles/PageStyle.css" type="text/css" />
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Panel ID="Panel5" runat="server" Width="1290px" CssClass="panelTextBox">
                    <table style="width: 100%">
                        <tr>
                            <td class="auto-style2" style="width: 463px">
                                &nbsp;</td>
                            <td style="width: 397px">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="width: 463px">
                                <asp:Label ID="Label5" runat="server" Text="Document Type" CssClass="label"></asp:Label>
                            </td>
                            <td style="width: 397px">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textboxes">
                                    <asp:ListItem></asp:ListItem>
                                    
                                </asp:DropDownList>
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="25px" ImageUrl="~/Image/plus (1).png" Width="25px" />
                                 <ajaxToolkit:ModalPopupExtender ID="AddModalCat" runat="server" BehaviorID="AddModalCat" DynamicServicePath="" PopupControlID="Panel1"  CancelControlID="ImageButton2" BackgroundCssClass="modal-bg" PopupDragHandleControlID="Panel8" RepositionMode="RepositionOnWindowResize" TargetControlID="ImageButton3">
                            </ajaxToolkit:ModalPopupExtender>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="width: 463px">
                                <asp:Label ID="Label6" runat="server" Text="Document Name" CssClass="label"></asp:Label>
                            </td>
                            <td style="width: 397px">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="width: 463px">
                                <asp:Label ID="Label7" runat="server" Text="Document File" CssClass="label"></asp:Label>
                            </td>
                            <td style="width: 397px">
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textboxes" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="width: 463px">
                                <asp:Label ID="Label8" runat="server" Text="Comment" CssClass="label"></asp:Label>
                            </td>
                            <td style="width: 397px">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="textboxes"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Label" CssClass="label"></asp:Label>
                            </td>
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
                            <td style="width: 320px">
                                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" CssClass="btn" />
                            </td>
                            <td style="width: 287px">
                                <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn" />
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel7" runat="server" Width="1290px" CssClass="panelgrid" Height="430px">
                    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="gridview" Width="100%" style="left: 0px; top: 0px" >
                         <Columns>
                                  
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:ImageButton runat="server" ID="img" CommandName="Select" ImageUrl="~/Image/down.png" Height="25px" Width="25px"/>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="Blue" ForeColor="white" />
                                        <ItemStyle />
                                    </asp:TemplateField>
                             </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" Style="background-color:#c0c0c0" Width="800px">
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <td class="auto-style2" style="width: 1430px">&nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/Image/close (2).png" Width="25px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 420px">
                                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 420px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <asp:Button ID="Button4" runat="server" Text="Save" OnClick="Button4_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

            </td>
        </tr>
    </table>
</asp:Content>
