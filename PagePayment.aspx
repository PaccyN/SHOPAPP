<%@ Page Title="" Language="C#" MasterPageFile="~/MasterClass.master" AutoEventWireup="true" CodeBehind="PagePayment.aspx.cs" Inherits="ShopManagement.PagePayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <link  rel="stylesheet" href="Styles/PageStyle.css" type="text/css"/>
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Width="1300px" Height="570px">
        <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <HeaderTemplate>
                PaymentType
            </HeaderTemplate>
            <ContentTemplate>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel5" runat="server" CssClass="panelTextBox" Width="1280px" Height="50px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 332px">&nbsp;</td>
                                        <td style="width: 182px">
                                            <asp:Label ID="Label4" runat="server" CssClass="label" Text="Payment Type"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxes"></asp:TextBox>
                                        </td>
                                        <a href="PagePayment.aspx">PagePayment.aspx</a>                                    <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="Panel6" runat="server" Width="1280px" Height="50px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 119px">&nbsp;</td>
                                        <td style="width: 239px">
                                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Save" Width="204px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 131px">
                                            <asp:Button ID="Button2" runat="server" CssClass="btn" style="margin-left: 0px" Text="Update" />
                                        </td>
                                        <td style="width: 148px">
                                            <asp:Button ID="Button5" runat="server" CssClass="btn" Text="Delete" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button4" runat="server" CssClass="btn" Text="View Deleted Payment" Width="248px" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="Panel7" runat="server" CssClass="panelgrid" Width="1280px" Height="460px" ScrollBars="Both">
                                <asp:GridView ID="GridView1" runat="server" CssClass="gridview" style="left: 1px; top: 10px" Width="100%">
                                </asp:GridView>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel2" ID="TabPanel2">
            <HeaderTemplate>
                Payment
            </HeaderTemplate>
            <ContentTemplate>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel8" runat="server" Width="390px">
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel10" runat="server" Height="80px" Width="490px" CssClass="panelTextBox">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td style="width: 124px; height: 23px"></td>
                                                        <td style="height: 23px; width: 71px">
                                                        </td>
                                                        <td style="height: 23px; width: 16px">
                                                        </td>
                                                        <td style="height: 23px"></td>
                                                        <td style="height: 23px"></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 124px"></td>
                                                        <td style="height: 31px; width: 71px">
                                                            <asp:Label ID="Label14" runat="server" CssClass="label" Text="Search"></asp:Label>
                                                        </td>
                                                        <td style="height: 31px; width: 16px">
                                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="textboxes" Height="16px"></asp:TextBox>
                                                        </td>
                                                        <td style="height: 31px">
                                                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Image/search-interface-symbol.png" OnClick="ImageButton5_Click" style="height: 24px" />
                                                        </td>
                                                        <td style="height: 31px"></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel11" runat="server" Height="480px" Width="490px" CssClass="panelgrid" ScrollBars="Both">
                                                <asp:GridView ID="GridView2" runat="server" CssClass="gridview" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand" Width="100%">
                                                    <Columns>
                                                         <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:ImageButton runat="server" ID="img" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px"/>
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
                                    <asp:BoundField DataField="ClientBalance" HeaderText="Client Balance" SortExpression="ClientBalance">
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
                            <asp:Panel ID="Panel9" runat="server" Width="590px">
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel12" runat="server" Height="150px" Width="760px" CssClass="panelTextBox">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td style="width: 100px; height: 31px"></td>
                                                        <td colspan="3" style="height: 31px">&nbsp;</td>
                                                        <td style="height: 31px"></td>
                                                        <td style="height: 31px; width: 263px"></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <asp:Label ID="Label6" runat="server" CssClass="label" Text="IdClient"></asp:Label>
                                                        </td>
                                                        <td style="width: 61px">
                                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="textboxes" Height="16px" Width="76px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="textboxes" style="margin-left: 0px" Width="109px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="Label13" runat="server" CssClass="label" Text="PaymentType"></asp:Label>
                                                        </td>
                                                        <td style="width: 263px">
                                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textboxes" Width="113px">
                                                            </asp:DropDownList>
                                                            <asp:ImageButton ID="ImageButton4" runat="server" Height="20px" ImageUrl="~/Image/plus (1).png" Width="20px" />
                                                           <ajaxToolkit:ModalPopupExtender ID="AddModalCat" runat="server" BehaviorID="AddModalCat" DynamicServicePath="" PopupControlID="Panel1"  CancelControlID="ImageButton3" BackgroundCssClass="modal-bg" PopupDragHandleControlID="Panel15" RepositionMode="RepositionOnWindowResize" TargetControlID="ImageButton4">
                                                            </ajaxToolkit:ModalPopupExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <asp:Label ID="Label7" runat="server" CssClass="label" Text="PaymentDate"></asp:Label>
                                                        </td>
                                                        <td style="width: 61px">
                                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="textboxes" Width="77px"></asp:TextBox>
                                                            <ajaxToolkit:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" BehaviorID="_content_TextBox5_CalendarExtender" TargetControlID="TextBox5" />
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="Label11" runat="server" CssClass="label" Text="DepositedAccount"></asp:Label>
                                                        </td>
                                                        <td style="width: 263px">
                                                            <asp:TextBox ID="TextBox9" runat="server" CssClass="textboxes" Width="113px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 100px; height: 32px">
                                                            <asp:Label ID="Label8" runat="server" CssClass="label" Text="AmountPaid"></asp:Label>
                                                        </td>
                                                        <td style="height: 32px">
                                                            <asp:TextBox ID="TextBox6" runat="server" CssClass="textboxes" Width="75px" TextMode="Number"></asp:TextBox>
                                                        </td>
                                                        <td style="height: 32px">
                                                            <asp:TextBox ID="TextBox7" runat="server" Width="91px"></asp:TextBox>
                                                        </td>
                                                        <td style="height: 32px"></td>
                                                        <td style="height: 32px"></td>
                                                        <td style="height: 32px; width: 263px">
                                                            <asp:Label ID="Label15" runat="server" Text="Pascaline"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel13" runat="server" Height="80px" Width="760px" CssClass="panelTextBox">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td style="width: 129px; height: 18px"></td>
                                                        <td style="height: 18px">
                                                        </td>
                                                        <td style="width: 28%; height: 18px;">
                                                        </td>
                                                        <td style="width: 28%; height: 18px;">
                                                        </td>
                                                        <td style="width: 28%; height: 18px;">
                                                        </td>
                                                        <td style="width: 6%; height: 18px;">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 47px; width: 129px;">
                                                            <asp:Button ID="Button6" runat="server" CssClass="btn" OnClick="Button6_Click" Text="Save" Width="80px" />
                                                        </td>
                                                        <td style="width: 28%; height: 47px;">
                                                            <asp:Button ID="Button10" runat="server" CssClass="btn" OnClick="Button10_Click" style="margin-left: 32px" Text="Update" Width="101px" />
                                                        </td>
                                                        <td style="width: 28%; height: 47px;">
                                                            <asp:Button ID="Button8" runat="server" CssClass="btn" OnClick="Button8_Click" Text="Delete" Width="99px" />
                                                        </td>
                                                        <td style="width: 28%; height: 47px;">
                                                            <asp:Button ID="Button9" runat="server" CssClass="btn" Text="ViewDeleted" Width="132px" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Print" />
                                                        </td>
                                                        <td style="width: 6%; height: 47px;">
                                                            <asp:TextBox ID="TextBox11" runat="server" CssClass="textboxes" Width="56px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4">&nbsp;</td>
                                                        <td style="width: 6%">&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel14" runat="server" Height="330px" Width="760px" CssClass="panelgrid" ScrollBars="Both">
                                                <asp:GridView ID="GridView3" runat="server" CssClass="gridview" AutoGenerateColumns="False" OnRowCommand="GridView3_RowCommand" Width="100%">
                                                    <Columns>
                                                        <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:ImageButton runat="server" ID="img" CommandName="Select" ImageUrl="~/Image/touchscreen.png" Height="25px" Width="25px"/>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="Blue" ForeColor="White" />
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="IdPayment" HeaderText="Payment Id" SortExpression="IdPayment">
                                        <HeaderStyle Wrap="False" BackColor="Blue" ForeColor="White" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ClientName" HeaderText="Client Name" SortExpression="ClientName">
                                        <HeaderStyle Wrap="False" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PaymentDate" HeaderText="Payment Date" SortExpression="PaymentDate">
                                        <HeaderStyle Wrap="False" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="AmountPaid" HeaderText="Amount Paid" SortExpression="AmountPaid">
                                        <HeaderStyle Wrap="False" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DepositedAccount" HeaderText="Deposited Account" SortExpression="DepositedAccount">
                                        <HeaderStyle Wrap="False" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PaymentTypeName" HeaderText="PaymentType Name" SortExpression="PaymentTypeName">
                                        <HeaderStyle Wrap="False" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ClientBalance" HeaderText="Client Balance" SortExpression="ClientBalance">
                                        <HeaderStyle Wrap="False" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                   
                                    <asp:BoundField DataField="UserAdded" HeaderText="Added By" SortExpression="UserAdded">
                                        <HeaderStyle Wrap="False" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DateAdded" DataFormatString="{0:yyyy-MM-dd hh:mm:ss}" HeaderText="Created At" SortExpression="DateAdded">
                                        <HeaderStyle Wrap="False" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                     <asp:BoundField DataField="PaymentStatus" HeaderText="Payment Status" SortExpression="PaymentStatus">
                                        <HeaderStyle Wrap="False" />
                                        <ItemStyle Wrap="False" />
                                    </asp:BoundField>

                                                    </Columns>
                                                </asp:GridView>
                                                </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                       
                                        <td>
                                           <asp:Panel ID="Panel1" runat="server" Style="background-color:#c0c0c0" Height="80px" Width="500px">
                                               <table style="width: 100%">
                                                   <tr>
                                                       <td>
                                                           <table style="width: 100%">
                                                               <tr>
                                                                   <td style="width: 527px">
                                                                       <asp:Panel ID="Panel15" runat="server">
                                                                       </asp:Panel>
                                                                   </td>
                                                                   <td>
                                                                       <asp:ImageButton ID="ImageButton3" runat="server" Height="25px" ImageUrl="~/Image/close (2).png" Width="25px" />
                                                                   </td>
                                                               </tr>
                                                           </table>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <table style="width: 99%">
                                                               <tr>
                                                                   <td style="width: 60px">&nbsp;</td>
                                                                   <td style="width: 218px">
                                                                       <asp:Label ID="Label16" runat="server" Text="Payment Type"></asp:Label>
                                                                   </td>
                                                                   <td>
                                                                       <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
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
                                                                       <asp:Button ID="Button11" runat="server" Text="SAVE" OnClick="Button11_Click" />
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
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
</asp:Content>
