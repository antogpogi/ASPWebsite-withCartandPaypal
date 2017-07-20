using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backend_UserMngmt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListView1.DataBind();
        }
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        Class1.user = "Submit";
        Response.Redirect("Users.aspx");
    }

    void delete()
    {
        Class1.con.Open();
        SqlCommand cmd = Class1.con.CreateCommand();
        cmd.CommandText = "Delete From Users where ID = " + Session["ID"].ToString();
        cmd.ExecuteNonQuery();
        Class1.con.Close();
        Response.Redirect("UserMngmt.aspx");
    }
    protected void ListView1_OnItemCommand(object sender, ListViewCommandEventArgs e)
    {
        try
        {
            switch (e.CommandName)
            {
                case "ButtonEdit":
                    Session["ID"] = e.CommandArgument;
                    Class1.user = "Update";
                    Response.Redirect("Users.aspx");
                    break;
                case "ButtonDelete":
                    Session["ID"] = e.CommandArgument;
                    delete();
                    break;
            }
        }
        catch { }
    }
}