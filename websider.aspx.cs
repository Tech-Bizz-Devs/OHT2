using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class websider : System.Web.UI.Page
{
    public static string img1 = "", img2 = "", img3 = "", img4 = "",img5="",img6="";
    ClsConnection cnn = new ClsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtlsrblog = cnn.FillTable("select image,img2,img3,img4,img5,img6  from [product] where productid=" + Request.QueryString["id"] + "", "Detail");
     
        img1 = dtlsrblog.Rows[0]["image"].ToString();
        img2 = dtlsrblog.Rows[0]["img2"].ToString();
        img3 = dtlsrblog.Rows[0]["img3"].ToString();
        img4 = dtlsrblog.Rows[0]["img4"].ToString();
        img5 = dtlsrblog.Rows[0]["img5"].ToString();
        img6 = dtlsrblog.Rows[0]["img6"].ToString();
    }
}