<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/FrontMasterPage.master" AutoEventWireup="true" CodeFile="Items.aspx.cs" Inherits="Frontend_Items" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Guns | Item Desc
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="itemlits" Runat="Server">
    <asp:ListView ID="ListViewItem" runat="server">
        <ItemTemplate>
            <ul style="list-style:none;">
                <li>
                    <div style="height:250px; margin:20px;">
                        <div style=" width:250px; height:250px; float:left;">
                            <img style="width:250px;height:250px;" src="../Images/<%#Eval("picture") %>" alt="" />
                        </div>
                        <div style=" text-align:right; margin-left:10px; width:550px; height:250px; float:left; background-color:#f1f1f1; border: 2px solid #e8e8e8; padding-right:15px;">
                            <h1><%#Eval("Name") %></h1>
                            <p style="font-size:32px; color:#808080"><%#Eval("Price") %></p>
                        </div>
                    </div>
                </li>
                <li>
                    <div>
                            <table>
                                <thead>
                                    <tr>
                                        <td>
                                            <h2>Specifications</h2>
                                        </td>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>
                                        <p><strong>Category</strong></p>
                                    </td>
                                    <td>
                                        <p><%#Eval("Category") %></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p><strong>Size</strong></p>
                                    </td>
                                    <td>
                                        <p><%#Eval("Size") %></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p><strong>Color</strong></p>
                                    </td>
                                    <td>
                                        <p><%#Eval("Color") %></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p><strong>Description</strong></p>
                                    </td>
                                    <td>
                                        <p><%#Eval("Description") %></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p><strong>Stock</strong></p>
                                    </td>
                                    <td>
                                        <p><%#Eval("UnitInStock") %></p>
                                    </td>
                                </tr>
                            </table>
                            <asp:Button ID="ButtonCart" CssClass="btn-add-cart" runat="server" Text="Add to cart" CommandName="ButtonCart" CommandArgument='<%#Eval("ID") %>'/>  
                        </div>
                </li>
            </ul>
        </ItemTemplate>

    </asp:ListView>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHandArmorConString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
</asp:Content>

