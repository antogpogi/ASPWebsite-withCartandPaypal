using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backend_EditUser : System.Web.UI.Page
{
    string id, pname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loaddata();
        }
        
    }

    void loaddata()
    {
        if (Session["ID"] == null)
        {
            Response.Redirect("FileMaintenance.aspx");
        }
        else
        {
            Class1.con.Open();
            id = Session["ID"].ToString();
            SqlCommand cmd = new SqlCommand("select * from Product where ID = " + id, Class1.con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Class1.con.Close();
            lblName.Text = dt.Rows[0][1].ToString();
            TbName.Text = dt.Rows[0][1].ToString();
            TbCategory.Text = dt.Rows[0][2].ToString();
            TbSize.Text = dt.Rows[0][3].ToString();
            TbColor.Text = dt.Rows[0][4].ToString();
            TbDescription.Text = dt.Rows[0][5].ToString();
            TbPrice.Text = dt.Rows[0][6].ToString();
            TbUnitInStock.Text = dt.Rows[0][7].ToString();
            pname = dt.Rows[0][8].ToString();
            Pic.ImageUrl = "~/Images/" + dt.Rows[0][8].ToString();
        }
    }



    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        update();
    }

    void update()
    {
        if (FileUpload1.HasFile)
        {
            string name = FileUpload1.FileName;
            string filepath = Server.MapPath("~/Images/" + name);
            if (!File.Exists(filepath))
            {
                FileUpload1.SaveAs(filepath);
                pname = name;
            }
            else
            {
                pname = name;
            }
        }
        Class1.con.Open();
        SqlCommand cmd = Class1.con.CreateCommand();
        cmd.CommandText = "Update Product Set  Name = '" + TbName.Text + "', Category =  '" + TbCategory.Text + "', Size =  '" + TbSize.Text + "', Color = '" + TbColor.Text + "', Description = '"+ TbDescription.Text +"', Price = '" + TbPrice.Text + "', UnitInStock = '" + TbUnitInStock.Text + "', picture = '" + pname + "' Where ID = " + Session["ID"].ToString();
        cmd.ExecuteNonQuery();
        Class1.con.Close();
        Response.Redirect("FileMaintenance.aspx");
    }
    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("FileMaintenance.aspx");
    }
}