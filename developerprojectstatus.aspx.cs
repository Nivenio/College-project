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
    public partial class developerprojectstatus : System.Web.UI.Page
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
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr[0].ToString());
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select count(*) from projectstatus where projid='" + DropDownList1.SelectedItem.Text + "'", con);
                int c = int.Parse(cmd1.ExecuteScalar().ToString());
                if (c == 1)
                {
                    //Label13.Text = "recored inserted already click On Update button";
                    Button1.Attributes.Add("onclick", "return confirm('recored inserted already click On Update button');");
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("insert into projectstatus values('" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox6.Text + "','" + TextBox7.Text + "'," + TextBox8.Text + "," + TextBox9.Text + ",'" + TextBox10.Text + "','" + TextBox11.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Records Inserted');</script>");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd3 = new SqlCommand("update projectstatus set status='" + TextBox11.Text + "' where  projid='" + DropDownList1.SelectedItem.Text + "'", con);
                cmd3.ExecuteNonQuery();
                Response.Write("<script>alert('Status Updated');</script>");
                //Label13.Text = "Status Updated";
                con.Close();
            }
                
               
            catch(Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
            
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlDataReader dr1;
                SqlCommand cmd2 = new SqlCommand("select * from projectstatus where projid='" + DropDownList1.SelectedItem.Text + "'", con);
                dr1 = cmd2.ExecuteReader();
                if (dr1.Read())
                {
                    //TextBox1.Text = dr1[0].ToString();
                    TextBox2.Text = dr1[1].ToString();
                    TextBox3.Text = dr1[2].ToString();
                    TextBox4.Text = dr1[3].ToString();
                    TextBox5.Text = dr1[4].ToString();
                    TextBox6.Text = dr1[5].ToString();
                    TextBox7.Text = dr1[6].ToString();
                    TextBox8.Text = dr1[7].ToString();
                    TextBox9.Text = dr1[8].ToString();
                    TextBox10.Text = dr1[9].ToString();
                    TextBox11.Text = dr1[10].ToString();
                }
                dr1.Close();
                con.Close();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}