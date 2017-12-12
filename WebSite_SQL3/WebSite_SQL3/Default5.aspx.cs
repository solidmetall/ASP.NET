using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Branch_Number"] = TextBox1.Text;
       // Response.Redirect("Default6.aspx");
       // SqlDataSource1.SelectCommand = "SELECT * FROM BRANCH WHERE branch_nbr = '" + TextBox1.Text + "'";
        int x;
        Int32.TryParse(TextBox1.Text, out x);
       SqlDataSource1.SelectCommand = "SELECT * FROM BRANCH WHERE branch_name LIKE '" + TextBox1.Text + "%'  OR branch_nbr = " + x.ToString();
        DetailsView1.DataSource = SqlDataSource1;
        DetailsView1.DataBind();
    }
}