﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class response : System.Web.UI.Page
{
    ClsConnection Cnn = new ClsConnection();
    API api = new API();
    public string log_PayResult, UserId, UserOrderId = string.Empty;
    public bool log_PayResult_Succeed = false;
    /*****************************************************************************************************/
    public string SALT = string.Empty;
    public string hashVariable, hashString, hashCode = string.Empty;
    public string[] hashArray;
    public string Transaction_MihPayId, Transaction_Status, Transaction_Mode, Transaction_ErrorCode, Transaction_BankRefNum, Transaction_UnmappedStatus = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            Transaction_Status = Request.Form["txStatus"]; //status-SUCCESS/PENDING/FAILURE        
            if (Request.Form["txStatus"] == "SUCCESS" && (!string.IsNullOrEmpty(Request.Form["referenceId"])))
            {
               
                log_PayResult_Succeed = true;
                try
                {
                    if (Application["UserId"] != null)
                    {
                        log_PayResult = Request.Form["txStatus"] + " - Transaction Successful";
                        Order Obj = new Order();
                        Obj.Usercode = Convert.ToInt32(Application["UserId"].ToString());
                        Obj.Paymode = "Bank";
                        Obj.TrnId = Request.Form["referenceId"].ToString();
                        Obj.TrnStatus = "Success";
                        Obj.ShippingName = Application["Name"].ToString();
                        Obj.ShippingAddress = Application["Address"].ToString();
                        Obj.ShippingMobileNo = Application["MobileNo"].ToString();
                        Obj.ShippingEmailId = Application["EmailId"].ToString();
                        Obj.ShippingCity = Application["City"].ToString();
                        Obj.ShippingZipcode = Application["Zipcode"].ToString();
                        Obj.ShippingStats = Application["State"].ToString();
                        Obj.IsWalletDeduct = Convert.ToBoolean(Application["IsWalletDeduct"]);
                        Obj.WalletAmount = Convert.ToInt32(Application["WalletAmount"]);
                        Obj.AddAmount = 0;
                        Obj.PromoCodeId = Convert.ToInt32(Application["PrmoCodeId"]);
                        Obj.PromoCodeAmount = Convert.ToInt32(Application["PrmoCodeAmnt"]);
                        Obj.OrderThrough = "Web";
                        Obj.DeliveryFees = Convert.ToInt32(Application["DCharges"].ToString());
                      
                        orderfunction odd = new orderfunction();
                        odd.GenerateOrder(Obj);
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

                        Cnn.Open();
                        DataSet ds = new DataSet();
                        Cnn.FillDataSet(ds, "select * from register  Where UserId=" + Application["UserId"] + "", "Admin_Login");
                        Session["UserId"] = ds.Tables[0].Rows[0]["UserId"].ToString();
                        Session["MobileNumber"] = ds.Tables[0].Rows[0]["MobileNumber"].ToString();
                        Session["Groupid"] = ds.Tables[0].Rows[0]["Groupid"].ToString();
                        Response.Cookies["UserId"].Value = ds.Tables[0].Rows[0]["UserId"].ToString();
                        Cnn.Close();
                        Response.Redirect("Ordersuccess.aspx", false);
                    }
                    else
                    {
                       
                        log_PayResult_Succeed = false;
                        log_PayResult = Request.Form["status"] + " - Transaction Not Successful";
                        if (Application["UserId"] != null)
                        {
                            Cnn.Open();
                            DataSet ds = new DataSet();
                            Cnn.FillDataSet(ds, "select * from register  Where UserId=" + Application["UserId"] + "", "Admin_Login");
                            Session["UserId"] = ds.Tables[0].Rows[0]["UserId"].ToString();
                            Session["MobileNumber"] = ds.Tables[0].Rows[0]["MobileNumber"].ToString();
                            Session["Groupid"] = ds.Tables[0].Rows[0]["Groupid"].ToString();
                            Response.Cookies["UserId"].Value = ds.Tables[0].Rows[0]["UserId"].ToString();
                            Cnn.Close();
                        }
                        Response.Redirect("ProductsOrder.aspx", false);
                    }
                }
                catch (Exception ex)
                {

                }
            }
            else
            {
                log_PayResult_Succeed = false;
                log_PayResult = Request.Form["txStatus"] + " - Transaction Not Successful";
                if (Application["UserId"] != null)
                {
                    Cnn.Open();
                    DataSet ds = new DataSet();
                    Cnn.FillDataSet(ds, "select * from register  Where UserId=" + Application["UserId"] + "", "Admin_Login");
                    Session["UserId"] = ds.Tables[0].Rows[0]["UserId"].ToString();
                    Session["MobileNumber"] = ds.Tables[0].Rows[0]["MobileNumber"].ToString();
                    Session["Groupid"] = ds.Tables[0].Rows[0]["Groupid"].ToString();
                    Response.Cookies["UserId"].Value = ds.Tables[0].Rows[0]["UserId"].ToString();
                    Cnn.Close();
                }
                Response.Redirect("ProductsOrder.aspx", false);
            }

        }

        catch (Exception Ex)
        {
            Response.Write("<span style='color:red'>" + Ex.Message + "</span>");
            if (Application["UserId"] != null)
            {
                Cnn.Open();
                DataSet ds = new DataSet();
                Cnn.FillDataSet(ds, "select * from register  Where UserId=" + Application["UserId"] + "", "Admin_Login");
                Session["UserId"] = ds.Tables[0].Rows[0]["UserId"].ToString();
                Session["MobileNumber"] = ds.Tables[0].Rows[0]["MobileNumber"].ToString();
                Session["Groupid"] = ds.Tables[0].Rows[0]["Groupid"].ToString();
                Response.Cookies["UserId"].Value = ds.Tables[0].Rows[0]["UserId"].ToString();
                Cnn.Close();
            }
            Response.Redirect("ProductsOrder.aspx");
        }
     
    }

    public string Generatehash512(string text)
    {
        byte[] message = Encoding.UTF8.GetBytes(text);
        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        return hex;
    }
}