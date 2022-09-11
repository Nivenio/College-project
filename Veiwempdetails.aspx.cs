using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT_TRACKING_SYSTEM__._0
{
    public partial class Veiwempdetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //emp(GridView1);
        }
        //private void emp(GridView gridview1)
        //{
        //try
        //{
        // SqlConnection con = new SqlConnection(strcon);
        //SqlDataAdapter da = new SqlDataAdapter("select empid,empname,phoneno,emailid,exp,qualification,salary from emp", con);
        //DataSet ds = new DataSet();
        //da.Fill(ds, "emp");
        //GridView1.DataSource = ds.Tables["emp"];
        //GridView1.DataBind();
        //}
        //catch (Exception ex)
        //{

        //}


    }
}