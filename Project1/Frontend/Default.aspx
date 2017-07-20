<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/FrontMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Frontend_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Hand Armor | Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="itemlits" Runat="Server">
    <link href="FrontStyleSheet.css" rel="stylesheet" />
    <asp:Label ID="LabelItem" runat="server" CssClass="labeltext" ></asp:Label>
    <div style="clear:both"></div>
             <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceHolder1" OnItemCommand="ListView1_ItemCommand" >
                <LayoutTemplate>
                    <table>
                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                        <tr>
                            <div style="clear:both;"></div>
                            <td colspan = "3">
                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="6">
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
                        <ul style="list-style:none; float:left;">
                            <li style="list-style:none;">
                                <a href="Items.aspx?id=<%#Eval("Id") %>"><img style="width:250px;height:250px;" src="../Images/<%#Eval("picture") %>" /></a>
                                <div class="itemHead">
                                    <h3><a class="itemdisp" href="Items.aspx?id=<%#Eval("Id") %>"><%#Eval("Name") %></a></h3>
                                    <p style="color:#353535">Price: <%#Eval("Price") %></p>
                                    <asp:Button ID="ButtonCart" CssClass="btn-add-cart" runat="server" Text="Add to cart" CommandName="ButtonCart" CommandArgument='<%#Eval("ID") %>'/>  
                                </div>
                            </li>
                        </ul>
                    </ItemTemplate>
            </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHandArmorConString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
   

</asp:Content>

