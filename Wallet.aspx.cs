using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Wallet : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("login.aspx");

        }
        list();
    }
    public void list()
    {
        Cnn.Open();
        DataTable Dt = Cnn.FillTable("select  * from referlist where mid=" + Session["UserId"] + " order by [id] desc ", "the");
        ListView1.DataSource = Dt;
        ListView1.DataBind();
        lblpoint.Text = Cnn.ExecuteScalar("select Wallet from register where UserId=" + Session["UserId"] + "").ToString();
        Cnn.Close();

    }
}