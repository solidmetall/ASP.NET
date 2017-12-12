using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MainForumPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (User.Identity.Name == "")
        {
            LinkButton1.Visible = false;
            lblGreet.Text = "Welcome to our forum: Guest";
            lblLogin.Text = "Please login to Post :";
            LinkButton3.Visible = false;
        }
        else
        {
            LinkButton1.Visible = true;
            LinkButton3.Visible = true;
            lblGreet.Text = "Welcome to our forum: "+ User.Identity.Name;
            lblLogin.Text = "";
            Session.Add("LoggedUser", User.Identity.Name);
        }
        //string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(CS))
        //{
        //    SqlCommand cmd = new SqlCommand("SELECT NameOfTopic, PostedBy, TimePosted FROM Posts", con);
        //    //SqlCommand cmd = new SqlCommand("INSERT INTO Posts (NameOfTopic, Message, PostedBy, TimePosted) VALUES ('" + txtNewTopicName.Text + "', '" + txtTopicMessage.Text + "', '" + User.Identity.Name + "' , '" + DateTime.Now + "' )", con);
        //    con.Open();
        //    //cmd.ExecuteNonQuery();
        //    GridView1.DataSource = cmd.ExecuteReader();
        //    GridView1.DataBind();
        //}
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //datatextfield
        //Session.Add("Clicked", ((LinkButton)sender).Text);
        //Session.Add("", 
    }
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    //Session.Add("ClickedTopic",((LinkButton)sender).Text);
    //    //Response.Redirect("~/TopicView.aspx");
    //}

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Add("ClickedTopic", ((LinkButton)sender).Text);
        Response.Redirect("~/TopicView.aspx");
    }
}