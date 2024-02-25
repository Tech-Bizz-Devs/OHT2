using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Web.Script.Serialization;
using System.Text;
using System.Net.Mail;

public partial class MyOrder : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    BaseUrl api = new BaseUrl();
    API api1 = new API();
    string usercode;
    string user;
 public static   string OldPass;


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                

                if (!IsPostBack)
                {
                    Cnn.Open();
                    DataTable DTT = Cnn.FillTable("select ShippingEmailId,ShippingMobileNo,OrderId,PaidAmount,DeliveryFees, convert(varchar, RTS, 6) as RTS  from trnordermain where UserCode='" + Session["UserId"] + "' and Cancelled !=1 order by orderid desc", "the");
                    Lstorder.DataSource = DTT;
                    Lstorder.DataBind();
                    Cnn.Close();
                }
             //  


               
               
               
              

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
     
       

    }







    protected void Lstorder_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {

            divPrint.Visible = true;
            pnlOrderInfo.Visible = true;

            string OrderId = ((Label)e.Item.FindControl("lblOrderId")).Text;
              Cnn.Open();
              DataRow dr = Cnn.FillRow("Select DeliveryFees,Amount,PaidAmount,WalletAmount From TrnOrderMain where OrderId=" + OrderId + "");
            Cnn.Close();
         
            lblAmt.Text = Convert.ToString(dr["Amount"]);
            LblDeliveryCharges.Text = Convert.ToString(dr["DeliveryFees"]);
            LblNetAmount.Text = Convert.ToString(dr["PaidAmount"])+"/-";
            lblwalletamount.Text = Convert.ToString(dr["WalletAmount"]);
            if (Convert.ToInt32(lblwalletamount.Text) > 0)
            {
                walletdiv.Visible = true;
            }
            else
            {
                walletdiv.Visible = false;
            }
            Label LblInvoiceNo = e.Item.FindControl("LblInvoiceNo") as Label;
            DataTable dt = Cnn.FillTable("Select a.size,a.DisInvoiceNo,a.OrderId,a.ProductId,b.ProductName,b.Image as  Image,a.Unit,a.weight,a.Quantity,a.Rate,a.Amount,a.Discount,a.NetAmount from TrnOrderDetail as a Inner Join Product as b on a.ProductId=b.ProductId  where Orderid='" + OrderId + "'", "Detail");
          
            LstConferm.DataSource = dt;
            LstConferm.DataBind();
           
            

            DataTable dtable = Cnn.FillTable("Select OrderId,'" + OrderId + "' as DisInvoiceNo,ShippingName,ShippingAddress,ShippingMobileNo,ShippingEmailId,ShippingCity,ShippingZipcode,ShippingStats,Convert(varchar,RTS,103) as ShippingDate,PayMode,Convert(varchar,DeliveryDate,103) as DeliveredDate From TrnOrderMain where Orderid='" + OrderId + "'", "Detail");
            LstCategory.DataSource = dtable;
            LstCategory.DataBind();
         
       
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.location.href = '#bottom'", true);
        }
        if (e.CommandName == "cen")
        {

            string lblShippingMobileNo = ((Label)e.Item.FindControl("lblShippingMobileNo")).Text;
            string ShippingEmailId = ((Label)e.Item.FindControl("ShippingEmailId")).Text;
            
            string OrderId = ((Label)e.Item.FindControl("lblOrderId")).Text;
            Cnn.Open();
            Cnn.ExecuteNonQuery("update TrnOrderMain set Cancelled=1   where OrderId=" + OrderId + "");
            Cnn.ExecuteNonQuery("update TrnOrderDetail set Cancelled=1   where OrderId=" + OrderId + "");
            Cnn.Close();

            Msg.SendSMS("8955615179", "Order No. " + OrderId + " cancel by customer.  mfpower.in");
            Msg.SendSMS(lblShippingMobileNo, "Order Cancel Successfully .. mfpower.in");
            emailfunn(OrderId);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.location.href = '#bottom'", true);
            Response.Redirect("MyOrder.aspx");
         }
        
    }

    public void emailfunn(string orderii)
    {
        int Amount = 0, PaidAmount = 0, DeliveryCharges = 0, OrderAmount = 0, Quantity = 0, AdditionalCharges = 0;

        string emailloop = "", orderid = orderii;

        DataTable dt = Cnn.FillTable("select a.DeliveryCharges,a.Quantity,(select productname from product where productid=a.productid) as productname,a.netamount,a.productid from TrnOrderDetail as a where a.orderid=" + orderid + "", "Detail");
        DataTable dtt = Cnn.FillTable("select * from TrnOrdermain where orderid=" + orderid + "", "Detail");
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Amount = Amount + Convert.ToInt32(dt.Rows[i]["netamount"]);
                emailloop = emailloop + "<table style='border:solid 1px #bf0d33;width:600px'> <tr style='border:solid 1px #bf0d33;width:600px;border-top:1px #bf0d33 solid !important'> <td style='width:400px;border-right:1px solid #bf0d33'>" + dt.Rows[i]["productname"] + "</td><td style='width:100px;border-right:1px solid #bf0d33'>" + dt.Rows[i]["Quantity"] + "</td><td style='width:100px'>" + dt.Rows[i]["netamount"] + "</td></tr></table>";
            }

        }


        DeliveryCharges = Convert.ToInt32(dt.Rows[0]["DeliveryCharges"]);
        PaidAmount = DeliveryCharges + Amount;

        string emailinfo = "<!DOCTYPE html><html xmlns='http://www.w3.org/1999/xhtml'><head> <title></title></head><body> <div style='width:600px'> <div style='width:600px;background-color:#bf0d33;height:100px;color:white'> <br/> <h1 style='text-align:center'>Cancelled Order</h1><br/> </div><h2>Hi " + dtt.Rows[0]["ShippingName"] + ",</h2> <p>you canceled the order ..</p><h4>The Order details are as folows:</h4> <h1 style='color:#bf0d33'>[Order No. #" + orderid + "] [Date : " + dtt.Rows[0]["rts"] + "]</h1> <table style='border:solid 1px #bf0d33;width:600px'> <tr> <th style='width:400px;border-right:1px solid #bf0d33'>Product Name</th> <th style='width:100px;border-right:1px solid #bf0d33'>Qty.</th> <th style='width:100px'>Price</th> </tr></table> " + emailloop + " <table style='border:solid 1px #bf0d33;width:600px'> <tr style='border:solid 1px #bf0d33;width:600px;border-top:1px #bf0d33 solid !important'> <td style='width:300px;border-right:1px solid #bf0d33'>Delivery Charge</td><td style='width:300px;border-right:1px solid #bf0d33'>₹" + DeliveryCharges + "/-</td></tr></table> <table style='border:solid 1px #bf0d33;width:600px'> <tr style='border:solid 1px #bf0d33;width:600px;border-top:1px #bf0d33 solid !important'> <td style='width:300px;border-right:1px solid #bf0d33'>Total</td><td style='width:300px;border-right:1px solid #bf0d33'>₹" + Amount + "/-</td></tr></table> <table style='border:solid 1px #bf0d33;width:600px'> <tr style='border:solid 1px #bf0d33;width:600px;border-top:1px #bf0d33 solid !important'> <td style='width:300px;border-right:1px solid #bf0d33'>Net Amount</td><td style='width:300px;border-right:1px solid #bf0d33'>₹" + PaidAmount + "/-</td></tr></table> <br/> <p>Please let us Know if we can help !</p><p>Regards mfpower</p><p>www.mfpower.in</p></div></body></html>";
        string adminemailinfo = "<!DOCTYPE html><html xmlns='http://www.w3.org/1999/xhtml'><head> <title></title></head><body> <div style='width:600px'> <div style='width:600px;background-color:#bf0d33;height:100px;color:white'> <br/> <h1 style='text-align:center'>Cancelled Order</h1><br/> </div><h2>Hi Admin,</h2> <p>Order Cancel BY User ..</p><h4>The Order details are as folows:</h4> <h1 style='color:#bf0d33'>[Order No. #" + orderid + "] [Date : " + dtt.Rows[0]["rts"] + "]</h1> <table style='border:solid 1px #bf0d33;width:600px'> <tr> <th style='width:400px;border-right:1px solid #bf0d33'>Product Name</th> <th style='width:100px;border-right:1px solid #bf0d33'>Qty.</th> <th style='width:100px'>Price</th> </tr></table> " + emailloop + " <table style='border:solid 1px #bf0d33;width:600px'> <tr style='border:solid 1px #bf0d33;width:600px;border-top:1px #bf0d33 solid !important'> <td style='width:300px;border-right:1px solid #bf0d33'>Delivery Charge</td><td style='width:300px;border-right:1px solid #bf0d33'>₹" + DeliveryCharges + "/-</td></tr></table> <table style='border:solid 1px #bf0d33;width:600px'> <tr style='border:solid 1px #bf0d33;width:600px;border-top:1px #bf0d33 solid !important'> <td style='width:300px;border-right:1px solid #bf0d33'>Total</td><td style='width:300px;border-right:1px solid #bf0d33'>₹" + Amount + "/-</td></tr></table> <table style='border:solid 1px #bf0d33;width:600px'> <tr style='border:solid 1px #bf0d33;width:600px;border-top:1px #bf0d33 solid !important'> <td style='width:300px;border-right:1px solid #bf0d33'>Net Amount</td><td style='width:300px;border-right:1px solid #bf0d33'>₹" + PaidAmount + "/-</td></tr></table> <br/> <p>Please let us Know if we can help !</p><p>Regards mfpower</p><p>www.mfpower.in</p></div></body></html>";

       
        email(dtt.Rows[0]["ShippingEmailId"].ToString(), "Cancel Order: mfpower.in", emailinfo);//send email to user             
        email("info@mfpower.in", "Cancel Order: mfpower.in", adminemailinfo);//send email to Admin
        email("mfpower007@gmail.com", "Cancel Order: mfpower.in", adminemailinfo);//send email to Admin

        
    }

    public void email(string tomail, string subject, string mmessage)
    {


        try
        {

            MailMessage newmail = new MailMessage();
            MailAddress toadd = new MailAddress(tomail);
            MailAddress fromadd = new MailAddress("info@mfpower.in");
            newmail.Subject = subject;

            string msg = mmessage;



            newmail.Body = msg;
            newmail.To.Add(toadd);
            newmail.From = fromadd;
            newmail.IsBodyHtml = true;
            SmtpClient sserver = new SmtpClient();
            sserver.Host = "mail.aemailsrv.com";
            sserver.Credentials = new NetworkCredential("info@mfpower.in", "4ZqBCR@u3Nu9v5");
            sserver.DeliveryMethod = SmtpDeliveryMethod.Network;
            sserver.Port = 25;
            sserver.Send(newmail);

        }
        catch (Exception ex)
        {

        }
    }
    protected void BtnClose_Click(object sender, EventArgs e)
    {
        
        pnlOrderInfo.Visible = false;
    }
    protected void Imgbtn_Click(object sender, ImageClickEventArgs e)
    {
        // tdstoreprint.Visible = false;
        Imgbtn.Visible = false;
        Session["AdminPrint"] = divPrint;
        Response.Redirect("../../print.aspx");
    }
    protected void LstCategory_ItemUpdating(object sender, ListViewUpdateEventArgs e)
    {

    }
    protected void LstCategory_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }
    protected void LstConferm_ItemCommand(object sender, ListViewCommandEventArgs e)
    
    {
        //if (e.CommandName == "Cancel")
        //{
        //    int OrderId = Convert.ToInt32(((Label)e.Item.FindControl("lblorderid")).Text);
        //    int LblProductId = Convert.ToInt32(((Label)e.Item.FindControl("LblProductId")).Text);
        //    int lblaid = Convert.ToInt32(((Label)e.Item.FindControl("lblaid")).Text);
        //    orderstatus Obj = new orderstatus();
        //    Obj.OrderId = OrderId; Obj.AID = lblaid; Obj.ProductId = LblProductId; Obj.RequestReason = "galat saman"; Obj.Cancelled = true; Obj.Delivered = false; Obj.Dispatched = false; Obj.Returned = false;
        //    api1.PostData("/Order/OrderSettlementStatusEdit", Obj);
        //    //LstConferm.DataBind();
        //    Response.Redirect("MyOrder.aspx");
        //}
    }
    protected void LstConferm_ItemEditing(object sender, ListViewEditEventArgs e)
    {

    }
   
}