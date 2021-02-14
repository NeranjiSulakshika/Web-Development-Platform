using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;

namespace WEB_Assignment___Agriculture
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void linklog_Click(object sender, EventArgs e)
        {
            Response.Redirect("Web-Admin-SignIn.aspx");
        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = txtnic.Text;
                string pass = txtpass.Text;
                MySqlConnection con = new MySqlConnection("server=127.0.0.1;user id=root;database=doa");
                con.Open();
                string qry = "select * from keelsdoa where nic='" + uid + "' and Password='" + pass + "'";
                MySqlCommand cmd = new MySqlCommand(qry, con);
                MySqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label1.Visible = true;
                    Label1.Text = "Login Sucess......!!";
                    Response.Redirect("Home(DoA_Keels).aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "UserId & Password Is not correct Try again..!!";

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}