using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Frontend_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }




    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        try
        {
            if(e.CommandName == "ButtonCart")
            {
                string Id = e.CommandArgument.ToString();
                Class1.con.Open();
                SqlCommand cmd = new SqlCommand("select * from Product where ID = " + Id, Class1.con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Class1.con.Close();

                Class1.PId[Class1.ctr] = dt.Rows[0]["Id"].ToString();
                Class1.PName[Class1.ctr] = dt.Rows[0]["Name"].ToString();
                Class1.PPrice[Class1.ctr] = float.Parse(dt.Rows[0]["Price"].ToString());
                Class1.ctr++;
            }
        }
        catch { }
    }
}