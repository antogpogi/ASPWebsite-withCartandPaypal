<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/BackMasterPage.master" AutoEventWireup="true" CodeFile="UserMngmt.aspx.cs" Inherits="Backend_UserMngmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Hand Armor | User Management
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="itemlits" Runat="Server">
    <div class="wrapper">
        <div class="container">
            <table>
                <thead>
                    <tr>
                        <td>
                            <h1>Users</h1>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;">
                            <p><strong>ID</strong></p>
                        </td>
                        <td style="width:400px;">
                            <p><strong>Username</strong></p>
                        </td>
                        <td style ="width:200px;">
                            <p><strong>Password</strong></p>
                        </td>
                        <td>
                            <p><strong>Action</strong></p>
                        </td>
                    </tr>
                </thead>
            </table>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_OnItemCommand">
                <ItemTemplate>
                        <table>
                            <tr>
                                <td style="width:200px;">
                                    <p><%#Eval("ID") %> </p>
                                </td>
                                <td style="width:400px;">
                                    <p><%#Eval("Username") %> </p>
                                </td>
                                <td style ="width:200px;">
                                    <p><%#Eval("Password") %></p>
                                </td>
                                <td>
                                    <asp:Button CssClass="btnedit" ID="ButtonEdit" runat="server" Text="Edit" CommandName="ButtonEdit" CommandArgument='<%#Eval("ID") %>'/>
                                    <asp:Button CssClass="btnedit" ID="ButtonDelete" runat="server" Text="Delete" CommandName="ButtonDelete" CommandArgument='<%#Eval("ID") %>' />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHandArmorConString %>" SelectCommand="SELECT * FROM [Admins]"></asp:SqlDataSource>
            <asp:Button CssClass="btnadd" ID="ButtonAdd" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
        </div>
    </div>
</asp:Content>

