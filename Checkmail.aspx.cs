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
    public partial class mail : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            //checkmail(GridView2);
        }
        //private void checkmail(GridView gridview2)
        //{
            //try
           // {
               // SqlConnection con = new SqlConnection(strcon);
                //con.Open();
                //SqlDataAdapter da = new SqlDataAdapter("select * from checkmail", con);
                //DataSet ds = new DataSet();
                //da.Fill(ds, "checkmail");

                //SqlCommand cmd = new SqlCommand("select * from checkmail", con);
                //SqlDataReader dr;
                //dr = cmd.ExecuteReader();
                //GridView2.DataSource = ds.Tables["checkmail"];
                //GridView2.DataBind();
                //con.Close();
            //}
            //catch (Exception ex)
            //{ 

           // }           
                
        //}

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //SqlCommand cmd = new SqlCommand("insert into checkmail values('" + Session["uname"].ToString() + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DateTime.Now.ToString() + "')", con);
                SqlCommand cmd = new SqlCommand("INSERT INTO checkmail(dt,frmid,toaddr,subject,message) values(@dt,@frmid,@toaddr,@subject,@message)", con);
                cmd.Parameters.AddWithValue("@frmid", Session["uname"].ToString());
                cmd.Parameters.AddWithValue("@toaddr", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@subject", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@message", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@dt", DateTime.Now.ToString());


                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Sent Successfully');</script>");
                //Label1.Text = "Records Inserted";
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}