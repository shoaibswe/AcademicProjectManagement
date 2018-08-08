using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace DotNetProjectManagement
{
    public partial class teacherlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string wrongpass = "Wrong Password!!";
            string wrongusr = "Invalid User!";

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            conn.Open();
            string usrquery = "select count(*) from teacher where tusr='" + TextBoxusername.Text + "'";
            SqlCommand cmd = new SqlCommand(usrquery, conn);
            int x = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            conn.Close();
            if (x == 1)
            {
                conn.Open();
                string passquery = "select tpass from teacher where tusr='" + TextBoxusername.Text + "'";
                SqlCommand passcmd = new SqlCommand(passquery, conn);
                string y = passcmd.ExecuteScalar().ToString();
                if (y == TextBoxpassword.Text)
                {
                    Session["New"] = TextBoxusername.Text;
                    Response.Redirect("teacherprojectview.aspx");
                }
                else {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + wrongpass + "');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + wrongusr + "');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainlogin.aspx");
        }
    }
}