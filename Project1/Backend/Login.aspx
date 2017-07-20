<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Backend_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hand Armor | Login</title>
    <link href="LoginStyleSheet.css" rel="stylesheet" />
</head>
<body ">
    <form id="form1" runat="server">
        <div id="wrapper">
            <div id="container">
                <div id="loginform">
                    <table style="margin:25px auto;">
                        <thead>
                            <tr>
                                <td colspan="3">
                                    <h1>Login to Hand Armor</h1>
                                </td>
                            </tr>
                        </thead>
                        <tr>
                            <td>
                                <p>Username</p>
                            </td>
                            <td>
                                <p>Password</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBoxUser" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="float:right;">
                                <asp:Button ID="Buttonlogin" CssClass="btn" runat="server" Text="Login" OnClick="Buttonlogin_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
