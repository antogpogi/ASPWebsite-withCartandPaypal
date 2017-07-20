using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrontMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void BtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void BtnCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }
    protected void ButtonHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
}
