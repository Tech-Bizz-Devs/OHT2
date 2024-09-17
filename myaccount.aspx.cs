using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myaccount : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    public static string code = "",mail="";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("login.aspx");

        }

        Cnn.Open();


        Cnn.Open();
        lblpoint.Text = Cnn.ExecuteScalar("select rcode from register where UserId=" + Session["UserId"] + "").ToString(); Cnn.Close();
        code = lblpoint.Text;


        Cnn.Close();
        //HttpContext context1 = HttpContext.Current;
        //if (context1.Request.Cookies["UserId"] != null)
        //{
        //    if (Request.Cookies["UserId"].Value != null)
        //    {
        //        try
        //        {


        //        }
        //        catch (Exception ex) {
        //            if (Request.Cookies["UserId"] != null)
        //            {
        //                Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(-1);
        //                HttpCookie myCookie = new HttpCookie("UserId");
        //                myCookie.Expires = DateTime.Now.AddDays(-1d);
        //                Response.Cookies.Add(myCookie);
        //            }
        //            if (Request.Cookies["username"] != null)
        //            {
        //                Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
        //                HttpCookie myCookie = new HttpCookie("username");
        //                myCookie.Expires = DateTime.Now.AddDays(-1d);
        //                Response.Cookies.Add(myCookie);
        //            }
        //            Response.Redirect(ResolveUrl("index.aspx"));
        //        }
        //    }
        //}
        //else
        //{
        //    Response.Redirect("login.aspx");
        //}
    }

    protected void referbutton_Click(object sender, EventArgs e)
    {
        Cnn.Open();
        mail= Cnn.ExecuteScalar("select Emailid from register where UserId=" + Session["UserId"] + "").ToString();
        Cnn.Close();
      
        MailMessage newmail = new MailMessage();
        MailAddress toadd = new MailAddress(mail);
        MailAddress fromadd = new MailAddress("contact@mfpower.in");
        //MailAddress fromadd = new MailAddress("info@mfpower.in");
        newmail.Subject = "Referral Code - mfpower.in";
        string msg = " Your Referral Code Is=" + code + "";
        newmail.Body = msg;
        newmail.To.Add(toadd);
        newmail.From = fromadd;
        newmail.IsBodyHtml = true;
        SmtpClient sserver = new SmtpClient();
        sserver.Host = "mail.aemailsrv.com";
        sserver.Credentials = new NetworkCredential("contact@mfpower.in", "DevENT@2575");
        //sserver.Credentials = new NetworkCredential("info@mfpower.in","4ZqBCR@u3Nu9v5");
        sserver.DeliveryMethod = SmtpDeliveryMethod.Network;
        sserver.Port = 25;
        sserver.Send(newmail);
        Label1.Visible = true;
        Label1.Text = "Mail Sent Successfully!!";


    }
}