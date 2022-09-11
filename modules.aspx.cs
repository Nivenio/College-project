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
    public partial class modules : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (checkIfProjectExists())
            {
                try
                {


                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    SqlDataReader dr1;
                    SqlCommand cmd2 = new SqlCommand("select * from task where projid='" + TextBox1.Text + "'", con);
                    dr1 = cmd2.ExecuteReader();
                    if (dr1.Read())
                    {
                        TextBox2.Text = dr1[2].ToString();
                        TextBox3.Text = dr1[3].ToString();
                        //TextBox13.Text = dr1[0].ToString();
                        TextBox3.Text = dr1[1].ToString();
                        TextBox4.Text = dr1[4].ToString();
                        TextBox6.Text = dr1[5].ToString();
                        TextBox7.Text = dr1[6].ToString();
                        TextBox8.Text = dr1[7].ToString();
                        TextBox9.Text = dr1[8].ToString();
                        TextBox10.Text = dr1[9].ToString();
                        TextBox11.Text = dr1[10].ToString();
                        TextBox12.Text = dr1[11].ToString();
                        TextBox13.Text = dr1[12].ToString();
                        TextBox14.Text = dr1[13].ToString();
                        TextBox15.Text = dr1[14].ToString();
                        TextBox16.Text = dr1[15].ToString();
                        TextBox17.Text = dr1[16].ToString();
                    }
                    dr1.Close();
                    con.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Project ID');</script>");


            }
            // user defined function
            bool checkIfProjectExists()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("select * from task where projid='" + TextBox1.Text + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                    return false;
                }
            }

        }
    }
}