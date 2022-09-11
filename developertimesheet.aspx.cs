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
    public partial class developertimesheet : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            TextBox1.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select count(*) from timesheet where developerid='" + TextBox2.Text + "'", con);
                int c = int.Parse(cmd1.ExecuteScalar().ToString());
                if (c == 1)
                {
                    Response.Write("<script>alert('recored inserted already click On Update button');</script>");
                    //Label12.Text = "recored inserted already click On Update button";
                    //Button1.Attributes.Add("onclick", "return confirm('recored inserted alredy click On Update button');");
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("insert into timesheet values('" + DateTime.Now.ToString() + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox8.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox11.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    //Label2.Text = "Records Inserted";
                    con.Close();
                    Response.Write("<script>alert('recored inserted ');</script>");
                    clearForm();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        
    }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd3 = new SqlCommand("update timesheet set developerid='" + TextBox2.Text + "', developername='" + TextBox3.Text + "' ,projid='" + TextBox4.Text + "' ,projname='" + TextBox8.Text + "' ,modulename='" + TextBox5.Text + "', startdate='" + TextBox6.Text + "', enddate='" + TextBox7.Text + "', status='" + TextBox11.Text + "'  where  developerid='" + TextBox2.Text + "'", con);
            cmd3.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('records are updated ');</script>");
            clearForm();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlDataReader dr1;
                SqlCommand cmd2 = new SqlCommand("select * from timesheet where developerid='" + TextBox2.Text + "'", con);
                dr1 = cmd2.ExecuteReader();
                if (dr1.Read())
                {
                    TextBox2.Text = dr1[1].ToString();
                    TextBox3.Text = dr1[2].ToString();
                    TextBox4.Text = dr1[3].ToString();
                    TextBox8.Text = dr1[4].ToString();
                    TextBox5.Text = dr1[5].ToString();
                    TextBox6.Text = dr1[6].ToString();
                    TextBox7.Text = dr1[7].ToString();
                    TextBox11.Text = dr1[8].ToString();
                }
                dr1.Close();
                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }
        void clearForm()
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox8.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox11.Text = "";
        }
    }
}