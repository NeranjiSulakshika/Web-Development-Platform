using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB_Assignment___Agriculture
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void linklog_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            string webpass = txtpass.Text;
            if (webpass == "webadmin")
                Response.Redirect("DoA_Keels_SignUp.aspx");
            else
                Label1.Text = "Web Admin  Password Is not correct Try again..!!";

        }
    }
}