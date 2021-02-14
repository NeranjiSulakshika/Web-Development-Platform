using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace WEB_Assignment___Agriculture
{
    public partial class SIGN_UP : System.Web.UI.Page
    {
        private object lblError;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed10_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void txtpass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void signbtn_Click(object sender, EventArgs e)
        {
            
                try
                {
                MySqlConnection con = new MySqlConnection("server=127.0.0.1;user id=root;database=doa");
           
                con.Open();
                MySqlCommand cmd = new MySqlCommand(@"INSERT INTO Farmer (nic, Name,email,farmname,address,password) VALUES ('" + txtnic.Text + "' , '" + txtname.Text + "' , '" + txtmail.Text + "' , '" + txtfarmname.Text + "' , '" + txtaddress.Text + "' , '" + txtpass.Text + "')", con);
               
                    
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("Registerd Successfully!'");
                Response.Redirect("SignIn.aspx");

                    txtnic.Text = "";
                    txtname.Text = "";
                    txtmail.Text = "";
                    txtfarmname.Text = "";
                    txtaddress.Text = "";
                    txtpass.Text = "";
                    

                }
                catch (Exception ex)
                {
                    Response.Write("Error!" + ex);
                }
            
        }

        protected void linklog_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void linkkeels_Click(object sender, EventArgs e)
        {
            Response.Redirect("webadmin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("webadmin.aspx");
        }
    }
}
