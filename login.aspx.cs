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
    public partial class login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //login
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select count(*) from registration where userid='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' and designation='" + DropDownList1.SelectedItem.Text + "'", con);
                int c = int.Parse(cmd.ExecuteScalar().ToString());
                con.Close();
                if (c > 0)
                {
                    Session["uname"] = TextBox1.Text;
                    if (DropDownList1.SelectedItem.Text == "Client")
                    {
                        Response.Redirect("clienthome.aspx");
                    }
                    if (DropDownList1.SelectedItem.Text == "BDO")
                    {
                        Response.Redirect("bdohomepage.aspx");
                    }

                    if (DropDownList1.SelectedItem.Text == "HR")
                    {
                        Response.Redirect("hrhomepage.aspx");
                    }
                    if (DropDownList1.SelectedItem.Text == "PM")
                    {
                        Response.Redirect("pmhomepage.aspx");
                    }
                    if (DropDownList1.SelectedItem.Text == "Developer")
                    {
                        Response.Redirect("developerhomepage.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");

                }
                //dr.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }


    }
