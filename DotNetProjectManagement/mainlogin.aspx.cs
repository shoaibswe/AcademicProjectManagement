/* @Author Shoaib Rahman
 * Daffodil Int University
 * Dept SWE
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetProjectManagement
{
    public partial class mainlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (RadioButtonList1.Text.Equals("General_Student"))
            {
                Response.Redirect("stdlogin.aspx");
            }
            else if (RadioButtonList1.Text.Equals("CR"))
            {
                Response.Redirect("crlogin.aspx");
            }
        }




        protected void Button3_Click(object sender, EventArgs e)
        {
            if (RadioButtonList2.Text.Equals("Teacher"))
            {
                Response.Redirect("teacherlogin.aspx");
            }
            else if (RadioButtonList2.Text.Equals("System_Admin"))
            {
                Response.Redirect("syslogin.aspx");
            }
        
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.close()</script>");
        }
    }
    }