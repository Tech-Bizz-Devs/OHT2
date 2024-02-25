using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["GroupName"] == null)
        {
            Session["GroupName"] = "3";
        }



        //HttpContext context1 = HttpContext.Current;
        //if (context1.Request.Cookies["mfpowerCart"] != null)
        //{
        //    if (Request.Cookies["mfpowerCart"].Value != null)
        //    {
        //        Response.Cookies["mfpowerCart"].Expires = DateTime.Now.AddDays(-1);
        //        Response.Cookies.Remove("mfpowerCart");
        //        HttpCookie myCookie = new HttpCookie("mfpowerCart");
        //        myCookie.Expires = DateTime.Now.AddDays(-1d);
        //        Response.Cookies.Add(myCookie);
        //    }
        //}
        //if (Session["UserId"] != null)
        //{

        //    Cnn.Open();
        //    Cnn.ExecuteNonQuery("delete from  trncart  where id=" + Session["UserId"] + "");

        //    Cnn.Close();
        //}
    }
}