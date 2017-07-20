<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/BackMasterPage.master" AutoEventWireup="true" CodeFile="EditItem.aspx.cs" Inherits="Backend_EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Hand Armor | Edit Item
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
                        <td rowspan="10">
                            <asp:Image CssClass="btnupload" ID="Pic" runat="server" /><br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>Name</p>
                            <asp:TextBox ID="TbName" runat="server" ></asp:TextBox>
                        </td>
                         <td>
                             <p>Category</p>
                            <asp:TextBox ID="TbCategory" runat="server" ></asp:TextBox>
                        </td>
                        <td>
                            <p>Size</p>
                            <asp:TextBox ID="TbSize" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>Color</p>
                            <asp:TextBox ID="TbColor" runat="server" ></asp:TextBox>
                        </td>
                        <td>
                            <p>Price</p>
                            <asp:TextBox ID="TbPrice" runat="server" ></asp:TextBox>
                        </td>
                        <td>
                            <p>Stock</p>
                            <asp:TextBox ID="TbUnitInStock" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10">
                            <p>Description</p>
                            <asp:TextBox ID="TbDescription" Width="500px" TextMode="MultiLine" Height="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tfoot>
                        <tr>
                            <td>
                                <asp:Button ID="ButtonUpdate"  runat="server" Text="Update" OnClick="ButtonUpdate_Click" />
                                <asp:Button ID="ButtonCancel"  runat="server" Text="Cancel" OnClick="ButtonCancel_Click" />
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</asp:Content>