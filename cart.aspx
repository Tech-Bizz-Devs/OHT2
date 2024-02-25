<%@ Page Title="My Cart - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>
Cart
</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">
Cart
</li>
					</ul>
				</div>
			</div>
		</div>
    	<section class="shopping-cart-area ptb-100">
            <div class="container" runat="server" id="nodata">
         <div class="row"  style="border:dashed 2px #ffcc29">
                <br /> <p style="font-size:25px;text-align:center;"><br />No Product in Cart List</p>
                   <div class="col-lg-3" ></div>
                 
               
                   <div class="col-lg-6"  style="text-align:center !important">  <br />
                       <a href="index.aspx" class="thm-btn bgclr-1" style="" >Explore Product</a>

                       <br />
                   </div>
                   <div class="col-lg-3"></div>
                 </div><br />
        </div>
			<div class="container-fluid" runat="server" id="data">
				<div class="cart-controller">
					<div class="cart-table table-responsive">
						<table class="table table-bordered">
							<thead>
								<tr>
                                  <th scope="col">Images</th>
                                    <th scope="col" >Product Name</th>
                                    <th  scope="col">Price</th>
                                    <th scope="col" >Discount</th>
                                
                                    <th scope="col">Subtotal</th>
                                    <th scope="col">Remove</th>
									
								</tr>
							</thead> 
																	
							<tbody>
                                 <asp:ListView ID="lstwishlist" runat="server">
    <ItemTemplate>
        <tr><asp:Label ID="productid" runat="server" Visible="false" Text='<%# Eval("productid") %>'></asp:Label>
              <asp:Label ID="lblquantity" runat="server" Visible="false" Text='<%# Eval("quantity") %>'></asp:Label>
								<tr>
									
									
									<td class="product-thumbnail">
										<a href="product-details.html">
										<img src="img/product/<%# Eval("image") %>" alt="mfpower.in" style="height:60px">
										</a>
									</td>

									<td class="product-name">
										<a href="#"><%# Eval("productname") %> <br /> (  <%# Eval("Quantity") %> Qty)</a>
									</td>

									<td class="product-price">
										<span class="unit-amount">₹<asp:Label ID="lblprice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>/-</span>
									</td>
                                    <td class="product-price">
									 ₹<asp:Label ID="lbdiscount" runat="server" Text='<%# Eval("discount") %>'></asp:Label>
                                        </td>
									<td class="product-subtotal">
										<span class="subtotal-amount">   ₹<asp:Label ID="LblTotalAmoun111t" runat="server" Text='<%# Eval("totalamount") %>'></asp:Label>/-</span>
									</td>
                                    <td class="trash">
                                        <asp:LinkButton ID="LinkButton1" runat="server" style="color:black" OnClick="LinkButton1_Click" CommandArgument='<%# Eval("id") %>'>	<i class="bx bx-trash"></i></asp:LinkButton>
										
									</td>
								</tr>

								
    </ItemTemplate>
</asp:ListView>
								
								

							
							</tbody>
						</table>
					</div>

					
				</div>
					
                	<div class="col-lg-12"></div>
				<div class="cart-totals col-lg-4">
					<h3 class="cart-checkout-title">Checkout Summary</h3>

					<ul>
						
						<li>Total <span>₹<%=Realprice %>/-</span></li>
						
					</ul>

					<a href="shipingaddress.aspx" class="default-btn">
						<span>Proceed to checkout</span>
					</a>
				</div>
			</div>
		</section>

    
</asp:Content>

