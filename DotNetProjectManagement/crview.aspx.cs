using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetProjectManagement
{
    public partial class crview : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                loadgrid();
            }
            if (Session["New"] != null)
            {
              Label1.Text = Session["New"].ToString();
            }
            else
            {
                Response.Redirect("crlogin.aspx");
            }

        }
        public void loadgrid()
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("crlogin.aspx");
        }
    }
}
 