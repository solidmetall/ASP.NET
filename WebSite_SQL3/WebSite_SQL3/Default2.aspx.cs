using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int idx;
        idx = GridView1.SelectedIndex;
        Label l1;

        l1 = (Label) GridView1.Rows[idx].Cells[1].FindControl("label1");
        TextBox1.Text = l1.Text;
    }
    protected void DetailsView1_PageIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DetailsView1.PageIndex.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // This was an attempt to change the key -- This does not update the other fields in the record
        SqlDataSource1.UpdateParameters["new_branch_nbr"].DefaultValue = TextBox3.Text;
        SqlDataSource1.UpdateParameters["branch_nbr"].DefaultValue = TextBox2.Text;
        SqlDataSource1.Update();
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Button tb;
        tb = (Button)sender;
        TextBox1.Text = tb.Text;
    }
}