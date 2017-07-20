using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Frontend_Cart : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {  
            float total = 0;
            DataTable dt = new DataTable();
            dt.Columns.Add("Number", typeof(string));
            dt.Columns.Add("ProductId", typeof(string));
            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Price", typeof(string));
           
            for (int i = 1; i < Class1.ctr; i++)
            {
                dt.Rows.Add(i, Class1.PId[i], Class1.PName[i], "P" + Class1.PPrice[i]);
                total = total + Class1.PPrice[i];
            }


            LbTotal.Text = total.ToString();
            ListView1.DataSource = dt;
            ListView1.DataBind();
       

    }
}