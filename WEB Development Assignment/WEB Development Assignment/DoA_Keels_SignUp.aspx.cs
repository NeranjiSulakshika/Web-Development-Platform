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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signbtn_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection con = new MySqlConnection("server=127.0.0.1;user id=root;database=doa");

                con.Open();
                MySqlCommand cmd = new MySqlCommand(@"INSERT INTO keelsdoa ( name,email,nic,organize,password) VALUES ('" + txtname.Text + "' , '" + txtmail.Text + "' , '" + txtnic.Text + "' , '" + orgdrop.SelectedValue + "' , '" + txtpass.Text + "' )", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Registerd Successfully!'");
                Response.Redirect("doalogin.aspx");

                txtnic.Text = "";
                txtname.Text = "";
                txtmail.Text = "";
                txtpass.Text = "";


            }
            catch (Exception ex)
            {
                Response.Write("Error!" + ex);
            }
        }
    }
}