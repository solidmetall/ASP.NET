using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DetailsView1.Visible = false;
        GridView1.Visible = false;
        lbltest.Visible = false;
        //int qwe;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtSearch.Text.Trim() != "")
        {
            DetailsView1.Visible = true;
            GridView1.Visible = true;
            lbltest.Visible = true;
            lbltest.Text = "";
            Session.Add("UserSearch", txtSearch.Text);
            DetailsView1.DataBind();
            GridView1.DataBind();
        }
        else
        {
            Session.Remove("UserSearch");
        }
        //SqlDataSource1.DataBind();
        //SqlDataSource2.DataBind();
        // lbltest.Text = DetailsView1.Rows[0].Cells[1].Text;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        
            //lbltest.Text = DetailsView1.f
       
        //if (e.AffectedRows > 0)
        //{
        //    lbltest.Text = DetailsView1.Rows[0].Cells[1].Text;
        //}
        //lbltest.Text = ((DropDownList)DetailsView1.FindControl("Student_ID")).SelectedValue.ToString();
        //lbltest.Text = e.
       // lbltest.Text = e.Command.Parameters["@Student_ID"].Value.ToString();
        //string asd = e.Command.Parameters["Student_ID"].Value.ToString();
        //int ID;
        //bool resul = Int32.TryParse(asd, out ID);

        //Session.Add("ID", ID);
        //SqlDataSource2.DataBind();
        //lbltest.Text = ID.ToString();
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        
        DetailsView1.PageIndex = e.NewPageIndex;
        DetailsView1.DataBind();
        DetailsView1.Visible = true;
        GridView1.Visible = true;
        lbltest.Visible = true;
    }

    protected void DetailsView1_DataBound(object sender, EventArgs e)
    {
        if (DetailsView1.DataItemCount > 0)
        {
            int ID = Int32.Parse( DetailsView1.Rows[0].Cells[1].Text);
            Session.Add("ID", ID);
            lbltest.Text = "Student ID: " + ID.ToString();
        }
        else
        {
            Session.Remove("ID");
            lbltest.Visible = false;
        }
    }
}