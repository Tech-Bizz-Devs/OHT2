using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ReferCode"] != null)
        {
            txtrefer.Text = Request.QueryString["ReferCode"].ToString();
        }
    }
  
    private bool IsRecordAlreadyMobileExist()
    {
        Cnn.Open();
        String Sql = "Select Count(*) From register Where MobileNumber='" + txtmobile.Text + "'";
        int Count = Convert.ToInt32(Cnn.ExecuteScalar(Sql).ToString());
        if (Count > 0)
            return true;
        else
            return false;
        Cnn.Close();
    }

    private bool IsRecordAlreadyEmailExist()
    {
        Cnn.Open();
        String Sql = "Select Count(*) From register Where EmailId='" + txtemail.Text + "'";
        int Count = Convert.ToInt32(Cnn.ExecuteScalar(Sql).ToString());
        if (Count > 0)
            return true;
        else
            return false;
        Cnn.Close();
    }

    protected void Unnamed_ServerClick1(object sender, EventArgs e)
    {
        string ip = Request.ServerVariables["remote_addr"];
        //if (txtotp.Text == Label1.Text)
        //{
            Cnn.Open();
            int Id = Convert.ToInt32(Cnn.ExecuteScalar("Select IsNull(Max(UserId)+1,1) From [register]"));
            string rcode = "MFP" + Id;

            Cnn.ExecuteNonQuery("insert into [register] (UserId,Name,EmailId,Address,State,District,City,ZipCode,MobileNumber,password,rts,active,ip,Wallet,OrderCount,Groupid,gst,rcode,referbyid)  Values ('" + Id + "','" + txtname.Text + "','" + txtemail.Text + "','','','','','','" + txtmobile.Text.Trim() + "','" + txtpassword.Text + "',GetDate(),'1','" + ip + "','0','1','1','','" + rcode + "',0)");
          
            HttpContext context1 = HttpContext.Current;
            if (context1.Request.Cookies["mfpowerCart"] != null)
            {
                if (Request.Cookies["mfpowerCart"].Value != null)
                {

                    Cnn.ExecuteNonQuery("update trncart set cartid=0,userid=" + Id + " where cartid=" + Request.Cookies["mfpowerCart"].Value + "");
                    Response.Cookies["mfpowerCart"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Remove("mfpowerCart");
                    HttpCookie myCookie = new HttpCookie("mfpowerCart");
                    myCookie.Expires = DateTime.Now.AddDays(-1d);
                    Response.Cookies.Add(myCookie);
                }
            }
            string count = Cnn.ExecuteScalar("select count(*) from trncart where userid=" + Id.ToString() + "").ToString();
            refer(Id);
            Cnn.Close();
            Session["UserId"] = Id;
            Session["UserName"] = txtname.Text;
            Response.Cookies["UserId"].Value = Id.ToString();
            Response.Cookies["Name"].Expires = DateTime.Now.AddDays(30);
            if (count == "1") { Response.Redirect("shipingaddress.aspx"); }
           
            Response.Redirect("index.aspx");

        //}
        //else
        //{
        //    lbleroor.Text = "Otp Not Match.."; return;
        
        //}
    }


    public void refer(int userid)
    {
        if (txtrefer.Text != "")
        {
            Cnn.Open();
            int count = Convert.ToInt32(Cnn.ExecuteScalar("select count(*) from register where rcode='" + txtrefer.Text.Trim() + "'"));
            string idget = Cnn.ExecuteScalar("select UserId from register where rcode='" + txtrefer.Text.Trim() + "' ").ToString();
            if (count > 0)
            {
                string remark =""+ txtname.Text + " Register with us. using your refer code .. 50 points credited in your Wallet";
             
                int nID = Convert.ToInt32(Cnn.ExecuteScalar("Select  IsNull(Max(id)+1,1) From [referlist]"));
                Cnn.ExecuteNonQuery("insert into referlist values ('" + nID + "','" + idget + "','" + remark + "','50',1,getdate())");
                Cnn.ExecuteNonQuery("update register set Wallet=Wallet+50 where UserId=" + idget + "");
                Cnn.ExecuteNonQuery("update register set referbyid="+idget+"   where UserId=" + userid + "");
            }
            Cnn.Close();


        }
    }



    protected void otpbutton_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "")
        {
            lblerror.Text = "Enter Your Name"; return;
        }
        if (txtemail.Text == "")
        {
            lblerror.Text = "Enter Your Email Id"; return;
        }
        if (IsRecordAlreadyEmailExist() == true)
        {
            lblerror.Text = "Email Id Already Exist !!!"; return;
        }
        if (txtmobile.Text == "")
        {
            lblerror.Text = "Enter Your Mobile Number"; return;
        }
        if (IsRecordAlreadyMobileExist() == true)
        {
            lblerror.Text = "Mobile Number Alredy Exist !!!"; return;
        }
        if (txtpassword.Text == "")
        {
            lblerror.Text = "Enter Your Password"; return;
        }





        //if (otpbutton.Text == "Get Otp")
        //{
        //    txtmobile.Enabled = false;
        //    otpbutton.Text = "Re-Send";
        //    txtotp.Visible = true;
        //    registerdiv.Visible = true;
        //    Random rand = new Random((int)DateTime.Now.Ticks);
        //    int numIterations = 0;
        //    numIterations = rand.Next(1, 10000);
        //    Label1.Text = numIterations.ToString();
        //    Msg.SendSMS(txtmobile.Text, "Your Otp is :" + numIterations.ToString() + "- mfpower.in");
        //   lblerror.Text = " OTP sent successfully or OTP sent on your mobile No..";
        //    txtotp.Focus();
        //}
        //else
        //{
        //    Msg.SendSMS(txtmobile.Text, "Your Otp is :" + Label1.Text + "- mfpower.in"); txtotp.Focus();

        //}

    }
}