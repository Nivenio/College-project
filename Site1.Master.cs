using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT_TRACKING_SYSTEM__._0
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["uname"] != null)
                {
                    LinkButton1.Visible = false;//user login link button
                    LinkButton2.Visible = true;//sign up link button

                    LinkButton3.Visible = true;//logout link button
                    LinkButton7.Visible = true;//hello user link button
                    LinkButton7.Text = "Hello " + Session["uname"].ToString();
                }
                else
                {
                    LinkButton1.Visible = true;//user login link button
                    LinkButton2.Visible = true;//sign up link button

                    LinkButton3.Visible = false;//logout link button
                    LinkButton7.Visible = false;//hello user link button
                    
                }
            }
            catch(Exception ex)
            {

            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["uname"]= null;
            LinkButton1.Visible = true;//user login link button
            LinkButton2.Visible = true;//sign up link button

            LinkButton3.Visible = false;//logout link button
            LinkButton7.Visible = false;//hello user link button
            
            Response.Redirect("Default.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}