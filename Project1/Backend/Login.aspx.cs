using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Backend_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Buttonlogin_Click(object sender, EventArgs e)
    {
        try
        {
            Class1.con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Admins where Username = '" + TextBoxUser.Text + "' and Password = '" + TextBoxPass.Text + "'", Class1.con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Class1.con.Close();
            if (dt.Rows[0][0].ToString() != "")
            {
                Class1.name = TextBoxUser.Text;
                Response.Redirect("FileMaintenance.aspx");
            }
        }
        catch { }
    }
}