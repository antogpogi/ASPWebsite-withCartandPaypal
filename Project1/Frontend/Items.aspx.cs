using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Frontend_Items : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        loaddata();
    }

    private void loaddata()
    {
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        Class1.con.Open();
        SqlCommand cmd = new SqlCommand("select * from Product where ID = " + id + "", Class1.con);
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        ListViewItem.DataSource = dt;
        ListViewItem.DataBind();
        Class1.con.Close();
    }
}