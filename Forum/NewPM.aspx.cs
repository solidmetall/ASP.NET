using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NewPM : System.Web.UI.Page
{
    string LoggedInUser = "";
    protected void Page_Load(object sender, EventArgs e)
    {
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
            lblGreet.Text = "Welcome to our forum: " + User.Identity.Name;
            //lblLogin.Text = "";
        }//Session.Add("LoggedUser", User.Identity.Name);
        lblValid.Visible = false;
    }
    protected void btnCheckUser_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            lbUsers.ClearSelection();
            lbUsers.Items.Clear();
            lbUsers.DataSource = SqlDataSource1;
            lbUsers.DataValueField = "UserName";
            lbUsers.DataTextField = "UserName";
            lbUsers.DataBind();
            if(lbUsers.Items.Count > 0)
            lbUsers.SelectedIndex = 0;
        }
    }
    protected void Send_Click(object sender, EventArgs e)
    {
        if (lbUsers.Items.Count > 0)
        {

            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO PMessages (FromUser, ToUser, txtMessage, TimeM, Subject) VALUES ('" + User.Identity.Name + "', '" + lbUsers.SelectedValue + "', '" + txtPM.Text + "' , '" + DateTime.Now + "', '" + txtSubject.Text + "' )", con);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            txtName.Text = "";
            lbUsers.Items.Clear();
            lbUsers.ClearSelection();
            txtSubject.Text = "";
            CheckBox1.Checked = false;
            txtPM.Text = "";
            lblSent.Text = "Message was sent!";
            lblSent.Visible = true;
        }
        else
        {
            lblValid.Visible = true;
        }
        
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            lbUsers.Items.Clear();
            lbUsers.ClearSelection();
            lbUsers.DataSource = SqlDataSource2;
            lbUsers.DataValueField = "UserName";
            lbUsers.DataTextField = "UserName";
            lbUsers.DataBind();
            if (lbUsers.Items.Count > 0)
            { lbUsers.SelectedIndex = 0; }
            txtName.Text = "";
        }
        else
        {
            lbUsers.ClearSelection();
            lbUsers.Items.Clear();
            lbUsers.DataSource = null;
        }
    }
}