using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public static SqlConnection con = new SqlConnection(@"Data Source=vanessa\sqlexpress2014;Initial Catalog=dbHandArmor;User ID=sa;Password=qwe123!@#");
    public static string name = "";
    public static string user = "Add";

    public static int ctr = 1;
    public static string[] PName = new string[100];
    public static string[] PId = new string[100];
    public static float[] PPrice = new float[100];

    
}