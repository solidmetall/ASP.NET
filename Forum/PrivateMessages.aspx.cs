using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PrivateMessages : System.Web.UI.Page
{
    private string LoggedInUser="";
    protected void Page_Load(object sender, EventArgs e)
    {
        //if LoggedInUser == "";
       
        if (User.Identity.Name == "")
        {
            //LinkButton1.Visible = false;
            LoggedInUser = "";
            lblGreet.Text = "Welcome to our forum: Guest";
           // lblLogin.Text = "Please login to Post :";
        }
        else
        {
            LoggedInUser = User.Identity.Name;
            //LinkButton1.Visible = true;
            lblGreet.Text = "Welcome to our forum: "+ User.Identity.Name;
            //lblLogin.Text = "";
        }

        if (GridViewPM.Rows.Count == 0)
        {
            lblNoMessages.Visible = true;
            lblNoMessages.Text = "No Messages in your Inbox";
        }
        else
        {
            lblNoMessages.Visible = false;
        }
    }
    protected void GridViewPM_SelectedIndexChanged(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [PMessages] WHERE ([ToUser] = '"+User.Identity.Name+"')", con);
            //SqlCommand cmd = new SqlCommand("INSERT INTO Posts (NameOfTopic, Message, PostedBy, TimePosted) VALUES ('" + txtNewTopicName.Text + "', '" + txtTopicMessage.Text + "', '" + User.Identity.Name + "' , '" + DateTime.Now + "' )", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Session.Add("Data", dt.Rows[GridViewPM.SelectedIndex]["ID"].ToString());
            //cmd.ExecuteNonQuery();
        }

        
        //GridViewRow r = GridViewPM.Rows[GridViewPM.SelectedIndex];
        ////GridViewPM.SelectedIndex;
        //GridViewRow r = GridViewPM.SelectedRow;
        //Session.Add("SPM", r/*.Cells[0].Text*/);
        //SqlDataSourcePM
        //Session.Add("c3", r.Cells[3].Text);
        //Session.Add("c4", r.Cells[4].Text);
        Response.Redirect("~/ViewPMaspx.aspx");
    }
}