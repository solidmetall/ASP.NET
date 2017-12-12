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
            Label_Error.Text = global::ASP.global_asax.emessage;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int v1, v2, result;

        Label_Error.Text = "";
        try
        {
            v1 = Int32.Parse(TextBox1.Text);
            v2 = Int32.Parse(TextBox2.Text);
        }
        catch (Exception ex)
        {
            if (ex.Message[0] == 'A')
                RangeValidator2.Validate();
            else
                RequiredFieldValidator2.Validate();
            return;
        }
            result = v1 / v2;
            TextBox3.Text = result.ToString();
            Label_Error.Text = "Divide error";

    }
    private void Page_Error(object sender, EventArgs e)
    {
        Label_Error.Text = "Divide error";
        // Response.Redirect("Default.aspx");
    }

}
