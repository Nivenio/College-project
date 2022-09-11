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
    public partial class Clientupdate : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select clientid from clientdetails", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr[0].ToString());
                }
                con.Close();
            }
            //GridView1.DataBind();
            GridView1.Visible = true;
        }
        //private void dbind()
        //{
            //SqlConnection con = new SqlConnection(strcon);
            //SqlDataAdapter da = new SqlDataAdapter("select clientid,clientname,emailid,projectdesc, from clientdetails,projectid where  projectid='" + TextBox1.Text + "' and clientid= '" + TextBox2.Text + "' ", con);
        //}

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            GridView1.Visible = true;
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select count(*) from clientdetails where projectid='" + TextBox1.Text + "' and clientid= '" + DropDownList1 + "' ", con);
            int c = int.Parse(cmd1.ExecuteScalar().ToString());
            if (c != 1)
            {
               
                //Response.Write("<script>alert('Record Does Not Exist Please Try To Another Record');</script>");
               Label1.Text = " Record Does Not Exist Please Try To Another Record";
                //GridView1.DataBind();
                con.Close();
            }

            else
            {
                
                Label1.Text = null;
                
                //Response.Write("<script>alert('Record Does Not Exist Please Try To Another Record');</script>");
                //Response.Write("<script>alert('" + null + "');</script>");
            }
        }

        
    }
}