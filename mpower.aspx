<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mpower.aspx.cs" Inherits="mpower" %>

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
M-Power
</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">
M-Power
</li>
					</ul>
				</div>
			</div>
		</div>
    <section class="product-details-area ptb-100">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6 col-md-12">
                        <iframe id="ifrm" src="websider.aspx?id=1"></iframe>
						  
					</div>

					<div class="col-lg-6 col-md-12">
						<div class="product-details-desc">
							<h3>M-Power</h3>

							

							<div class="price">
								<h2 class="new-price" style="color:#17a9fc"> Price: ₹<%=netprice %>/- 	<span class="price" style="color:#d4d4d4;font-size:15px"><strike> ₹<%=price %>/-</strike></span>&nbsp;<span class="price" style="color:#ff3eef;font-size:15px"> <%= ((Convert.ToInt32(discount)*100)/Convert.ToInt32(price)) %>% Off</span></h2>
							</div>

							<p style="text-align:justify">  <b>About M-power</b> <br /> Over 40% men in India are experiencing some level of performance issues . It's very normal, what's not normalize not seeking the right solution! The M-power helps you to increase stamina, improve vitality and increase endurance. It's the complete action of our effective OTC solutions that help you to have better intimate times. Try now & feel the change. </p>

							<ul class="category">							
								<li>Category: <span>Man Health</span></li>
								<li>Tags: <span>Man Health</span></li>
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
						<p style="text-align:justify">  M-Power is made up with the natural power full ingredients which gives an tremendous results & has the potential power which may help you to solve your problem . Now a days many men after a certain age has started facing the problem of stamina. . Both psychological and biological factors can play a role in performance. Although lack of stamina  is a common problem & can be treated very easily. Medications, counseling and other techniques that can help. By using M-Power properly it may help you to recover from all your problems very easily.</p>

						   <p>After using M-Power</p>
                        <p>.It may help you to pleasure your partner very easily without any complaints. </p>
                        <p>.M-Power may help you to reduces the harmful effects of long-term stress and can also help you to maintain a healthy balance between the nervous system, endocrine glands, and immune system , thus reducing the harmful effects of long-term stress on the body. </p>
                        <p>.M-Power may help you to get relief from stress and boosts your health and immunity. </p>
                        <p>.It may helps you to recover from anxiety and depression, boosts your brain and nervous system and it may also help you to regain strength.</p>
                        <p>.It may strongly boost your energy and stamina for better performance and give you a great pleasure. </p>
                        <p>.It has antioxidant properties which helps in quick recovery from ailments and revitalises your body.</p>
                        <p>.By takeing M-Power it may help you to regain the perfect balance of physical-emotional, well-being. It is a non-hormonal vitalizer cum tonic, which helps to restore energy,stamina and performance.</p>
						<ul class="overview-list">
							<li> In¢rease y0ur $tamin@.</li>
							<li>Impr0ve y0ur Vit@lity.</li>
							<li>In¢rease Endur@nce.</li>
							<li>In¢rease Test0ster0ne levels .</li>
                            <li>In¢rease £nergy Level.</li>
                            <li>Impr0ve y0ur Perf0rm@nce.</li>
                            <li>$olves y0ur Prem@tur£ £j@cul@tion Problem.</li>
                          <li>$olves y0ur £rectile dy$functi0n.</li>
                            <li>L@st L0nger 0n B€D.</li>
                            <li>Impr0ve $p€rm Qu@lity.</li>
                            <li>G€t H@rd & $tay H@rd.</li>
                            <li>M@int@in €recti0n & In¢rease $e×u@l D€sir€</li>
						</ul>
                       













						
					</div>	

                    <div class="container">
				<div class="row">
                    <div class="col-lg-1"></div>
					<div class="col-lg-10 col-md-12">
                    	<div style="background-color:#e9f4fb;padding:10px;border-radius:15px;border:solid 3px #17a9fc">

                             <h4><img src="img/icon/cross.png" style="height:35px" /> SIDE EFFECTS?</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;None! 100% Safe to use</h6>
                            </div>
                        <br />
                        	<div style="background-color:#e9f4fb;padding:10px;border-radius:15px;border:solid 3px #17a9fc">

                             <h4><img src="img/icon/yes.png" style="height:35px" /> NATURAL ?</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yes!  </h6>
                            </div>
                         <br />
                        	<div style="background-color:#e9f4fb;padding:10px;border-radius:15px;border:solid 3px #17a9fc">

                             <h4><img src="img/icon/question.png" style="height:35px" /> HOW TO USE ?</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T@ke 0ne Capsule in Morning & Evening @fter every Meal with Warm water 0r Milk.
