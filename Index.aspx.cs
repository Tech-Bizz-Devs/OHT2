using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    public enum MessageType { Success, Error, Info, Warning };
    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            list();
        }
        Page.Title = "Mfpower.in improves the performance level of both male & female. ";
        Page.MetaDescription = "Mf power helps to fix the performance issues of male & female , improve the  testosterone level , boost up the performance , increases the energy level.";
    }

    public void list()
    {

        DataTable dtlsrblog = Cnn.FillTable("select top 6 category,SUBSTRING(title, 0, 50) AS heading,image,convert(varchar, entrydate, 106) as date,id  from [blog_detail] order by newid()", "Detail");
        lsrblog.DataSource = dtlsrblog;
        lsrblog.DataBind();

        DataTable dttesi = Cnn.FillTable("select top 6 name,info from [SuccessfulStories] order by newid()", "Detail");
        lsttesi.DataSource = dttesi;
        lsttesi.DataBind();
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