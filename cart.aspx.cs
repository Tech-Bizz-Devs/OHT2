using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
  public static int TotAmt = 0, Realprice = 0, totaldis = 0, count = 0;
    ClsConnection Cnn = new ClsConnection();
    public enum MessageType { Success, Error, Info, Warning };
    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {
        list();
    }

    public void list()
    {
        count = 0;
        string Sql = "select ((a.price*b.Quantity)-(a.discount*b.Quantity)) as totalamount,b.id,a.productid,a.productname,a.image,a.price,a.discount,b.Quantity,B.SIZE from product as a inner join trncart as  b on  a.productid=b.productid";
        string Sql_Inner = "";
        if (Session["UserId"] != null)
        {
            Sql_Inner = " Where b.UserId=" + Session["UserId"] + "";
        }


        else
        {
            if (Request.Cookies["mfpowerCart"] != null)
            {
                if (Request.Cookies["mfpowerCart"].Value != null)
                {
                    Sql_Inner = " Where b.CartId=" + Request.Cookies["mfpowerCart"].Value + "";
                }
            }
        }


        if (Sql_Inner != "")
        {
            Sql = Sql + Sql_Inner;
          
            DataTable Dt = Cnn.FillTable(Sql, "Dt");
            lstwishlist.DataSource = Dt;
            lstwishlist.DataBind();

            count= Convert.ToInt32(Dt.Rows.Count);



           
        }

        if (count == 0)
        {
            nodata.Visible = true;
            data.Visible = false;

        }
        else
        {
            nodata.Visible = false;
            data.Visible = true;
        }
       
           TotAmt = 0; Realprice = 0; totaldis = 0;
           for (int i = 0; i < lstwishlist.Items.Count; i++)
            {             
                Label lblprice = lstwishlist.Items[i].FindControl("LblTotalAmoun111t") as Label;              

                Realprice += Convert.ToInt32(lblprice.Text);
            
            }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton button = (LinkButton)sender;

        Cnn.Open();
        Cnn.ExecuteNonQuery("delete from  trncart  where id=" + button.CommandArgument + "");

        Cnn.Close();

        Response.Redirect("Cart.aspx");
    }

    protected void DDQuantity_SelectedIndexChanged(object sender, EventArgs e)
    {
        Cnn.Open();
        DropDownList DDQuantity = sender as DropDownList;
        Control item = DDQuantity.Parent.FindControl("id");
        Label lblid = ((Label)item.FindControl("id"));

        Cnn.ExecuteNonQuery("update trncart set Quantity=" + DDQuantity.SelectedValue + " where id=" + lblid.Text + "");

        Cnn.Close();

        Response.Redirect("Cart.aspx");

    }

}