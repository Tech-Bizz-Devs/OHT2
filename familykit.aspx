<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="familykit.aspx.cs" Inherits="familykit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <asp:Literal runat="server" ID="litMeta" />
       <asp:Literal runat="server" ID="Literal1" />
    <style>
        #ifrm {
        
         height:610px;width:100%;
         border:solid 1px #dedede;
        }

        @media only screen and (max-width: 768px) {
              #ifrm {
        
         height:420px;width:100%;
         border:solid 1px #dedede;
        }

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>
Family kit
</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">
Family kit
</li>
					</ul>
				</div>
			</div>
		</div>
    <section class="product-details-area ptb-100">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6 col-md-12">
                        <iframe id="ifrm" src="websider.aspx?id=3"></iframe>
						  
					</div>

					<div class="col-lg-6 col-md-12">
						<div class="product-details-desc">
							<h3>Family kit</h3>

							

							<div class="price">
								<h2 class="new-price" style="color:#fe26d1"> Price: ₹<%=netprice %>/- 	<span class="price" style="color:#d4d4d4;font-size:15px"><strike> ₹<%=price %>/-</strike></span>&nbsp;<span class="price" style="color:#ff3eef;font-size:15px"> <%= ((Convert.ToInt32(discount)*100)/Convert.ToInt32(price)) %>% Off</span></h2>
							</div>

							<p style="text-align:justify"> <b>About Family kit</b><br />

                          Family kit is a complete combo pack for both male & female . It gives you the Energy to face your self with the reality. When the nature let's you down , family kit helps you to fight by with all the personal problems which are facing in your day to day life. All ingredients added in the kit are completely natural & herbal. Clinically Tested & approved by the Indian Government. No side effects at all , try now & feel the Goodness of Family Kit. 
						</p>

							<ul class="category">							
								<li>Category: <span>Family Kit</span></li>
								<li>Tags: <span>Family Kit</span></li>
							</ul>

							<div class="product-add-to-cart">
								<h3 style="float:left">Quantities:</h3>

							
                                    <asp:DropDownList ID="DDQuantity" runat="server">
                                        <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                              <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                              <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                              <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                              <asp:ListItem Value="5" Text="5"></asp:ListItem>
                                    </asp:DropDownList>

								
							
							</div>
                            <br />

							<button  runat="server" onserverclick="Unnamed_ServerClick" class="default-btn">
								<i class="bx bx-cart"></i>
								Add to Cart
							</button>

							<ul class="social-wrap">
								<li>
									<span>Share:</span>
								</li>
								<!-- ShareThis BEGIN -->
<div class="sharethis-inline-share-buttons"></div>
<!-- ShareThis END -->
							</ul>
						</div>
					</div>
									
					<div class="products-details-content">
						<h4>Description</h4>						
						<p> Family kit is a complete combo pack for both male & female . It gives you the Energy to face your self with the reality. When the nature let's you down , family kit helps you to fight by with all the personal problems which are facing in your day to day life. All ingredients added in the kit are completely natural & herbal. Clinically Tested & approved by the Indian Government. No side effects at all , try now & feel the Goodness of Family Kit. </p>

						
                        <h4>BENEFITS FOR MALE</h4>
						<ul class="overview-list">
							<li> It Helps you to Increase your Stamina.</li>
							<li>It Helps you to Improve your Vitality.</li>
							<li>It helps you to increase Endurance.</li>
							<li>It helps to Increase Testosterone levels .</li>
                            <li>It helps to Increase Energy Level.</li>
                            <li>Desire to Improve your performance..</li>
                            <li>Maintain your overall Vitality & Wellbeing.</li>
                          
						</ul>
                       
                          <h4>BENEFITS FOR Fe-MALE</h4>
						<ul class="overview-list">
							<li>Feel like young again in first application.  </li>
                            <li>It can tightens the  female organ instantly & gives you grate pleasure.  </li>
                            <li> It rejuvenate the tissues of inner wall & maintain your feelings. </li>
                            <li>Regular uses of woman care can help you to Re-shape the  female organ.  </li>
                            <li>Its completely aayurvedic preparation for regular & long use with no side effects.  </li>
                            <li> It can prevent your female organ from bacteria & miner infections also. </li>
                            <li>Its proven to be the prime need of every women.  </li>
                            <li>Help to prevent bacteria and minner infections.  </li>
                          <li>  Also helpful in Uterine prolapse.</li>
                            <li>Regular uses of woman care keep organ healthy and gives you better performance with better drive</li>
						</ul>





						
					</div>	

                    <div class="container">
				<div class="row">
                    <div class="col-lg-1"></div>
					<div class="col-lg-10 col-md-12">
                    	<div style="background-color:#f4eaf2;padding:10px;border-radius:15px;border:solid 3px #fe26d1">

                             <h4><img src="img/icon/cross.png" style="height:35px" /> SIDE EFFECTS?</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;None! 100% Safe to use</h6>
                            </div>
                        <br />
                        	<div style="background-color:#f4eaf2;padding:10px;border-radius:15px;border:solid 3px #fe26d1">

                             <h4><img src="img/icon/yes.png" style="height:35px" /> NATURAL ?</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yes!  </h6>
                            </div>
                       
                        	
                          <br />
                        	<div style="background-color:#f4eaf2;padding:10px;border-radius:15px;border:solid 3px #fe26d1">

                             <h4><img src="img/icon/map.png" style="height:35px" /> COUNTRY OF ORIGIN</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Made in India. </h6>
                            </div>
                       

                        </div>
                         <div class="col-lg-1"></div>
                    </div>
                        </div>
				</div>	
			</div>
		</section>
</asp:Content>

