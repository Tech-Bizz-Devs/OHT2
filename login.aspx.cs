using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpContext context = HttpContext.Current;
        if (context.Request.Cookies["mfpowerCart"] != null)
        {
            if (txtlogin.Text == "")
            {
                lbleroor.Text = "Please Enter User Name/Mobile Number";
                return;
            }

            if (txtpassword.Text == "")
            {
                lbleroor.Text = "Please Enter Password";
                return;
            }
            DataSet ds = new DataSet();
            Cnn.Open();
            Cnn.FillDataSet(ds, "select * from register Where MobileNumber = '" + txtlogin.Text.Replace("'", "''") + "'COLLATE SQL_Latin1_General_CP1_CS_AS and Password = '" + txtpassword.Text.Replace("'", "''") + "' ", "Admin_Login");

            if (ds.Tables[0].Rows.Count == 0)
            {
                lbleroor.Text = "Please Enter Correct Username & Password"; Button1.Focus(); return;
            }
            else
            {
                lbleroor.Text = "";
                HttpContext context1 = HttpContext.Current;
                if (context1.Request.Cookies["mfpowerCart"] != null)
                {
                    if (Request.Cookies["mfpowerCart"].Value != null)
                    {
                        Cnn.ExecuteNonQuery("update trncart set cartid=0,userid=" + ds.Tables[0].Rows[0]["UserId"] + " where cartid=" + Request.Cookies["mfpowerCart"].Value + "");
                        Response.Cookies["mfpowerCart"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies.Remove("mfpowerCart");
                        HttpCookie myCookie = new HttpCookie("mfpowerCart");
                        myCookie.Expires = DateTime.Now.AddDays(-1d);
                        Response.Cookies.Add(myCookie);
                    }
                }
                Cnn.Close();
                Session["UserId"] = ds.Tables[0].Rows[0]["UserId"].ToString();
                Session["MobileNumber"] = ds.Tables[0].Rows[0]["MobileNumber"].ToString();
                Session["Groupid"] = ds.Tables[0].Rows[0]["Groupid"].ToString();
                Response.Cookies["UserId"].Value = ds.Tables[0].Rows[0]["UserId"].ToString();
                // Response.Cookies["Name"].Expires = DateTime.Now.AddDays(1);
                Response.Redirect("shipingaddress.aspx");
            }
        }
        else
        {

            if (txtlogin.Text == "")
            {
                lbleroor.Text = "Please Enter User Name / Mobile Number";
                return;
            }

            if (txtpassword.Text == "")
            {
                lbleroor.Text = "Please Enter Password";
                return;
            }
            DataSet ds = new DataSet();
            Cnn.Open();

            Cnn.FillDataSet(ds, "select * from register  Where MobileNumber = '" + txtlogin.Text.Replace("'", "''") + "'COLLATE SQL_Latin1_General_CP1_CS_AS and Password = '" + txtpassword.Text.Replace("'", "''") + "'", "Admin_Login");

            if (ds.Tables[0].Rows.Count == 0)
            {
                lbleroor.Text = "Please Enter Correct Username & Password"; Button1.Focus(); return; ;
            }
            else
            {
                string count = Cnn.ExecuteScalar("select count(*) from trncart where userid=" + ds.Tables[0].Rows[0]["UserId"].ToString() + "").ToString();
                Cnn.Close();
                lbleroor.Text = "";
                Session["UserId"] = ds.Tables[0].Rows[0]["UserId"].ToString();
                Session["UserName"] = ds.Tables[0].Rows[0]["name"].ToString();
                Session["GroupName"] = ds.Tables[0].Rows[0]["Groupid"].ToString();
                Response.Cookies["UserId"].Value = ds.Tables[0].Rows[0]["UserId"].ToString();
                // Response.Cookies["Name"].Expires = DateTime.Now.AddDays(1);
                if (count == "1") { Response.Redirect("shipingaddress.aspx"); }
                Response.Redirect("Index.aspx");
            }
        }
    }
}