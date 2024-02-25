﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mpower : System.Web.UI.Page
{
    ClsConnection cnn = new ClsConnection();
    public static string productname = "", productid = "1", pid = "1", image = "", Description = "", img2 = "", img3 = "", img4 = "", img5 = "", img6 = "";
    public static Int32 price = 0, discount=0,netprice=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        cnn.Open();
        DataTable dtlsrblog = cnn.FillTable("select * from [product] where productid=1", "Detail");

        productname = dtlsrblog.Rows[0]["productname"].ToString();
        price = Convert.ToInt32(dtlsrblog.Rows[0]["price"]);
        discount = Convert.ToInt32(dtlsrblog.Rows[0]["discount"]);
        netprice = price - discount;

        image = dtlsrblog.Rows[0]["image"].ToString();
        img2 = dtlsrblog.Rows[0]["img2"].ToString();
        img3 = dtlsrblog.Rows[0]["img3"].ToString();
        img4 = dtlsrblog.Rows[0]["img4"].ToString();
        //  img5 = dtlsrblog.Rows[0]["img5"].ToString();

        //


        var img11 = "<meta property=\"og:image\" content=\"https://www.mfpower.in/img/product/" + image + "\"  style=\"height:600px;width:600px\"/>";
        var img22 = "<meta property=\"og:image\" content=\"https://www.mfpower.in/img/product/" + img2 + "\"   style=\"height:600px;width:600px\"/>";
        var img33 = "<meta property=\"og:image\" content=\"https://www.mfpower.in/img/product/" + img3 + "\"  style=\"height:600px;width:600px\"/>";
        var img44 = "<meta property=\"og:image\" content=\"https://www.mfpower.in/img/product/" + img4 + "\"  style=\"height:600px;width:600px\"/>";
        //  var img55 = "<meta property=\"og:image\" content=\"https://www.mfpower.in/img/product/" + img5 + "\"  style=\"height:600px;width:600px\"/>";
        //var img66 = "<meta property=\"og:image\" content=\"https://www.mfpower.in/img/product/" + img6 + "\"  style=\"height:600px;width:600px\"/>";


        var titlet = "<meta property=\"og:title\" content=\"" + productname + "/>";
        var desc = "<meta property=\"og:description\" content=\"" + productname + "/>";

        string url = "https://www.mfpower.in/mpower.aspx";


      
        Page.MetaKeywords = "Increase your Stamina,Improve your Vitality,Increase Endurance,Increase Testosterone levels,Increase energy Level,Improve your Performance,solves your Premature ejaculation Problem,solves your erectile dysfunction";
        Page.Title = "Mfpower.in , M Power help to increase the Testosterone level , improves the Performance.";
        Page.MetaDescription = "M power Boost up the Stamina , Energy , Testosterone. Give you complete Satisfaction every Night , for more details go to our website www.mfpower.in";



        var ogtitle = "<meta property=\"og:title\" content=\"" + productname + "\"/>";
        var ogdescription = "<meta property=\"og:description\" content=\"" + productname + "\"/>";
        var ogurl = "<meta property=\"og:url\" content=\"" + url + "\"/>";

        Literal1.Text = img11 + img22 + img33 + img44;



        litMeta.Text = ogtitle + ogdescription + ogurl;
        cnn.Close();

    }
    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        adtocart("M-Power");
    }

    public void adtocart(string pack)
    {
        cnn.Open();
        int ID = Convert.ToInt32(cnn.ExecuteScalar("Select  IsNull(Max(id)+1,1) From [TrnCart]"));


        if (Session["userid"] == null)
        {
            if (Request.Cookies["mfpowerCart"] == null || Request.Cookies["mfpowerCart"].Value == "")
            {
                string trncartid = cnn.ExecuteScalar("Select  IsNull(Max(CartId)+1,1) From [TrnCart]").ToString();
                Response.Cookies["mfpowerCart"].Value = trncartid;
                Request.Cookies["mfpowerCart"].Expires = DateTime.Now.AddDays(30);
                cnn.ExecuteNonQuery("insert into trncart (Id,CartId,UserId,ProductId,Quantity,Size,Color,ActiveStatus,RTS) values (" + ID + "," + trncartid + ",0," + pid + ",'" + DDQuantity.SelectedValue + "','" + pack + "','',1,GetDate())");
                //  Response.Write("<script LANGUAGE='JavaScript' >alert('Item Added In Cart')</script>");
                Response.Redirect("Cart.aspx");
            }
            else
            {

                if (IsRecordAlreadyExist() == false)
                {
                    Request.Cookies["mfpowerCart"].Expires = DateTime.Now.AddDays(30);
                    cnn.ExecuteNonQuery("insert into trncart (Id,CartId,UserId,ProductId,Quantity,Size,Color,ActiveStatus,RTS) values (" + ID + "," + Request.Cookies["mfpowerCart"].Value + ",0," + pid + ",'" + DDQuantity.SelectedValue + "','" + pack + "','',1,GetDate())");
                    // Response.Write("<script LANGUAGE='JavaScript' >alert('Item Added In Cart')</script>");
                    Response.Redirect("Cart.aspx");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Item Already In Cart')</script>");
                }
            }
        }
        else
        {
            if (Request.Cookies["mfpowerCart"] == null || Request.Cookies["mfpowerCart"].Value == "")
            {
                string trncartid = cnn.ExecuteScalar("Select  IsNull(Max(CartId)+1,1) From [TrnCart]").ToString();
                Response.Cookies["mfpowerCart"].Value = trncartid;
                Request.Cookies["mfpowerCart"].Expires = DateTime.Now.AddDays(30);
                cnn.ExecuteNonQuery("insert into trncart (Id,CartId,UserId,ProductId,Quantity,Size,Color,ActiveStatus,RTS) values (" + ID + "," + trncartid + "," + Session["userid"] + "," + pid + ",'" + DDQuantity.SelectedValue + "','" + pack + "','',1,GetDate())");
                //  Response.Write("<script LANGUAGE='JavaScript' >alert('Item Added In Cart')</script>");
                Response.Redirect("Cart.aspx");
            }
            else
            {

                if (IsRecordAlreadyExist() == false)
                {
                    Request.Cookies["mfpowerCart"].Expires = DateTime.Now.AddDays(30);
                    cnn.ExecuteNonQuery("insert into trncart (Id,CartId,UserId,ProductId,Quantity,Size,Color,ActiveStatus,RTS) values (" + ID + "," + Request.Cookies["mfpowerCart"].Value + "," + Session["userid"] + "," + pid + ",'" + DDQuantity.SelectedValue + "','" + pack + "','',1,GetDate())");
                    // Response.Write("<script LANGUAGE='JavaScript' >alert('Item Added In Cart')</script>");
                    Response.Redirect("Cart.aspx");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Item Already In Cart')</script>");
                }
            }

        }

        cnn.Close();
    }

    private bool IsRecordAlreadyExist()
    {
        try
        {
            cnn.Open();
            String Sql = "Select Count(*) From TrnCart Where ProductID='1' And Id='" + Request.Cookies["mfpowerCart"].Value + "'";
            int Count = Convert.ToInt32(cnn.ExecuteScalar(Sql).ToString());

            if (Count > 0)
                return true;

            else
                return false;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

}