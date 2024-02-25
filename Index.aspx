<%@ Page Title="home - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #computer {
            display:normal !important;
        }

         #mobile {
               display:none !important;
        }
        @media only screen and (max-width: 768px) 
        {
        #mobile {
               display:block !important;
        }
             #computer {
            display:none !important;
        }

         
        }


        .slider_csss {
        
        width:150px;height:150px;border:solid 1px #e5e4e4;padding:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <section class="hero-slider-area" id="computer">
			<div class="hero-slider owl-carousel owl-theme">
				<div class="hero-slider-item bg-1">
					<div class="d-table">
						<div class="d-table-cell">
							<div class="container">
								<div class="hero-slider-content">
									<span>Welcome to MFPower</span>
									<h1>Keep Your Family Life Alive with us</h1>
									<p>We Introduce you family kit a hope of every family for happy moments & Feelings.</p>
	
									<div class="hero-slider-btn">
										<a href="familykit.aspx" class="default-btn">
											View More
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="hero-slider-item bg-2">
					<div class="d-table">
						<div class="d-table-cell">
							<div class="container">
								<div class="hero-slider-content">
									<span>Welcome to MFPower</span>
									<h1>Good Nutrition Improve Performance</h1>
									<p>We advise you to take M-Power with nutrition for Better Performance & Stamina.</p>
	
									<div class="hero-slider-btn">
										<a href="mpower.aspx" class="default-btn">
											View More
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="hero-slider-item bg-3">
					<div class="d-table">
						<div class="d-table-cell">
							<div class="container">
								<div class="hero-slider-content">
									<span>Welcome to MFPower</span>
									<h1>Our Medicine is Secret of your Smile </h1>
									<p>We advise you to take F-Care for feel like you are younger once again.</p>
	
									<div class="hero-slider-btn">
										<a href="fcare.aspx" class="default-btn">
											View More
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> 
                <div class="hero-slider-item bg-4">
					<div class="d-table">
						<div class="d-table-cell">
							<div class="container">
								<div class="hero-slider-content">
									<span>Welcome to MFPower</span>
									<h1>Our Medicine make you Stronger</h1>
									<p>We make you happy,healthy & stronger to perform well. </p>
	
									<div class="hero-slider-btn">
										<a href="familykit.aspx" class="default-btn">
											View More
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Hero Slider Area -->
    <section class="hero-slider-area" id="mobile">
			<div class="hero-slider owl-carousel owl-theme">
				<div class="hero-slider-item bg-1" style="background-image: url(assets/images/slider/m1.jpg);">
					<div class="d-table">
						<div class="d-table-cell">
							<div class="container">
								<div class="hero-slider-content">
									<span>Welcome to MFPower</span>
									<h1>Keep Your Family Life Alive with us</h1>
									<p>We Introduce you family kit a hope of every family for happy moments & Feelings.</p>
	<br />
									<div class="hero-slider-btn">
										<a href="familykit.aspx" class="default-btn">
											View More
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="hero-slider-item bg-2" style="background-image: url(assets/images/slider/m2.jpg);">
					<div class="d-table">
						<div class="d-table-cell">
							<div class="container">
								<div class="hero-slider-content">
									<span>Welcome to MFPower</span>
									<h1>Good Nutrition Improve Performance</h1>
									<p>We advise you to take M-Power with nutrition for Better Performance & Stamina.</p>
		<br />
									<div class="hero-slider-btn">
										<a href="mpower.aspx" class="default-btn">
											View More
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="hero-slider-item bg-3" style="background-image: url(assets/images/slider/m3.jpg);">
					<div class="d-table">
						<div class="d-table-cell">
							<div class="container">
								<div class="hero-slider-content">
									<span>Welcome to MFPower</span>
									<h1>Our Medicine is Secret of your Smile </h1>
									<p>We advise you to take F-Care for feel like you are younger once again.</p>
		<br />
									<div class="hero-slider-btn">
										<a href="fcare.aspx" class="default-btn">
											View More
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> 
                <div class="hero-slider-item bg-4" style="background-image: url(assets/images/slider/m4.jpg);">
					<div class="d-table">
						<div class="d-table-cell">
							<div class="container">
								<div class="hero-slider-content">
									<span>Welcome to MFPower</span>
									<h1>Our Medicine make you Stronger</h1>
									<p>We make you happy,healthy & stronger to perform well. </p>
		<br />	<br />
									<div class="hero-slider-btn">
										<a href="familykit.aspx" class="default-btn">
											View More
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Start Expertise Area -->
		<section class="expertise-area pt-100 pb-70">
			<div class="container">
				<div class="section-title">
					<h2>Our Expertise</h2>
				</div>

				<div class="row">
					<div class="col-lg-4 col-md-6">
                         <a href="familykit.aspx">
						<div class="single-expertise">
						
                            <img src="img/MainCategory/1.jpg"  alt="mfpower.in"/>
							<div class="expertise-title">
								<h3>Family Kit</h3>
							</div>

							<div class="expertise-content">
								<h3>Family Kit</h3>
							<%--	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>--%>
							</div>
						</div>
                             </a>
					</div>

					<div class="col-lg-4 col-md-6">    <a href="mpower.aspx">
						<div class="single-expertise">
						 <img src="img/MainCategory/3.jpg" alt="mfpower.in" />

							<div class="expertise-title">
								<h3>M-Power</h3>
							</div>

							<div class="expertise-content">
								<h3>M-Power</h3>
							<%--	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>--%>
							</div>
						</div>
                        </a>
					</div>
					
					<div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0">
                        <a href="fcare.aspx">
						<div class="single-expertise">
						 <img src="img/MainCategory/2.jpg" alt="mfpower.in"/>

							<div class="expertise-title">
								<h3>F-Care</h3>
							</div>

							<div class="expertise-content">
								<h3>F-Care</h3>
								<%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>--%>
							</div>
						</div></a>
					</div>
				</div>
			</div>
		</section>
		<!-- End Expertise Area -->

		<!-- Start About Us Area -->
		<section class="about-us-area pb-100">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="about-img-content">
							<div class="about-img-1">
                               <img src="img/about2.jpg"  alt="mfpower.in"/>
							
								<div class="about-img-2">
                                     <img src="img/about1.jpg" alt="mfpower.in" />
								
								</div>
							</div>

							<h3><span>15</span> Years of Experience</h3>

							
						</div>
					</div>

					<div class="col-lg-6">
						<div class="about-content">
							<span>About family kit</span>
							<h2>Better Eat, Better Perform</h2>
							<h4>If You Get Better Nutrition, You Can Enjoy a Healthy Life</h4>
							<p style="text-align:justify">  
Family kit is a complete combo pack for both male & female . It gives you the Energy to face your self with the reality. When the nature let's you down , family kit helps you to fight by with all the personal problems which are facing in your day to day life. All ingredients added in the kit are completely natural & herbal. Clinically Tested & approved by the Indian Government. No side effects at all , try now & feel the Goodness of Family Kit. 
</p>

							

							<%--<div class="row">
								<div class="col-lg-6 col-sm-6">
									<ul class="mb-20">
										<li>Low Energy</li>
										<li>Stress & Anxiety</li>
										<li>In¢rease y0ur $tamin@.</li>
										<li>In¢rease £nergy Level.</li>
									</ul>
								</div>

								<div class="col-lg-6 col-sm-6">
									<ul>
										<li>Balance Body & Mind</li>
										<li>Advice</li>
										<li>Impr0ve $p€rm Qu@lity.</li>
										<li>In¢rease Endur@nce.</li>
									</ul>
								</div>
							</div>--%>
                       
                            	<h3>We Can Help You </h3>
                            <h3 style="color:#17a9fc">Call Now :  <i class="bx bx-phone"></i> +91- 86903-05654</h3>
							<a href="aboutus.aspx" class="default-btn">Know More</a>
						</div>
					</div>
				</div>
			</div>

			<div class="about-shape-img">
				<img src="assets/images/about-shape.png" alt="mfpower.in"/>
			</div>
		</section>
		

    <section class="healthy-life-area ptb-100">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="healthy-life-img">
                            <img src="img/mabout.jpg" />
						
						</div>
					</div>

					<div class="col-lg-6">
						<div class="healthy-life-content">
							<h2>We Give You M-Power Product For Better Performance</h2>
							<p style="text-align:justify">
                               <b>About M-power</b> <br /> Over 40% men in India are experiencing some level of performance issues . It's very normal, what's not normalize not seeking the right solution! The M-power helps you to increase stamina, improve vitality and increase endurance. It's the complete action of our effective OTC solutions that help you to have better intimate times. Try now & feel the change. 

							</p>

							<h3>Steps to Your Perfect Stamina & Performance.</h3>

							<%--<div class="row">
								<div class="col-lg-6 col-sm-6">
									<ul class="mb-20">
										<li>In¢rease y0ur $tamin@.</li>
										<li>Impr0ve y0ur Vit@lity.</li>
										<li>In¢rease Endur@nce.</li>
										<li>In¢rease Test0ster0ne levels .</li>
									</ul>
								</div>
								
								<div class="col-lg-6 col-sm-6">
									<ul>
										<li>In¢rease £nergy Level.</li>
										<li>L@st L0nger 0n B€D.</li>
										<li>Impr0ve $p€rm Qu@lity.</li>
										<li>G€t H@rd & $tay H@rd.</li>
									</ul>
								</div>
							</div>--%>
						</div>
					</div>
				</div>
			</div>
		</section>
   
    <section class="healthy-life-area ptb-100">
			<div class="container">
				<div class="row align-items-center">
					

					<div class="col-lg-6">
						<div class="healthy-life-content">
							<h2>We Give You F-Care Product For Woman Organal Health for Happy & Healthy Life</h2>
							<p style="text-align:justify">
                                  
                                <b>About F-Care</b><br />

                            Over 70% of women in India are experiencing some level of Performance issues , like loosening of Organal structure. They are not happy with it all , after a age they face this problem , but no worry's we have a solution for all your Organal problem's , it may help you to solve & feel the change. Now we say F-care gives you wings to fly again. Try now & feel the change. 
							</p><h3>Steps to Your Perfect Stamina & Performance.</h3>

							<%--<div class="row">
								<div class="col-lg-6 col-sm-6">
									<ul class="mb-20">
										<li>inst@nt v@gin@ T1ght€n1ng</li>
									
										<li> outstanding perf0rm@nce €very n1ght</li>
										<li>no side effects with every gynecologist's choice</li>
									</ul>
								</div>
								
								<div class="col-lg-6 col-sm-6">
									<ul>
										<li>T1ghtens the v@gin@ & reduce access disch@rge</li>
										<li>Rejuvenates the v@gin@l tissues</li>
										<li>F care is completely Herbal & safe</li>
									
									</ul>
								</div>
							</div>--%>
						</div>
					</div>



                    <div class="col-lg-6">
						<div class="healthy-life-img">
                            <img src="img/fabout.jpg" alt="mfpower.in" />
						
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Start Appointment Area -->
		
		
		<section class="testimonials-area pt-100">
			<div class="container">
				<div class="testimonials-content">
					<div class="testimonials-slider owl-carousel owl-theme">
                          <asp:ListView ID="lsttesi" runat="server">
                <ItemTemplate>

						<div class="single-testimonials">
							<i class="bx bxs-quote-right"></i>
							<p>“<%# Eval("info") %>” </p>

							<div class="writer-name">
								<h3><%# Eval("name") %>"</h3>
								
							</div>
						</div>
                      </ItemTemplate>
            </asp:ListView>
					</div>
				</div>
				<h4>Testimonials</h4>
			</div>
		</section>
		<!-- End Testimonial Area -->

		<!-- Start Healthy Life Area -->
		
		<!-- End Healthy Life Area -->

		<!-- Start Our News Area -->
		<section class="our-news-area pt-100 pb-70">
			<div class="container">
				<div class="section-title">
					<span>Our News</span>
					<h2>Featured News And Advice</h2>
				</div>

				<div class="owl-carousel owl-theme news-slider">
                      <asp:ListView ID="lsrblog" runat="server">
                <ItemTemplate>
				<div class="single-news">
						<a href="blogview.aspx?id=<%# Eval("id") %>">
							<img src="img/blog/<%# Eval("image") %>" alt="<%# Eval("heading") %>">
						</a>

						<div class="news-content">
							<ul>
								<li>
									<i class="bx bxs-user"></i>
									<a href="#">Admin</a>
								</li>
								<li>
									<i class="bx bxs-calendar"></i>
									<span><%# Eval("date") %></span>
								</li>
							</ul>

							<h3>
								<a  href="blogview.aspx?id=<%# Eval("id") %>">
									<%# Eval("heading") %>
								</a>
							</h3>

							
							
							<a href="blogview.aspx?id=<%# Eval("id") %>" class="read-more">
								Read More
							</a>
						</div>
					</div>
                      </ItemTemplate>
            </asp:ListView>
				</div>
			</div>
		</section>
		<!-- End Our News Area -->

    <section class="appointment-area appointment-area-style-three ptb-100">
			<div class="container">
				<div class="appointment-action">
					<h2>Make An Appointment</h2>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
					<form>
						<div class="row">
							<div class="col-lg-6">
								<div class="form-group">
                                         <asp:TextBox ID="txtname" runat="server" placeholder="Your Name" required="required"  class="form-control" ></asp:TextBox>
									
								</div>
							</div>

							<div class="col-lg-6">
								<div class="form-group">
							  <asp:TextBox ID="txtmobile" runat="server" placeholder="Your Mobile Number"  class="form-control"  required="required"></asp:TextBox>
								</div>
							</div>

							

							

							<div class="col-12">
								<div class="form-group">
									 <asp:TextBox ID="txtsubj" runat="server" placeholder="Your Subject" class="form-control" required="required"></asp:TextBox>
                                       
								</div>
							</div>

							<div class="col-12">
								<div class="form-group">
								    <asp:TextBox ID="txtmessage" runat="server" placeholder="Your Message.." class="form-control" TextMode="MultiLine" Rows="3" required="required"></asp:TextBox>
								</div>
							</div>

							<div class="col-12">
                                 <asp:Button ID="Button1" runat="server" Text="submit" class="default-btn" OnClick="Button1_Click"/>
                                 <br />
                                      <asp:Label ID="lblerror" runat="server"  ForeColor="Red"></asp:Label>
							
							</div>
						</div>
					</form>
                                </ContentTemplate>
                    </asp:UpdatePanel>
				</div>
			</div>
		</section>
		<!-- Start Partner Area -->
		<div class="partner-area ptb-100">
			<div class="container">
				<div class="partner-bg">
					<div class="row">
						<div class="partner-slider owl-carousel owl-theme">
							<div class="partner-item">
								<a href="#">
      <img src="img/certi/1.png" alt="mfpower.in" class="slider_csss"  />
									
								</a>
							</div>
	
							<div class="partner-item">
								<a href="#">
								
								</a>
          <img src="img/certi/2.png" alt="mfpower.in" class="slider_csss"  />
							</div>
	
							<div class="partner-item">
								<a href="#">
              <img src="img/certi/3.png" alt="mfpower.in" class="slider_csss" />
								
								</a>
							</div>
	
							<div class="partner-item">
								<a href="#">
                  <img src="img/certi/4.png" alt="mfpower.in" class="slider_csss" />
									
								</a>
							</div>
	
							<div class="partner-item">
								<a href="#">
								<img src="img/certi/5.png"  alt="mfpower.in"  class="slider_csss" />
								</a>
							</div>

							<div class="partner-item">
								<a href="#">
                      <img src="img/certi/6.png"  alt="mfpower.in"  class="slider_csss"  />
							
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</asp:Content>

