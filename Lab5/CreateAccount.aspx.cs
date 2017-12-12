using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        //Label1.Text = "Success " + txtUserName.Text;
        //lblDone.Text = txtUserName.Text + txtEmail.Text + txtPassWord.Text + txtRetypePass.Text;
        //lblDone.Visible = true;
        bool canceled = true;
        Session.Add("Status", canceled);
        Response.Redirect("Default.aspx");
        //Response.Redirect("Default.aspx");
        
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        bool canceled = false;
        Session.Add("Status", canceled);
        Response.Redirect("Default.aspx");
    }
}