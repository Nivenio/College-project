using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT_TRACKING_SYSTEM__._0
{
    public partial class developerhomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkmail.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("developerprojectstatus.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("developertimesheet.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("modules.aspx");
        }
    }
}