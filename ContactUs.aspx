<%@ Page Title="Contact Us - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>
Contact Us
</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">
Contact Us
</li>
					</ul>
				</div>
			</div>
		</div>
    <!-- End Page Title Area -->

    <!-- Start Contact Info Area -->
    <section class="contact-info-area pt-100 pb-70">
        <div class="container">
            <div class="section-title">
                <h2>Contact Us, We Are Here to Help You</h2>

            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-contact-info">
                        <i class="bx bx-location-plus"></i>

                        <p>6-M-1,Patel Nagar, Bhilwara ,(Raj.)</p>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-contact-info">
                        <i class="bx bx-envelope"></i>

                        <a href="mailto:mfpower007@gmail.com">mfpower007@gmail.com
							</a>

                    </div>
                </div>

                <div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0">
                    <div class="single-contact-info">
                        <i class="bx bx-phone-call"></i>

                         <a href="tel:+918690305654">+91 (869) 030-5654</a>

                                 <%--   <a href="tel:+919314556630">+91 (931) 455-6630</a>
                                     <a href="tel:+917229991777">+91 (722) 999-1777</a>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact Info Area -->

    <!-- Start Contact Area -->
    <section class="main-contact-area pb-100">
        <div class="container">
            <div class="section-title">
                <h2>Write Us</h2>
            </div>

            <form id="contactForm">
                <div class="row">
                    <div class="col-lg-6 col-sm-6">
                        <div class="form-group">
                            <label>Your Name</label>
                           
                            <asp:TextBox ID="name" class="form-control" required data-error="Please enter your name" runat="server"></asp:TextBox>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-sm-6">
                        <div class="form-group">
                            <label>Your Email</label>
                              <asp:TextBox ID="email" class="form-control" required data-error="Please enter your email" runat="server"></asp:TextBox>
                          
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-sm-6">
                        <div class="form-group">
                            <label>Your Phone</label>
                              <asp:TextBox ID="phone_number" class="form-control" required data-error="Please enter your number" runat="server"></asp:TextBox>
                          
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-sm-6">
                        <div class="form-group">
                            <label>Subject</label>
                                <asp:TextBox ID="msg_subject" class="form-control" required data-error="Please enter your Subject" runat="server"></asp:TextBox>
                         
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="form-group">
                            <label>Your Message</label>
                                <asp:TextBox ID="message" TextMode="MultiLine" Rows="3" class="form-control" required data-error="Write Your Message" runat="server"></asp:TextBox>
                           
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>



                    <div class="col-lg-12 col-md-12">
                        <button type="submit" runat="server" onserverclick="Unnamed_ServerClick" class="default-btn">
                            <span>Send Message</span>
                        </button>
                        <div id="msgSubmit" class="h3 text-center hidden"></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- End Contact Area -->

    <!-- Start Map Area -->
    <div class="map-area">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28464.766695597315!2d75.67633768226035!3d26.900453400000007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396c4bb376c61459%3A0xc8537719cc0685a1!2sPratap%20Market!5e0!3m2!1sen!2sin!4v1649670144235!5m2!1sen!2sin"></iframe>
        
    </div>
</asp:Content>

