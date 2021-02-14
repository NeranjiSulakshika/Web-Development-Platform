using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using MySql.Data.MySqlClient;

namespace WEB_Development_Assignment
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CalendarMFG.Visible = false;
                CalendarEXP.Visible = false;
                lblError.Visible = false;
                lblSuccess.Visible = false;
            }
        }

        protected void CalendarEXP_SelectionChanged(object sender, EventArgs e)
        {
            txtEXP.Text = CalendarEXP.SelectedDate.ToString("dd/MM/yyyy");
            CalendarEXP.Visible = false;
        }

        protected void CalendarMFG_SelectionChanged(object sender, EventArgs e)
        {
            txtMFG.Text = CalendarMFG.SelectedDate.ToString("dd/MM/yyyy");
            CalendarMFG.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtNIC.Text == "" || txtName.Text == "" || txtCropType.Text == "" || txtMFG.Text == "" || txtEXP.Text == "")
            {
                lblError.Visible = true;
            }
            else
            {
                try
                {
                    string imgname = Path.GetFileName(ImageUpload.PostedFile.FileName);
                    string imgtype = ImageUpload.PostedFile.ContentType;
                    Stream sm = ImageUpload.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(sm);
                    byte[] bytes = br.ReadBytes((Int32)sm.Length);

                    MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=doa");
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand(@"INSERT INTO reports (F_NIC, F_House_Name, F_Crop_Type, F_Image, F_Crop_MFG, F_Crop_EXP, Latitude, Longitude) VALUES ('" + txtNIC.Text + "' , '" + txtName.Text + "' , '" + txtCropType.Text + "' ,  @imgpath  , '" + txtMFG.Text + "' , '" + txtEXP.Text + "' , '" + txtLat.Text + "' , '" + txtLng.Text + "')", con);
                    cmd.Parameters.AddWithValue("@imgpath", bytes);
                    cmd.Parameters.AddWithValue("", imgtype);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblSuccess.Visible = true;

                    txtNIC.Text = "";
                    txtName.Text = "";
                    txtCropType.Text = "";
                    txtMFG.Text = "";
                    txtEXP.Text = "";
                }
                catch (Exception ex)
                {
                    Response.Write("Error!" + ex);
                }
            }
        }

        protected void ImageButtonMFG_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarMFG.Visible)
            {
                CalendarMFG.Visible = false;
            }
            else
            {
                CalendarMFG.Visible = true;

            }
            CalendarMFG.Attributes.Add("style", "position:absolute");
        }

        protected void ImageButtonEXP_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarEXP.Visible)
            {
                CalendarEXP.Visible = false;
            }
            else
            {
                CalendarEXP.Visible = true;
            }
            CalendarEXP.Attributes.Add("style", "position:absolute");
        }
    }
}