using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT_TRACKING_SYSTEM__._0
{
    public partial class projectadddetail : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select clientid from clientdetails where projectid='" + TextBox6.Text + "'", con);
                SqlDataReader dr;
                dr = cmd1.ExecuteReader();
                int cnt = 0;
                if (dr.HasRows)
                {
                    cnt++;
                }
                dr.Close();
                //int c = int.Parse(cmd1.ExecuteScalar().ToString());
                //int d = int.Parse(TextBox5.Text);
                if (cnt == 1)
                {

                    SqlCommand cmd = new SqlCommand("insert into projectdetails values('" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "' ,'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Records Inserted');</script>");
                    //Label1.Text = "<h3> Records Inserted..</h3>";

                }
                else
                {
                    Response.Write("<script>alert('Invalid Project ID');</script>");
                    //Label1.Text = "enter exact value of project id";
                }
                con.Close();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                //Label13.Text = ex.ToString();
            }
        }
    }
}