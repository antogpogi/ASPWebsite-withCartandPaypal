<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/FrontMasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Frontend_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Hand Armor | Cart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="itemlits" Runat="Server">
    
    <asp:ListView ID="ListView1" runat="server" >
        <ItemTemplate>
            <ul>
                <li>
                    <table>
                        <thead>
                            <tr>
                                <th>
                                    <p>ID</p>
                                </th>
                                <th>
                                    <p>Name</p>
                                </th>
                                <th>
                                    <p>Price</p>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <%#Eval("ProductId") %>
                                </td>
                                <td>
                                    <%#Eval("Name") %>
                                </td>
                                <td>
                                    <%#Eval("Price") %>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </li>
            </ul>
        </ItemTemplate>
    </asp:ListView>
     <h4>Total Amount:</h4> P<asp:Label ID="LbTotal" runat="server"></asp:Label>    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cfooter" runat="server">
     <div id="footer">
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
            <input type="hidden" name="cmd" value="_xclick" />
            <input type="hidden" name="business" value="youremailaddress@yourdomain.com" />
            <input type="hidden" name="item_name" value="Total Amount" />
            <input type="hidden" name="amount" value='<%# LbTotal.Text %>' /> 
            <input type="submit" value="Checkout!" class="btn-payout btnpayout" />
        </form>
        </div>
</asp:Content>

