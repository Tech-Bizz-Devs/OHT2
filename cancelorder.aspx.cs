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

public partial class cancelorder : System.Web.UI.Page
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
                    DataTable DTT = Cnn.FillTable("select OrderId,PaidAmount,DeliveryFees, convert(varchar, RTS, 6) as RTS  from trnordermain where UserCode='" + Session["UserId"] + "' and Cancelled =1 order by orderid desc", "the");
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
            DataTable dt = Cnn.FillTable("Select a.DisInvoiceNo,a.OrderId,a.ProductId,b.ProductName,b.Image as  Image,a.Unit,a.weight,a.Quantity,a.Rate,a.Amount,a.Discount,a.NetAmount from TrnOrderDetail as a Inner Join Product as b on a.ProductId=b.ProductId  where Orderid='" + OrderId + "'", "Detail");
          
            LstConferm.DataSource = dt;
            LstConferm.DataBind();
           
            

            DataTable dtable = Cnn.FillTable("Select OrderId,'" + OrderId + "' as DisInvoiceNo,ShippingName,ShippingAddress,ShippingMobileNo,ShippingEmailId,ShippingCity,ShippingZipcode,ShippingStats,Convert(varchar,RTS,103) as ShippingDate,PayMode,Convert(varchar,DeliveryDate,103) as DeliveredDate From TrnOrderMain where Orderid='" + OrderId + "'", "Detail");
            LstCategory.DataSource = dtable;
            LstCategory.DataBind();
         
       
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.location.href = '#bottom'", true);
        }
        if (e.CommandName == "cen")
        {
            string OrderId = ((Label)e.Item.FindControl("lblOrderId")).Text;
            Cnn.Open();
            Cnn.ExecuteNonQuery("update TrnOrderMain set Cancelled=1   where OrderId=" + OrderId + "");
            Cnn.ExecuteNonQuery("update TrnOrderDetail set Cancelled=1   where OrderId=" + OrderId + "");
            Cnn.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.location.href = '#bottom'", true);
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