using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class appointment : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserId"] != null)
        {
            UserDetailes();
        }
    }

    public void UserDetailes()
    {
        try
        {
            DataSet ds = new DataSet();
            Cnn.Open();
            Cnn.FillDataSet(ds, "select a.* from register as a where a.userid='" + Session["UserId"] + "'", "Admin_Login");
            Cnn.Close();
            txtname.Text = ds.Tables[0].Rows[0]["name"].ToString();

            txtmobile.Text = ds.Tables[0].Rows[0]["MobileNumber"].ToString();


        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Cnn.Open();
        int ID = Convert.ToInt32(Cnn.ExecuteScalar("Select  IsNull(Max(id)+1,1) From [BookConsult]"));
        Cnn.ExecuteNonQuery("INSERT INTO BookConsult (id,name,mobile,subject,message,rts,did) values ('" + ID + "','" + txtname.Text + "','" + txtmobile.Text + "','" + txtsubj.Text + "','" + txtmessage.Text + "',getdate(),'')");
        Cnn.Close();

        txtmessage.Text = "";
        txtname.Text = "";
        txtmobile.Text = "";
        txtsubj.Text = "";
        lblerror.Text = "Thanks for Enquiry.. Admin Contact Soon...";

        txtmessage.Focus();
        lblerror.Focus();
    }
}