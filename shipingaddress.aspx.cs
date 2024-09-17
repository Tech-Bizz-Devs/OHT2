using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shipingaddress : System.Web.UI.Page
{

    ClsConnection Cnn = new ClsConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            Cnn.Open();
            //DataTable DtState = Cnn.FillTable("Select 'State_Code'=-1,'State_Name'='Select State Name' union  select State_Code,State_Name from [Loc_State]", "State");
            //DDState.DataSource = DtState;
            //DDState.DataBind();
          
            DataSet ds = new DataSet();
            Cnn.FillDataSet(ds, "select * from register as a  where a.userid='" + Session["UserId"] + "'", "Admin_Login");
            txtname.Text = ds.Tables[0].Rows[0]["name"].ToString();
            txtAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();       
           string  sid = ds.Tables[0].Rows[0]["State"].ToString();
           string did = ds.Tables[0].Rows[0]["District"].ToString();
            txtmobile.Text = ds.Tables[0].Rows[0]["MobileNumber"].ToString();
            txtemail.Text = ds.Tables[0].Rows[0]["EmailId"].ToString();

            txtpincode.Text = ds.Tables[0].Rows[0]["zipcode"].ToString();
            txtstate.Text = ds.Tables[0].Rows[0]["State"].ToString();
            txtDistrict.Text = ds.Tables[0].Rows[0]["District"].ToString();


            //DDState.DataBind();
            //DDState.Items.FindByValue(sid).Selected = true;
            //txtpincode.Text = ds.Tables[0].Rows[0]["Zipcode"].ToString();
            //DataTable city = Cnn.FillTable("Select 'District_Code'=-1,'District_Name'='Select District Name' union  select District_Code,District_Name from Loc_Districtn where State_Code='" + DDState.SelectedValue + "'", "State");
            //DDDistrict.DataSource = city;
            //DDDistrict.DataBind();
          
            //DDDistrict.DataBind();
            //DDDistrict.Items.FindByValue(did).Selected = true;
            Cnn.Close();
        }
    }
    //protected void DDState_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Cnn.Open();

    //    DataTable city = Cnn.FillTable("Select 'District_Code'=-1,'District_Name'='Select District Name' union  select District_Code,District_Name from Loc_Districtn where State_Code='" + DDState.SelectedValue + "'", "State");
    //    DDDistrict.DataSource = city;
    //    DDDistrict.DataBind();
    //    Cnn.Close();
    //}

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string ip = Request.ServerVariables["remote_addr"];
        try
        {
            if (txtname.Text == "")
            {
                UserLbl.Text = "Enter Name !!!";

                return;

            }
            if (txtAddress.Text == "")
            {
                UserLbl.Text = "Enter Address !!!";
                return;
            }

            if (txtmobile.Text == "")
            {
                UserLbl.Text = "Enter Mobile Number.!!!";
                return;
            }
            if (txtemail.Text == "")
            {
                UserLbl.Text = "Enter Emil ID.!!!";
                return;
            }
            if (txtpincode.Text == "")
            {
                UserLbl.Text = "Enter pincode!!!";
                return;
            }
        

            if (txtstate.Text == "")
            {
                UserLbl.Text = "Select State Name !!!";
                return;
            }

            if (txtDistrict.Text == "")
            {
                UserLbl.Text = "Select District Name !!!";
                return;
            }
            Cnn.Open();
            Cnn.ExecuteNonQuery("update register set Name='" + txtname.Text + "',EmailId='" + txtemail.Text + "',Address='" + txtAddress.Text + "',State='" + txtstate.Text + "',District='" + txtDistrict.Text + "',City='" + txtDistrict.Text + "',ZipCode='" + txtpincode.Text + "',MobileNumber='" + txtmobile.Text + "' where UserId=" + Session["UserId"] + "");
                  //  Cnn.ExecuteNonQuery("insert into [register] (UserId,Name,EmailId,Address,State,District,City,ZipCode,MobileNumber,password,rts,active,ip,Wallet,OrderCount,Groupid,gst,rcode)  Values ('" + Id + "','" + txtname.Text + "','" + txtemail.Text + "','" + txtAddress.Text + "','" + DDState.SelectedValue + "','" + DDDistrict.SelectedValue + "','" + DDDistrict.SelectedItem + "','" + txtpincode.Text + "','" + txtmobile.Text.Trim() + "','" + txtConfirmpassword.Text + "',GetDate(),'1','" + ip + "','" + Firstuser + "','1','1','','" + code + "')");


                    

                   
                    //   Response.Write("<script LANGUAGE='JavaScript' >alert('Thank You For Registration, You will soon recieve a Confirmation Message by Shiv Shakti Synthetics')</script>");

            Response.Redirect(ResolveUrl("~/ProductsOrder.aspx#maindiv"));
            Cnn.Close();


        }
        catch { }

    }
   
   

   
   
}