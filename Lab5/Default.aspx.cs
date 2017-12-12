using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Status"] == null)
        {
            Label1.Visible = false;
        }
        else
        {
            bool created = false;
            created = (bool)Session["Status"];

            if (created == true)
            {
                Label1.Text = "Account was successfully created";
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Visible = true;
                Session.Remove("Status");
            }
            else
            {
                Label1.Text = "Account was not created";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
                Session.Remove("Status");
            }
        }
    }
}