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

    }
    protected void btnRemember_Click(object sender, EventArgs e)
    {
        if (txtName.Text != "")
        {
            if (Session[txtName.Text] != null)
            {
                //Session[txtName.Text] = null;
                Session.Remove(txtName.Text);
                ddlMycolor.Items.Remove(txtName.Text);
            }
            lblFavoriteColor.Text = "Your Favorite Color is: " + ddlColor.SelectedItem.Text;
            ddlMycolor.Items.Add(txtName.Text);
            string VA = ddlColor.SelectedItem.Text;
            string name = txtName.Text;
            Session.Add(name, VA);
            txtName.Text = "";

            lblFavoriteColor.ForeColor = System.Drawing.Color.FromName(ddlColor.SelectedItem.Text);
            //        lblFavoriteColor.ForeColor = System.Drawing.KnownColor.
        }
    }
    protected void ddlMycolor_SelectedIndexChanged(object sender, EventArgs e)
    {
        //lblFavoriteColor.Text = "Your Favorite Color is: " + ddlColor.SelectedItem.Text;
        if (Session[ddlMycolor.SelectedItem.Text] != null)
        {
            string VA = (string)Session[ddlMycolor.SelectedItem.Text];
            lblFavoriteColor.Text = "Your Favorite Color is: " + VA;
            lblFavoriteColor.ForeColor = System.Drawing.Color.FromName(VA);
        }
        //else
        //{
        //    lblFavoriteColor.Text = "Your Favorite Color is: " + ddlColor.SelectedItem.Text;
        //}
    }
}