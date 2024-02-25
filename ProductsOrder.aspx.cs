using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductsOrder : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
//    ClsQuantity objQty = new ClsQuantity();
    API api = new API();
    BaseUrl api1 = new BaseUrl();
    string ProductInfo = "";
    orderfunction odd = new orderfunction();
    public static int TotAmt = 0, Realprice = 0, totaldis = 0;
    int ordercount = 0, UserTotalCashPoint, PromoCodeId = 0, PromoCodeAmt = 0;
    public static int walletuse = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            UserDetailes();
            LoadProducts();
          
        }
        if (RadioButton1.Checked == true)
        {
            qrcode.Visible = true;
        }
        else
        {
            qrcode.Visible = false;
        }
    }



    public void UserDetailes()
    {
        try
        {
            DataSet ds = new DataSet();
            Cnn.Open();
            Cnn.FillDataSet(ds, "select a.* from register as a where a.userid='" + Session["UserId"] + "'", "Admin_Login");
         
            Cnn.Close();
            lblname.Text = ds.Tables[0].Rows[0]["name"].ToString();
            lbladdress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            lblcity.Text = ds.Tables[0].Rows[0]["District"].ToString();
            lblstate.Text = ds.Tables[0].Rows[0]["State"].ToString();
            lblmobile.Text = ds.Tables[0].Rows[0]["MobileNumber"].ToString();
            lblmailid.Text = ds.Tables[0].Rows[0]["EmailId"].ToString();
            lblpincode.Text = ds.Tables[0].Rows[0]["Zipcode"].ToString();
            lblpoint.Text = ds.Tables[0].Rows[0]["Wallet"].ToString();
            if (Convert.ToInt32(lblpoint.Text) > 0)
            {
                walletdiv.Visible = true;
            }
            else
            {
                walletdiv.Visible = false;
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public void LoadProducts()
    {
        //(b.price*a.Quantity) as totalprice,(b.discount*a.Quantity) as totaldiscount,
        string Sql = "select ((b.price*a.Quantity)-(b.discount*a.Quantity)) as totalamount,a.id,a.productid,a.color,a.Size,b.productname,a.Quantity,b.image from trncart as a inner join  product as b on a.productid=b.productid  Where a.UserId=" + Session["UserId"] + "";

        DataTable Dt = Cnn.FillTable(Sql, "Dt");

        lstcart.DataSource = Dt;
        lstcart.DataBind();

        Cnn.Open();
        TotAmt = 0; Realprice = 0; totaldis = 0;
        for (int i = 0; i < lstcart.Items.Count; i++)
        {
            Label lblquantity = lstcart.Items[i].FindControl("lblquantity") as Label;

            Label LblTotalAmoun111t = lstcart.Items[i].FindControl("LblTotalAmoun111t") as Label;


            TotAmt += Convert.ToInt32(LblTotalAmoun111t.Text);



        }
       // lbltotaldilverycharge.Text = odd.GetCourier(Convert.ToInt32(Session["UserId"]), lblstate.Text);

        lbltotaldilverycharge.Text = "0";

        Cnn.Close();

        Realprice = TotAmt - totaldis;

        lbltotalamount.Text = Realprice.ToString();

        if (Convert.ToInt32(lblpoint.Text) > 0)
        {

            if (Convert.ToInt32(lblpoint.Text) > Realprice)
            {

                walletuse = Realprice/2;
                if (Realprice > 500)
                {
                    lbltotaldilverycharge.Text = "0";
                    LblNetAmount.Text = (Realprice).ToString();
                    LblPaidAmount.Text = (Convert.ToInt32(LblNetAmount.Text) - walletuse).ToString();

                }
                else
                {
                    LblNetAmount.Text = (Realprice + Convert.ToInt32(lbltotaldilverycharge.Text)).ToString();
                    LblPaidAmount.Text = (Convert.ToInt32(LblNetAmount.Text) - walletuse).ToString();
                }

            }
            else
            {

                int realpricehalf = Realprice / 2;
                if (Convert.ToInt32(lblpoint.Text) > realpricehalf)
                {
                    walletuse = Convert.ToInt32(realpricehalf);
                    if (Realprice > 500)
                    {
                        lbltotaldilverycharge.Text = "0";
                        LblNetAmount.Text = (Realprice).ToString();
                        LblPaidAmount.Text = (Convert.ToInt32(LblNetAmount.Text) - Convert.ToInt32(walletuse)).ToString();
                    }
                    else
                    {
                        LblNetAmount.Text = (Realprice + Convert.ToInt32(lbltotaldilverycharge.Text)).ToString();
                        LblPaidAmount.Text = (Convert.ToInt32(LblNetAmount.Text) - Convert.ToInt32(walletuse)).ToString();
                    }
                }
                else
                {
                    walletuse = Convert.ToInt32(lblpoint.Text);
                    if (Realprice > 500)
                    {
                        lbltotaldilverycharge.Text = "0";
                        LblNetAmount.Text = (Realprice).ToString();
                        LblPaidAmount.Text = (Convert.ToInt32(LblNetAmount.Text) - Convert.ToInt32(walletuse)).ToString();
                    }
                    else
                    {
                        LblNetAmount.Text = (Realprice + Convert.ToInt32(lbltotaldilverycharge.Text)).ToString();
                        LblPaidAmount.Text = (Convert.ToInt32(LblNetAmount.Text) - Convert.ToInt32(walletuse)).ToString();
                    }
                }
               
               
            
            }

           


        }
        else

        {
            if (Realprice > 500)
            {
                lbltotaldilverycharge.Text = "0";
                LblNetAmount.Text = (Realprice).ToString();
                LblPaidAmount.Text = LblNetAmount.Text;

            }
            else
            {
                LblNetAmount.Text = (Realprice + Convert.ToInt32(lbltotaldilverycharge.Text)).ToString();
                LblPaidAmount.Text = LblNetAmount.Text;
            }
        
        
        }

        
    }


    protected void ChkWallet_CheckedChanged(object sender, EventArgs e)
    {
        
        LoadProducts();
    }
    protected void LnkOrderConfirm_Click(object sender, EventArgs e)
    {
        Application["Name"] = lblname.Text; Application["Address"] = lbladdress.Text;
        Application["MobileNo"] = lblmobile.Text; Application["EmailId"] = lblmailid.Text; Application["City"] = lblcity.Text;
        Application["State"] = lblstate.Text; Application["Zipcode"] = lblpincode.Text;
        Application["DeliveryFees"] = lbltotaldilverycharge.Text;
       
            Application["IsWalletDeduct"] = false;
        
        string Addamount = "0";
       

        //
        //online  pera meter

        Application["WalletAmount"] = walletuse;
        
        Application["AddAmount"] = Addamount;
        Application["ProductInfo"] = ProductInfo; Application["Amount"] = LblNetAmount.Text; Application["DCharges"] = lbltotaldilverycharge.Text;
        Application["UserId"] = Session["UserId"].ToString();
        //

        if (RadioButton1.Checked == true)
        {
            try
            {
                Order Obj = new Order();
                Obj.Usercode = Convert.ToInt32(Session["UserId"].ToString()); Obj.Paymode = "Cash"; Obj.TrnId = ""; Obj.TrnStatus = ""; Obj.ShippingName = lblname.Text;
                Obj.ShippingAddress = lbladdress.Text; Obj.ShippingMobileNo = lblmobile.Text; Obj.ShippingEmailId = lblmailid.Text;
                Obj.ShippingCity = lblcity.Text; Obj.ShippingZipcode = lblpincode.Text; Obj.ShippingStats = lblstate.Text; Obj.PromoCodeAmount = PromoCodeAmt; Obj.PromoCodeId = PromoCodeId; Obj.OrderThrough = "Web";
                Obj.DeliveryFees =Convert.ToInt32(lbltotaldilverycharge.Text);
              
                    Obj.IsWalletDeduct = false;
               

                Obj.DeliveryFees = Convert.ToInt32(lbltotaldilverycharge.Text);
                Obj.WalletAmount = walletuse;
                
               
                
                odd.GenerateOrder(Obj);
                Response.Redirect("Ordersuccess.aspx", false);
                //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Order Placed Successfully!!')", true);
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
        else
        {
            Response.Redirect("request.aspx");
        }

    }



    protected void RdbOnine_CheckedChanged(object sender, EventArgs e)
    {
        //if (RdbOnine.Checked == true)
        //{
        //    DivWallet.Visible = true;
          
        //}
        LoadProducts();
    }
    protected void RdbCash_CheckedChanged(object sender, EventArgs e)
    {
       
        LoadProducts();
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        LoadProducts();
    }
}
//Condition for Online and Offline

//Condition for Online 