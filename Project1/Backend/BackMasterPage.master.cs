using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backend_BackMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Name.Text = Class1.name;
    }
    protected void BtnFileMain_Click(object sender, EventArgs e)
    {
        Response.Redirect("FileMaintenance.aspx");
    }
    protected void BtnUserMngmt_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserMngmt.aspx");
    }
    protected void ButtonLogout_Click(object sender, EventArgs e)
    {
        Class1.name = "";
        Response.Redirect("Login.aspx");
    }
}
