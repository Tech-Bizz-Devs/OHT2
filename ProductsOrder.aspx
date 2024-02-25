<%@ Page Title="Order Information - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductsOrder.aspx.cs" Inherits="ProductsOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--  <style>
        .mycheckbox input[type="checkbox"] {
            margin-right: 7px;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server"> <br />
                <br />
   <div class="banner inner-banner1 ">
    <div class="container">
      <section class="banner-detail center-xs" style="text-align:center">
        <h1 class="banner-title">Order Information </h1>
       
      </section>
    </div>
       </div>
    <section class="main_contact_area">
        <div class="breadcrumbs">
            <div class="container">
               

               

                <div class="container">
                    <div class="row">
                        <div class="col-md-4 cart-total">
                            <a href="ViewCart.aspx" style="background-color:#5bbff1; border: none; padding: 8px;width:100%" class="btn btn-success btn-block">Back to Cart</a>
                            <br />
                            <div style="border: solid 1px #E1DDDD">

                              
                                        <div class="price-details">

                                            
                                            <p style="font-size: 17px; color: black !important; border-bottom: 1px solid #DDD9D9"><strong>Order Summary :</strong></p>
                                            <table style="width: 100%">
                                                <tr>
                                                    <td width="70%"><span>Total</span></td>
                                                    <td width="30%"><span class="total1">
                                                       
                                                       ₹<asp:Label ID="lbltotalamount" runat="server" Style="text-align: right;"></asp:Label>/-


                                                    </span></td>

                                                </tr>
                                            </table>


                                            <table style="width: 100%; border-bottom: 1px solid #DDD9D9">
                                                <tr>
                                                    <td width="70%"><span>Delivery Charges</span></td>
                                                    <td width="30%"><span class="total1">
                                                       
                                                       ₹<asp:Label ID="lbltotaldilverycharge" runat="server"></asp:Label>/-
                                                    </span></td>
                                                </tr>
                                            </table>

                                              <table style="width: 100%; border-bottom: 1px solid #DDD9D9" runat="server" id="walletdiv">
                                                <tr>
                                                    <td width="70%"><span>Wallet Point</span>&nbsp;(<span  style="font-size:12px"><asp:Label ID="lblpoint" runat="server"></asp:Label></span> point)</td>
                                                    <td width="30%"><span class="total1">
                                                       
                                                       (-)<%=walletuse %>
                                                    </span></td>
                                                </tr>
                                            </table>
                                            <table style="width: 100%" runat="server" id="Table1">
                                                <tr>
                                                    <td width="70%"><b>Net Amount </b></td>
                                                    <td width="30%"><span class="total1" style="color:red">
                                                        
                                                       <asp:Label ID="LblNetAmount" runat="server" Visible="false"></asp:Label>
                                                          ₹<asp:Label ForeColor="Red" Font-Bold="true" ID="LblPaidAmount" runat="server" ></asp:Label>/-
                                                    </span></td>
                                                </tr>
                                            </table>
                                          
                                        </div>
                                      
                                        <div class="price-details">
                                        
                                            <span style="font-size: 17px; color: black !important"><strong>Payment Options</strong> </span>
                                            <div class="sky_form1" style="margin-left: 20px">

                                                <ul style="list-style:none">
                                                    <li>
                                                        <label class="radio" runat="server" id="onnline">&nbsp;
                                                            <b><asp:RadioButton ID="RdbOnine" runat="server" class="mycheckbox" AutoPostBack="true" GroupName="rbPaymentMode" Text="Online Mode" OnCheckedChanged="RdbOnine_CheckedChanged" Checked="true" Style="font-size: 17px; color: black;font-weight:700"  /></b></label></li>
                                                    <li style="margin-top:-7px">
                                                        <label class="radio" runat="server" id="offline">&nbsp;   <b><asp:RadioButton ID="RdbCash" runat="server" class="mycheckbox" AutoPostBack="true" GroupName="rbPaymentMode" Text="Cash-On-Delivery" OnCheckedChanged="RdbCash_CheckedChanged" visible="false" Style="font-size: 17px; color: black;font-weight:700" /></b></label></li>

                                                     <li>
                                                        <label class="radio" runat="server" id="Label2">&nbsp;
                                                            <b><asp:RadioButton ID="RadioButton1" runat="server" class="mycheckbox" AutoPostBack="true" GroupName="rbPaymentMode" Text="QR Code" OnCheckedChanged="RadioButton1_CheckedChanged"  Style="font-size: 17px; color: black;font-weight:700"  /></b></label>

                                                   </li>
                                           
                                                   
                                                    <li runat="server" id="qrcode" visible="false">
                                                        <img src="qr.jpg" />
                                                    </li>


                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>


                                        


                                        <hr style="border: solid 1px #DDD9D9" />


                                        <div class="clearfix"></div>
                                   
                                <asp:LinkButton ID="LnkOrderConfirm" runat="server" Text="Order Now" Style="background-color: #5bbff1; border: none; padding: 8px;width:100%" class="btn btn-success btn-block" OnClick="LnkOrderConfirm_Click"></asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-md-8 col-xs-12" style="padding: 5px; border: 1px solid #E1DDDD;">

                            <div style="background-color: #d4e9f2; border: 1px solid #E1DDDD; padding: 5px">
                                <b>Buyer:</b><br />
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                    <ContentTemplate>

                                      
                                        <div runat="server" id="add1">
                                            <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                                            <br />

                                            <asp:Label ID="lbladdress" runat="server" Text="Label"></asp:Label><br />

                                            <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
                                            ,-
                <asp:Label ID="lblpincode" runat="server" Text="Label"></asp:Label>
                                            (
                <asp:Label ID="lblstate" runat="server" Text="Label"></asp:Label>)<br />

                                            <asp:Label ID="lblmobile" runat="server" Text="Label"></asp:Label>,<br />

                                            <asp:Label ID="lblmailid" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <a href="shipingaddress.aspx" Style="background-color: #5bbff1; border: none; padding: 8px;width:30%" class="btn btn-success btn-block">Update Address</a>
                                    </ContentTemplate>
                                </asp:UpdatePanel>


                            </div>
                            <div class="container-fluid">

                                <asp:ListView ID="lstcart" runat="server">
                                    <ItemTemplate>
                                        <asp:Label ID="productid" runat="server" Visible="false" Text='<%# Eval("productid") %>'></asp:Label>
                                        <asp:Label ID="id" runat="server" Visible="false" Text='<%# Eval("id") %>'></asp:Label>
                                        <asp:Label ID="lblcolor" runat="server" Visible="false" Text='<%# Eval("color") %>'></asp:Label>
                                        <asp:Label ID="lblSize" runat="server" Visible="false" Text='<%# Eval("Size") %>'></asp:Label>
                                        <asp:Label ID="Label1" runat="server" Visible="false" Text='<%# Eval("quantity") %>'></asp:Label>
                                           <%--<asp:Label ID="lbldiscount" runat="server" Visible="false" Text='<%# Eval("totaldiscount") %>'></asp:Label>--%>
                                        <div class="row" style="margin-top: 5px">

                                            <div class="col-lg-3">
                                                <img src="img/product/<%# Eval("image") %>" alt="" style="width: 100px; height: 120px; border: solid 1px #cccccc" />
                                            </div>
                                            <div class="col-lg-3">
                                                <span><strong>
                                                    <asp:Label ID="LblProductName" runat="server" Text='<%#Eval("ProductName")%>'></asp:Label></strong></span>

                                            </div>
                                            <div class="col-lg-3">
                                                ₹<asp:Label ID="LblTotalAmoun111t" runat="server"  Text='<%#Eval("totalamount")%>'></asp:Label>/-



                                                
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="col-xs-6">
                                                    <span><strong>Qty &nbsp;<span class="text-muted"><asp:Label ID="LblQuantity" runat="server" Text='<%#Eval("quantity")%>'></asp:Label></span></strong></span>
                                                    <div class="col-xs-2">
                                                    </div>
                                                </div>
                                            </div>
                                            <hr />


                                        </div>
                                    </ItemTemplate>
                                </asp:ListView>



                            </div>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>
    <br />     
</asp:Content>

