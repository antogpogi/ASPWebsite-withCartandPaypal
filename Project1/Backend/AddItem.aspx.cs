using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backend_AddUser : System.Web.UI.Page
{
    string path = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile && TbName.Text != "" && TbUnitInStock.Text != "0")
        {
            string name = FileUpload1.FileName;
            string filepath = Server.MapPath("~/Images/" + name);
            if (!File.Exists(filepath))
            {
                FileUpload1.SaveAs(filepath);
                path = name;
            }
            Class1.con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Product Values ('" + TbName.Text + "', '" + TbCategory.Text + "', '" + TbSize.Text + "', '" + TbColor.Text + "', '" + TbDescription.Text + "', '" + TbPrice.Text + "', '" + TbUnitInStock.Text + "', '" + path + "')", Class1.con);
            cmd.ExecuteNonQuery();
            Class1.con.Close();

            Response.Redirect("FileMaintenance.aspx");
        }

        
        
    }
    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("FileMaintenance.aspx");
    }
}