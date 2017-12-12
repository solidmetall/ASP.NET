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
    protected void DropDownList1_Load(object sender, EventArgs e)
    {
        Session.Add("SelectedID", DropDownList1.SelectedValue.ToString());
    }

    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        Session.Add("SelectedID", DropDownList1.SelectedValue.ToString());

    }
    protected void GridViewClassSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session.Add("SelectedCourseID", GridViewClassSelect.Rows[GridViewClassSelect.SelectedIndex].Cells[1].Text);
    }
}