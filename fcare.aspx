<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fcare.aspx.cs" Inherits="fcare" %>

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
F-Care
</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">
F-Care
</li>
					</ul>
				</div>
			</div>
		</div>
    <section class="product-details-area ptb-100">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6 col-md-12">
                        <iframe id="ifrm" src="websider.aspx?id=2"></iframe>
						  
					</div>

					<div class="col-lg-6 col-md-12">
						<div class="product-details-desc">
							<h3>F Care</h3>

							

							<div class="price">
								<h2 class="new-price" style="color:#fe26d1"> Price: ₹<%=netprice %>/- 	<span class="price" style="color:#d4d4d4;font-size:15px"><strike> ₹<%=price %>/-</strike></span>&nbsp;<span class="price" style="color:#ff3eef;font-size:15px"> <%= ((Convert.ToInt32(discount)*100)/Convert.ToInt32(price)) %>% Off</span></h2>
							</div>

							<p style="text-align:justify"> <b>About F-Care</b><br />

                            Over 70% of women in India are experiencing some level of Performance issues , like loosening of Organal structure. They are not happy with it all , after a age they face this problem , but no worry's we have a solution for all your Organal problem's , it may help you to solve & feel the change. Now we say F-care gives you wings to fly again. Try now & feel the change. 
						</p>

							<ul class="category">							
								<li>Category: <span>Woman Health</span></li>
								<li>Tags: <span>Woman Health</span></li>
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
						<p> F-care is unique product for every woman that enhance the woman pleasure and performance and feel like young again in first application.</p>

						   <p>It can tightens the  female organ instantly & gives you grate pleasure.</p>
                        <p>It rejuvenate the tissues of inner wall & maintain your feelings.</p>
                        <p>Regular uses of woman care can help you to Re-shape the  female organ.</p>
                        <p>Its completely aayurvedic preparation for regular & long use with no side effects.</p>
                        <p>It can prevent your female organ from bacteria & miner infections also.</p>
                        <p>Its proven to be the prime need of every women.</p>
                        <p>Help to prevent bacteria and minner infections.</p>
                        <p>Regular uses of woman care keep organ healthy and gives you better performance with better drive.</p>
						<ul class="overview-list">
							<li> N0w feel the inst@nt v@gin@ T1ght€n1ng €ffect with in 10 Sec0nds.</li>
							<li>Feel v1rg1n again in 10 Seconds.</li>
							<li>Feel the T1ght€n1ng €ffect with in 10 Seconds.</li>
							<li>Give your p@rtn€r a v1rg1n perf0rm@nce €very n1ght.</li>
                            <li>T1ghtens the v@gin@ & reduce access disch@rge.</li>
                            <li>Rejuvenates the v@gin@l tissues of the inner walls.</li>
                            <li>F care is completely Herbal & there are no side effect.</li>
                          
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

                             <h4><img src="img/icon/question.png" style="height:35px" /> HOW TO USE ?</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Apply 4-5 dr0ps one & a-half inch inside the v@gin@l track , wash your v@gin@ every
time before applying</h6><h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Apply 10 minutes before the int€rc0urs€  </h6>
                            </div>
                          <br />
                        	<div style="background-color:#f4eaf2;padding:10px;border-radius:15px;border:solid 3px #fe26d1">

                             <h4><img src="img/icon/map.png" style="height:35px" /> COUNTRY OF ORIGIN</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Made in India. </h6>
                            </div> <br />
                        <div style="background-color:#f4eaf2;padding:10px;border-radius:15px;border:solid 3px #fe26d1">
                            <div class="container">
                                <div class="row">
                                        <h4> INGREDIENTS OF F-CARE</h4>
                                    <div class="col-lg-4 col-md-12">
                                        <img src="img/icon/icon_in.png" />
                                    </div>
                                      <div class="col-lg-8 col-md-12">
                                          <ul style="list-style-image:url('img/icon/right.png')">
                                              <li>Ficus Benghalensis</li>
                                              <li>Ficus Glomerata</li>
                                              <li>Mucuna Pruriens</li>
                                              <li>Myristica Fragrans Houtt</li>
                                              <li>Ficus Religiosa</li>
                                              <li>Quercus Infectoria</li>
                                              <li>Azadirachta Indica</li>
                                              <li>Alum</li>
                                          </ul>
                                    </div>
                                </div>
                            </div>
                         
                         
                            </div>
                         <br />
                        
                        	<div style="background-color:#f4eaf2;padding:10px;border-radius:15px;border:solid 3px #fe26d1">

                             <h4>QUESTION : DO I HAVE TO KEEP USING IT REGULARLY LIKE A
TREATMENT <img src="img/icon/question.png" style="height:35px" /> </h4>
                           <h6>Answer : Absolutely Yes. Regular use of F CARE will keep your v@gina@ Healthy &
your V@gin@ shape will change like before.</h6>
                            </div>

                         <br />
                        
                        	<div style="background-color:#f4eaf2;padding:10px;border-radius:15px;border:solid 3px #fe26d1">

                             <h4>QUESTION : WHO CAN USE F CARE LOTION <img src="img/icon/question.png" style="height:35px" /> </h4>
                           <h6>Answer : 18 to 75 Years of Females can use F CARE Lotion. It is recommended &
Clinically Proven.</h6>
                            </div>
                          <br />
                        
                        	<div style="background-color:#f4eaf2;padding:10px;border-radius:15px;border:solid 3px #fe26d1">

                             <h4>QUESTION : CAN F CARE BE USE LIFEL0NG EVERY-TIME TO ENJOY
QU@LITY TIME WITH L0VED 0NES <img src="img/icon/question.png" style="height:35px" /> </h4>
                           <h6>Answer :Yes! F CARE is 100% Safe to use lifel0ng & there’s no long term side effects.</h6>
                            </div>


                        </div>
                         <div class="col-lg-1"></div>
                    </div>
                        </div>
				</div>	
			</div>
		</section>
</asp:Content>

