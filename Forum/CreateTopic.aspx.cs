using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class CreateTopic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblGreet.Text = "Hello " + User.Identity.Name;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using(SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd0 = new SqlCommand("INSERT INTO Topics (UniquePosts, PostedBy, TimeOpened) VALUES ('" + txtNewTopicName.Text + "','"+User.Identity.Name+"','" +DateTime.Now+"')", con);
            con.Open();
            cmd0.ExecuteNonQuery();
            SqlCommand cmd = new SqlCommand("INSERT INTO Posts (NameOfTopic, Message, PostedBy, TimePosted) VALUES ('" + txtNewTopicName.Text + "', '"+txtTopicMessage.Text+"', '"+User.Identity.Name+"' , '"+DateTime.Now+"' )", con);
            //con.Open();
            cmd.ExecuteNonQuery();
        }

        Session.Add("ClickedTopic", txtNewTopicName.Text);
        Response.Redirect("~/TopicView.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MainForumPage.aspx");
    }
}