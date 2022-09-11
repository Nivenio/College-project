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
    public partial class empupdate : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                GridView1.Visible = true;
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select count(*) from emp where empid='" + TextBox1.Text + "'", con);
                int c = int.Parse(cmd1.ExecuteScalar().ToString());
                if (c != 1)
                {
                    Label1.Text = "Record Does Not Exist Please Try To Another Record";

                    con.Close();
                }

                else
                {
                    Label1.Text = null;
                    //GridView1.Visible = true;
                    //SqlDataAdapter da = new SqlDataAdapter("select empid,empname,gender,qualification,exp,salary,keyskills,emailid,phoneno,dateofjoin,age,address from emp where empid='" + TextBox1.Text + "'", con);
                    //DataSet ds = new DataSet();
                    //da.Fill(ds, "emp");
                    //GridView1.DataSource = ds.Tables[0];
                    //GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }
        }
    }

}