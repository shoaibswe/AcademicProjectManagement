using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetProjectManagement
{
    public partial class studentprojectview : System.Web.UI.Page
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
                Label6.Text = Session["New"].ToString();
            }
            else
            {
                Response.Redirect("stdlogin.aspx");
            }
        }
        public void loadgrid()
        {
            string exp = "Only Student ID allow korbe!";
            try
            {
                int userId = Convert.ToInt32(Session["New"]);
               
                string query = @"SELECT [pid] ,[pname] ,[stdid] ,[marks] ,[cmnt] FROM [dbo].[project] WHERE stdid=" + userId.ToString();

                GridView3.DataSource = op.GetData(query);
                GridView3.DataBind();
            }
            catch (Exception) {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + exp + "');", true);
              
            }
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[project]
           ([stdid]
           ,[pname])
            VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            if (op.ExecuteQuery(query) == 1) { 
            loadgrid();
        }
            
        }

         
        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {

            Label lblstd = (Label)GridView3.Rows[e.RowIndex].FindControl("Label2");

            string query = @"DELETE FROM [dbo].[project]
            WHERE stdid =" + lblstd.Text;

            if (op.ExecuteQuery(query) == 1)
            {
                loadgrid();
            }

        }

             protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView3.PageIndex = e.NewPageIndex;
            loadgrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("stdlogin.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainlogin.aspx");
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      

        protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView3.EditIndex = e.NewEditIndex;
            loadgrid();
        }

        protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lbl_stdid = (Label)GridView3.Rows[e.RowIndex].FindControl("Label2");
            TextBox txt_stdid = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox3");

            TextBox txt_pname = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBox2");
            string query1 = @"UPDATE [dbo].[project] SET [pname] ='" + txt_pname.Text + "'  WHERE stdid=" + txt_stdid.Text;

            if (op.ExecuteQuery(query1) == 1)
            {
                GridView3.EditIndex = -1;
                loadgrid();
            }
        }

        protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView3.EditIndex = -1;
            loadgrid();
        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}
