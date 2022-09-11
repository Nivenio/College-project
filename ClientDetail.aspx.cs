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
    public partial class ClientDetail : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select projectid from projectdetails", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                //while (dr.Read())
                //{
                //  TextBox5.Text=(dr[0].ToString());
                //}
                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select count(*) from projectdetails where projectid='" + TextBox8.Text + "'", con);
                int c = int.Parse(cmd1.ExecuteScalar().ToString());
                if (c != 1)
                {
                    //SqlCommand cmd2 = new SqlCommand("insert into clientdetails values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + RadioButtonList1.SelectedItem.Text + "'," + TextBox6.Text + " ,'" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')", con);
                    SqlCommand cmd2 = new SqlCommand("insert into clientdetails values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + RadioButtonList1.SelectedItem.Text + "'," + TextBox6.Text + " ,'" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')", con);
                    SqlCommand cmd = new SqlCommand("insert into registration(userid,password,designation) values('" + TextBox1.Text + "','" + TextBox2.Text + "','Client')", con);
                    cmd2.ExecuteNonQuery();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Records Inserted');</script>");

                }
                else
                {
                    Response.Write("<script>alert('ProjectId Already Exist');</script>");
                    
                    //Button1.Attributes.Add("onclick", "return confirm('Project Id  alredy Exist');");

                }
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

    }
}