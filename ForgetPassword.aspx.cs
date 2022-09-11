using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT_TRACKING_SYSTEM__._0
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string username = "";
                string password = "";
                SqlConnection con = new SqlConnection(
            "Data Source=LAPTOP-BP9P5IDJ;Initial Catalog=pts;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("select userid,password from registration where emailid=@emailid", con);
                cmd.Parameters.AddWithValue("emailid", TextBox1.Text);
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {

                    if (sdr.Read())
                    {
                        username = sdr["userid"].ToString();
                        password = sdr["password"].ToString();

                    }

                }
                con.Close();

                if (!string.IsNullOrEmpty(password))
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("project.tracking.system015@gmail.com");
                    msg.To.Add(TextBox1.Text);
                    msg.Subject = " Recover your Password";
                    msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
                    msg.IsBodyHtml = true;

                    SmtpClient smt = new SmtpClient();
                    smt.Host = "smtp.gmail.com";
                    System.Net.NetworkCredential ntwd = new NetworkCredential();
                    ntwd.UserName = "project.tracking.system015@gmail.com"; //Your Email ID  
                    ntwd.Password = "project@123"; // Your Password  
                    smt.UseDefaultCredentials = true;
                    smt.Credentials = ntwd;
                    smt.Port = 587;
                    smt.EnableSsl = true;
                    smt.Send(msg);
                    lbmsg.Text = "Username and Password Sent Successfully";
                    lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
                }
            
            }
            catch (Exception ex)
            {
                lbmsg.Text = "ERROR: " + ex.Message.ToString();

            }
            
        }
    }
}