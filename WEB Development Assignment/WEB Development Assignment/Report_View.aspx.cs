using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace WEB_Development_Assignment
{
    public partial class Report_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = this.GetData("select * from reports");
                rptMarkers.DataSource = dt;
                rptMarkers.DataBind();
            }
        }

        private DataTable GetData(string query)
        {
            MySqlConnection connect = new MySqlConnection("server=127.0.0.1;user id=root;database=doa;allowuservariables=True");
            MySqlCommand cmd = new MySqlCommand(query);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = connect;
            connect.Open();

            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Connection = connect;

                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }

        }
    }

}