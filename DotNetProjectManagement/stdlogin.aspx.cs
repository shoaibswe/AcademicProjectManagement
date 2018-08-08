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
    public partial class stdlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Buttonlogin_Click(object sender, EventArgs e)
        {
            string exp = "Only User ID allowed!";
            try
            {
                string wrongpass = "Wrong Password!!";
                string wrongusr = "Invalid User!";

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                conn.Open();
                string usrquery = "select count(*) from Student where stdid='" + TextBoxusername.Text + "'";
                SqlCommand cmd = new SqlCommand(usrquery, conn);
                int x = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                conn.Close();
                if (x == 1)
                {
                    conn.Open();
                    string passquery = "select stdpass from Student where stdid='" + TextBoxusername.Text + "'";
                    SqlCommand passcmd = new SqlCommand(passquery, conn);
                    string y = passcmd.ExecuteScalar().ToString();
                    if (y == TextBoxpassword.Text)
                    {
                        Session["New"] = TextBoxusername.Text;
                        Response.Redirect("studentprojectview.aspx");

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + wrongpass + "');", true);
                    }
                }
                else
                {

                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + wrongusr + "');", true);

                }
            }
            catch (Exception)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + exp + "');", true);
              
            }
            /*
            string usrquery= "select count(*) from Student where stdusr='"+TextBoxusername.Text+"'";
            int x= Convert.ToInt32((op.ExecuteQuery(usrquery)).ToString());
            if (x == 1)
            {
                string passquery = "select stdpass from Student where stdusr='" + TextBoxusername.Text + "'";
                string  y = ((op.ExecuteQuery(passquery)).ToString());

                if (y == TextBoxpassword.Text)
                {
                    Session["New"]=TextBoxusername.Text;
                    Response.Write("Okay! Boss");
                }
                else { Response.Write("Wrong pass"); }
            }
            else {
                Response.Write("Usrname incorrect");
            }
            */

        }

       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("mainlogin.aspx");
        }
    }
}