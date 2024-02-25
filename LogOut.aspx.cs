using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            Session["GroupName"] = null;
            Session["UserId"] = null;
            HttpContext context1 = HttpContext.Current;
            if (context1.Request.Cookies["mfpowerCart"] != null)
            {
                if (Request.Cookies["mfpowerCart"].Value != null)
                {
                    Response.Cookies["mfpowerCart"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Remove("mfpowerCart");
                    HttpCookie myCookie = new HttpCookie("mfpowerCart");
                    myCookie.Expires = DateTime.Now.AddDays(-1d);
                    Response.Cookies.Add(myCookie);
                }
            }
            Response.Redirect("Index.aspx");
        }



        catch (Exception ex)
        {
            throw ex;
        }
    }
}