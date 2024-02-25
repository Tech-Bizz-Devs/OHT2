using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blog : System.Web.UI.Page
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
    }

    public void list()
    {

        DataTable dtlsrblog = Cnn.FillTable("select category,SUBSTRING(title, 0, 50) AS heading,image,convert(varchar, entrydate, 106) as date,id  from [blog_detail] order by newid()", "Detail");
        lsrblog.DataSource = dtlsrblog;
        lsrblog.DataBind();
    }
}