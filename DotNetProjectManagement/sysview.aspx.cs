using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetProjectManagement
{
    public partial class sysview : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadgrid();
                loadgrid2();
            }
            if (Session["New"] != null)
            {
                Label1.Text = Session["New"].ToString();
            }
            else
            {
                Response.Redirect("syslogin.aspx");
            }
        }

        public void loadgrid()
        {

            string query = @"SELECT [stdid]
      ,[stdpass]
      ,[Name]
      ,[email]
      ,[Phone]
  FROM [dbo].[Student]";
           op.GetData(query);
           GridView1.DataBind();
        }
        public void loadgrid2()
        {

            string query = @"SELECT[tusr]
      ,[tpass]
      ,[tname]
      ,[temail]
        FROM[dbo].[teacher]";
           op.GetData(query);
         GridView2.DataBind(); 
         } 

            protected void Button3_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Student]
           ([stdid]
           ,[stdpass]
           ,[Name]
           ,[email]
           ,[Phone])
     VALUES('" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "')";

            if (op.ExecuteQuery(query) == 1)
             {
                 loadgrid();

             }
          }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string query3 = @"INSERT INTO [dbo].[teacher]
           ([tusr]
           ,[tpass]
           ,[tname]
           ,[temail])
     VALUES('" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            if (op.ExecuteQuery(query3) == 1)
            {
                          loadgrid2();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("syslogin.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        { 

        }
            
  
           protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            loadgrid2();
        }

        protected void GridView2_RowUpdating1(object sender, GridViewUpdateEventArgs g)
        {
            Label lblusr = (Label)GridView2.Rows[g.RowIndex].FindControl("Label1");
            TextBox tu = (TextBox)GridView2.Rows[g.RowIndex].FindControl("TextBox1");
            TextBox tn = (TextBox)GridView2.Rows[g.RowIndex].FindControl("TextBox2");
            TextBox tp = (TextBox)GridView2.Rows[g.RowIndex].FindControl("TextBox3");
            TextBox te = (TextBox)GridView2.Rows[g.RowIndex].FindControl("TextBox4");
            string query1 = @"UPDATE[dbo].[teacher] SET[tpass] ='" + tp.Text + "', [tname] = '" + tn.Text + "', [temail] = '" + te.Text+"'   WHERE tusr=" + tu.Text;
            if (op.ExecuteQuery(query1) == 1)
            {
                GridView2.EditIndex = -1;
                loadgrid2();
            }
        }

        protected void GridView2_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            loadgrid2();
        }

        protected void GridView2_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            loadgrid2();
        }

        protected void GridView2_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            loadgrid2();
        }
    }
    }