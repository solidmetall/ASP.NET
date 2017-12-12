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
        HttpCookie mycookie;
         if (!IsPostBack)
        {
            mycookie = Request.Cookies["TestCookie"];

            if (mycookie != null)
            {
                TextBox_Name.Text = mycookie.Value;
            }
            else
                TextBox_Name.Text = "no cookie";
        }
        Session.Add("MyName", TextBox_Name.Text);
        TextBox1.Text = global::ASP.global_asax.app_name;

    }
    protected void Button_Save_Click(object sender, EventArgs e)
    {
        HttpCookie mycookie;
        DateTime dt;

        mycookie = new HttpCookie("TestCookie", TextBox_Name.Text);
        mycookie.Expires = DateTime.Now.AddMinutes(30);
        dt = mycookie.Expires;
        TextBox1.Text = dt.ToString();

        Response.Cookies.Add(mycookie);

    }
    protected void _Delete_Click(object sender, EventArgs e)
    {
        Response.Cookies.Remove("TestCookie");
        TextBox1.Text = "removed";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        form1.Style["background-color"] = "Red";
    }
}