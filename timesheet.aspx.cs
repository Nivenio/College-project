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
    public partial class timesheet : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            pmtimesheet(GridView1);

        }
        private void pmtimesheet(GridView gridview1)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlDataAdapter da = new SqlDataAdapter("select dt,developerid,developername,projid,projname,modulename,startdate,enddate,status from timesheet", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "timesheet");
            GridView1.DataSource = ds.Tables["timesheet"];
            GridView1.DataBind();
        }

    }
}