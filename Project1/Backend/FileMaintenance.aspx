<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/BackMasterPage.master" AutoEventWireup="true" CodeFile="FileMaintenance.aspx.cs" Inherits="Backend_FileMaintenance"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Hand Armor | File Maintenance
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="itemlits" Runat="Server">
    <div class="wrapper">
        <div class="container">
            <table style="border-bottom:1px solid black">
                <thead>
                    <tr>
                        <td>
                            <h1>File Maintenance</h1>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:300px;">
                        </td>
                        <td style="width:200px;">
                            <p><strong>Name</strong></p>
                        </td>
                        <td style="width:200px;">
                            <p><strong>Color</strong></p>
                        </td>
                        <td style="width:150px;">
                            <p><strong>Unit In Stock</strong></p>
                        </td>
                        <td style="width:70px;">
                            <p><strong>Action</strong></p>
                        </td>
                    </tr>
                </thead>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHandArmorConString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_OnItemCommand" DataSourceID="SqlDataSource1" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceHolder1">
                <LayoutTemplate>
                    <table>
                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                        <tr>
                            <td>
                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="5">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                                            ShowNextPageButton="false" ButtonCssClass="pagebtn" />
                                        <asp:NumericPagerField ButtonType="Link" NumericButtonCssClass="numericbtn" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton = "false" ButtonCssClass="pagebtn" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <GroupTemplate>
                    <tr>
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                        <table style="border-bottom:1px solid grey">
                            <tr>
                                <td style="width:300px">
                                    <img style="width:250px; height:250px;" src="../Images/<%#Eval("picture") %>" />
                                </td>
                                <td style="width:200px;">
                                    <p><%#Eval("Name") %></p>
                                </td>
                                <td style="width:200px;">
                                    <p><%#Eval("Color") %></p>
                                </td>
                                <td style="width:150px;">
                                    <p><%#Eval("UnitInstock") %></p>
                                </td>
                                <td style="width:70px;">
                                    <asp:Button ID="ButtonEdit" CssClass="btnedit" runat="server" Text="Edit" CommandName="ButtonEdit" CommandArgument='<%#Eval("ID") %>'/>  
                                    <asp:Button ID="ButtonDelete" CssClass="btnedit" runat="server" CommandName="ButtonDelete" CommandArgument='<%#Eval("ID") %>' Text="Delete" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
            </asp:ListView>
            <asp:Button CssClass="btnadd" ID="ButtonAdd" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
        </div>
    </div>
</asp:Content>

