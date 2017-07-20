using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backend_FileMaintenance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListView1.DataBind();
        }
    }

    void delete()
    {
        Class1.con.Open();
        SqlCommand cmd = Class1.con.CreateCommand();
        cmd.CommandText = "Delete From Product where ID = " + Session["ID"].ToString();
        cmd.ExecuteNonQuery();
        Class1.con.Close();
        Response.Redirect("FileMaintenance.aspx");
    }

    protected void ListView1_OnItemCommand(object sender, ListViewCommandEventArgs e)
    {
        try
        {
            switch (e.CommandName)
            {
                case "ButtonEdit":
                    Session["ID"] = e.CommandArgument;
                    Response.Redirect("EditItem.aspx");
                    break;
                case "ButtonDelete":
                    Session["ID"] = e.CommandArgument;
                    delete();
                    break;
            }
        }
        catch { }
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddItem.aspx");
    }

}