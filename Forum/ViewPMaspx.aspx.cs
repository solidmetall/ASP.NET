using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ViewPMaspx : System.Web.UI.Page
{
    private SqlDataReader rdr;
    //private string subj;
    //private string from;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = Session["Data"].ToString();

       // lblDel.Visible = false;
        
        if (!IsPostBack == true)
        {
            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT FromUser, Subject, txtMessage, TimeM FROM PMessages WHERE (ID = '" + Int32.Parse(Session["Data"].ToString()) + "')", con);

                con.Open();

                rdr = cmd.ExecuteReader();

                rdr.Read();
                Session.Add("from", rdr[0].ToString());
                Session.Add("subj", rdr[1].ToString());
                
                rdr.Close();

                rdr = cmd.ExecuteReader();
              
                dvMessage.DataSource = rdr;
                dvMessage.DataBind();
            }
        }
        lblGreet.Text = "Welcome to our forum: " + User.Identity.Name;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand delcmd = new SqlCommand("DELETE FROM PMessages WHERE (ID = '" + Int32.Parse(Session["Data"].ToString()) + "')", con);
            con.Open();
            delcmd.ExecuteNonQuery();
        }

        dvMessage.Visible = false;
        btnDelete.Visible = false;
        btnReply.Visible = false;
        txtReply.Visible = false;
        lblDel.Visible = true;
        Label1.Visible = false;
       //if (dvMessage.PageCount == 0)
       // {
       //     lblDel.Visible = true;
       // }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO PMessages (FromUser, ToUser, txtMessage, TimeM, Subject) VALUES ('" + User.Identity.Name + "', '" + Session["from"].ToString() + "', '" + txtReply.Text + "' , '" + DateTime.Now + "', '" + Session["subj"].ToString() + "')", con);
            
            cmd.ExecuteNonQuery();
        }

        dvMessage.Visible = false;
        btnDelete.Visible = false;
        btnReply.Visible = false;
        txtReply.Visible = false;
        Label1.Visible = false;
        lblDel.Text = "Message Sent";
        lblDel.Visible = true;
    }
}
