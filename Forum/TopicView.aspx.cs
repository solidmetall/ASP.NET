using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class TopicView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //lblGreetin.Text = Session["ClickedTopic"].ToString();
        if (User.Identity.Name == "")
        {
            lblGreetin.Text = "Hello Guest";
            btnPost.Enabled = false;
            txtReply.Enabled = false;
            Label1.Visible = true;
        }
        else
        {
            lblGreetin.Text = "Hello "+ User.Identity.Name;
            btnPost.Enabled = true;
            txtReply.Enabled = true;
            Label1.Visible = true;
        }
        lblTopicName.Text = "Topic Name: "+Session["ClickedTopic"].ToString();

        //string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(CS))
        //{
        //    SqlCommand cmd = new SqlCommand("SELECT PostedBy , Message, TimePosted FROM Posts WHERE NameOfTopic = '"+Session["ClickedTopic"].ToString()+"'", con);
        //    con.Open();
        //    //SqlDataReader rdr = cmd.ExecuteReader();
        //    //rdr.
        //    GridView1.DataSource = cmd.ExecuteReader();
        //    GridView1.DataBind();
        //}

    }

    protected void btnPost_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Posts (NameOfTopic, Message, PostedBy, TimePosted) VALUES ('" +Session["ClickedTopic"].ToString() + "', '" + txtReply.Text + "', '" + User.Identity.Name + "' , '" + DateTime.Now + "' )", con);
            con.Open();
            cmd.ExecuteNonQuery();
        }

        txtReply.Text = "";
        Response.Redirect("~/TopicView.aspx");
    }


    //protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    //{
    //    //GridView1.Sort(e.SortExpression, e.SortDirection);
    //    //GridView1.DataBind();
    //    //SortDirection Adir = SortDirection.Ascending;
    //    //SortDirection Ddir = SortDirection.Descending;
    //    //string expr = e.SortExpression;

    //    //if (e.SortDirection == Adir)
    //    //{
    //    //    GridView1.Sort(expr, Adir);
    //    //    GridView1.DataBind();
    //    //}
    //    //else
    //    //{
    //    //    GridView1.Sort(expr, Ddir);
    //    //    GridView1.DataBind();
    //    //}
       
    //}
}