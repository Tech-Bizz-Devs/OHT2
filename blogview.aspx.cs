using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class blogview : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    public enum MessageType { Success, Error, Info, Warning };
    public static string heading;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["id"] == null)
        {

            Response.Redirect("blog.aspx");
        }
        if (!IsPostBack)
        {
            list();
        }
    }

    public void list()
    {

        DataTable dtlsrblog = Cnn.FillTable("select category,title AS heading,image,convert(varchar, entrydate, 106) as date,id,description  from [blog_detail] where id=" + Request.QueryString["id"] + " order by newid()", "Detail");
        lsrblog.DataSource = dtlsrblog;
        lsrblog.DataBind();
        Page.Title = dtlsrblog.Rows[0]["heading"].ToString() + "- mfpower.in";
        heading = dtlsrblog.Rows[0]["heading"].ToString();
    }
}