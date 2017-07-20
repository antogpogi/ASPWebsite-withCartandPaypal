using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backend_EditAdmins : System.Web.UI.Page
{
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loaddata();
        }
    }
    void loaddata()
    {
        if (Class1.user == "Update")
        {
            ButtonUpdate.Text = Class1.user;
            if (Session["ID"] == null)
            {
                Response.Redirect("UserMngmt.aspx");
            }
            else
            {
                Class1.con.Open();
                id = Session["ID"].ToString();
                SqlCommand cmd = new SqlCommand("select * from Admins where ID = " + id, Class1.con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Class1.con.Close();
                
                TbUsername.Text = dt.Rows[0][1].ToString();
                TbPassword.Text = dt.Rows[0][2].ToString();
            }
        }
        else
        {
            ButtonUpdate.Text = Class1.user;
        }
    }

    private void submit()
    {
        Class1.con.Open();
        string cmdstring = "Insert into Admins Values('" + TbUsername.Text + "', '" + TbPassword.Text + "')";
        SqlCommand submitcmd = Class1.con.CreateCommand();
        submitcmd.CommandText = cmdstring;
        submitcmd.ExecuteNonQuery();
        Class1.con.Close();
        Response.Redirect("UserMngmt.aspx");
    }
    
    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        if (Class1.user == "Update")
        {
            Class1.con.Open();
            SqlCommand cmd = Class1.con.CreateCommand();
            cmd.CommandText = "Update Admins Set  Username = '" + TbUsername.Text + "', Password = '" + TbPassword.Text + "' Where ID = " + Session["ID"].ToString();
            cmd.ExecuteNonQuery();
            Class1.con.Close();
            Response.Redirect("UserMngmt.aspx");
        }
        else
        {
            submit();
        }
       
    }
    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserMngmt.aspx");
    }
}
