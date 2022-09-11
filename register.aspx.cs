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
    public partial class register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (CheckBox2.Checked == true)
                {
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox10.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox7.Text + "' ,'" + TextBox5.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox6.Text + "','" + TextBox11.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    //Response.Write("<script>alert('Records Inserted');</script>");
                    Label1.Text = "Records Inserted";
                    con.Close();
                }
                else

                    Label1.Text = "Please Accept Terms";
            }
            catch (Exception ex)
            {
                Label1.Text = "Please Accept Terms" + ex.ToString();
            }
        }
    }
}