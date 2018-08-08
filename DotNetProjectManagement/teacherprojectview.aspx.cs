using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetProjectManagement
{
    public partial class teacherprojectview : System.Web.UI.Page
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
                Label6.Text=Session["New"].ToString();
            }
            else {
                Response.Redirect("teacherlogin.aspx");
            }
        }
        public void loadgrid() 
        {

       string query = @"SELECT [pid]
      ,[pname]
      ,[stdid]
      ,[marks]
      ,[cmnt]
  FROM [dbo].[project]";

            GridView1.DataSource = op.GetData(query);
            GridView1.DataBind();
        }

    
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            loadgrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lbl1 = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            TextBox txtpid = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
            TextBox txtmarks = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
            TextBox txtcmnt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
            string query1 = @"UPDATE [dbo].[project] SET [marks] ='" + txtmarks.Text + "',[cmnt] = '" + txtcmnt.Text + "'  WHERE pid=" + txtpid.Text;
            
         
            if (op.ExecuteQuery(query1) == 1)
            {
                GridView1.EditIndex = -1;
                             loadgrid();
            }
            

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            loadgrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("teacherlogin.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainlogin.aspx");
        }
    }
    }