</h6><h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Continue For 20 Days to Get Best Results) </h6>
                            </div>
                          <br />
                        	<div style="background-color:#e9f4fb;padding:10px;border-radius:15px;border:solid 3px #17a9fc">

                             <h4><img src="img/icon/map.png" style="height:35px" /> COUNTRY OF ORIGIN</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Made in India. </h6>
                            </div> <br />
                        <div style="background-color:#e9f4fb;padding:10px;border-radius:15px;border:solid 3px #17a9fc">
                            <div class="container">
                                <div class="row">
                                        <h4> INGREDIENTS OF F-CARE</h4>
                                    <div class="col-lg-4 col-md-12">
                                        <img src="img/icon/icon_in.png" />
                                    </div>
                                      <div class="col-lg-8 col-md-12">
                                          <ul style="list-style-image:url('img/icon/right.png')">
                                              <li>Syzygium Aromaticum</li>
                                              <li>Tribulus Terrestris</li>
                                              <li>Berberis Aristata</li>
                                              <li>Chlorophytum Borivilianum</li>
                                              <li>Ocimum Sanctum</li>
                                              <li>Alpinia Galanga</li>
                                              <li>Celastrus Paniculatus</li>
                                           
                                          </ul>
                                    </div>
                                </div>
                            </div>
                         
                         
                            </div>
                         <br />
                        
                        	<div style="background-color:#e9f4fb;padding:10px;border-radius:15px;border:solid 3px #17a9fc">

                             <h4>QUESTION : DO I HAVE TO KEEP TAKING IT REGULARLY LIKE A
TREATMENT OR SUPPLEMENT <img src="img/icon/question.png" style="height:35px" /> </h4>
                           <h6>Answer : Absolutely Yes. You have to take 0ne Capsule in Morning & Evening @fter every
Meal with Warm water 0r Milk. (Continue For 20 Days to Get Best Results)</h6>
                            </div>

                         <br />
                        
                        	<div style="background-color:#e9f4fb;padding:10px;border-radius:15px;border:solid 3px #17a9fc">

                             <h4>QUESTION : WHO CAN USE M POWER CAPSULE <img src="img/icon/question.png" style="height:35px" /> </h4>
                           <h6>Answer : 18 to 75 Years of Men's can take M P0wer Capsule. It is recommended &
Clinically Proven. "Women’s should not take this medication"</h6>
                            </div>
                          <br />
                        
                        	<div style="background-color:#e9f4fb;padding:10px;border-radius:15px;border:solid 3px #17a9fc">

                             <h4>QUESTION : CAN DIABETIC OR HIGH/ LOW BLOOD PRESSURE
PATIENTS CAN TAKE M POWER Capsule<img src="img/icon/question.png" style="height:35px" /> </h4>
                           <h6>Answer :Yes! M P0wer Capsule are safe for diabetics & Blood Pressure patients &
works good</h6>
                            </div>

                        <br />
                        
                        	<div style="background-color:#e9f4fb;padding:10px;border-radius:15px;border:solid 3px #17a9fc">

                             <h4>QUESTION : CAN M P0WER CAPSULE BE TAKEN LIFEL0NG EVERY-TIME
TO ENJOY QU@LITY TIME WITH L0VED 0NES<img src="img/icon/question.png" style="height:35px" /> </h4>
                           <h6>Answer :Yes! M P0wer Capsule is 100% Safe to use lifel0ng & there’s no long term side
effects.</h6>
                            </div>
                        </div>
                         <div class="col-lg-1"></div>
                    </div>
                        </div>
				</div>	
			</div>
		</section>
</asp:Content>

