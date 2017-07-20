<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/BackMasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Backend_EditAdmins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Hand Armor | User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="itemlits" Runat="Server">
    <div class="wrapper">
        <div class="container">
            <div>
                <table>
                    <thead>
                        <tr>
                            <td colspan="3">
                                <h1><asp:Label ID="lblName" runat="server"></asp:Label></h1>
                            </td>
                        </tr>
                    </thead>
                    <tr>
                        <td>
                            <p>Username</p>
                            <asp:TextBox ID="TbUsername" runat="server" ></asp:TextBox>
                        </td>
                        <td>
                            <p>Password</p>
                            <asp:TextBox ID="TbPassword" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tfoot>
                        <tr>
                            <td>
                                <asp:Button ID="ButtonUpdate"  runat="server" OnClick="ButtonUpdate_Click" />
                                <asp:Button ID="ButtonCancel"  runat="server" Text="Cancel" OnClick="ButtonCancel_Click" />
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

