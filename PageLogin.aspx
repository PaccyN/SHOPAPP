<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageLogin.aspx.cs" Inherits="ShopManagement.PageLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet"href="Styles/LoginStyle.css" />

</head>
<body>
    <main>
             <div class="login-content">
            <img src="\Image\Logo1.png" class="img" />
            <h1 class="h1">Welcome back</h1>
            <form id="form1" runat="server">
                    <table style="width:100%">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="UserName" CssClass="label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Password" CssClass="label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="TextBox" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:ImageButton ID="ImageButton" runat="server" Height="40px" ImageUrl="~/Image/login.png" Width="50px" Text="Login Here" OnClick="BtnLogin_Click" CssClass="button" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
        </form>
        </div>
   
    </main>
</body>
</html>
