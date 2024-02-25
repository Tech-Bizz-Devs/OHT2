using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public static int TotAmt = 0, Realprice = 0, totaldis = 0, count = 0;
    ClsConnection Cnn = new ClsConnection();
    public enum MessageType { Success, Error, Info, Warning };
    string filename;
    public static string login = "", loginfooter = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        list();

    }
    public void list()
    {
        try
        {
            count = 0;
            login = "<li><a href='myaccount.aspx'><i class='bx bxs-user'></i>Account</a></li>";
            loginfooter = "<li><a href='login.aspx'>Login</a></li> <li><a href='register.aspx'>Register</a></li>  ";
            string Sql = "select count(*) from trncart";
            string Sql_Inner = "";
            if (Session["UserId"] != null)
            {
                Sql_Inner = " Where UserId=" + Session["UserId"] + "";
                string username = ""; loginfooter = "";
                Cnn.Open();
                username = Cnn.ExecuteScalar("select Name from register where UserId=" + Session["UserId"] + "").ToString();
                Cnn.Close();
                login = "<li>Hi. " + username + " <a href='myaccount.aspx'><i class='bx bxs-user'></i>Account</a></li>";
            }
            else
            {
                if (Request.Cookies["mfpowerCart"] != null)
                {
                    if (Request.Cookies["mfpowerCart"].Value != null)
                    {
                        Sql_Inner = " Where CartId=" + Request.Cookies["mfpowerCart"].Value + "";
                    }
                }
            }


            if (Sql_Inner != "")
            {
                Sql = Sql + Sql_Inner;
                Cnn.Open();


                count = Convert.ToInt32(Cnn.ExecuteScalar(Sql));

                Cnn.Close();


            }


        }
        catch (Exception ex)
        {
            Session["GroupName"] = null;
            Session["UserId"] = null;
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
    }
    
}
