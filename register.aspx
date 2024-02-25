<%@ Page Title="register - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>Register</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">Register</li>
					</ul>
				</div>
			</div>
		</div>
    

    
  
<!--Start contact form area-->







    <section class="user-area-style log-in-style ptb-100">
			<div class="container">
				<div class="contact-form-action">
					<div class="account-title">
						<h2>Register</h2>
					</div>



<asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
          <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
					<div>
						<div class="row">
							<div class="col-12">
								<div class="form-group">
									<label>Your Name</label>
                                      <asp:TextBox ID="txtname" runat="server" placeholder="Your Name*" class="form-control" required ></asp:TextBox> 
                                 
									
								</div>
                                 <br />
							</div>
                            <div class="col-12">
								<div class="form-group">
									<label>Your Mobile Number</label>
                                      <asp:TextBox ID="txtmobile" runat="server" placeholder="Your Mobile Number*" class="form-control" required ></asp:TextBox> 
                                 
									
								</div>
                                 <br />
							</div>
                         
							<div class="col-12">
								<div class="form-group">
									<label>Your Email Id</label>
                                     <asp:TextBox ID="txtemail" runat="server" placeholder="Your Email Id*" class="form-control" required ></asp:TextBox>
								
								</div>
                                 <br />
							</div>
                         
                            	<div class="col-12">
								<div class="form-group">
									<label>Your Password</label>
                                     <asp:TextBox ID="txtpassword" runat="server" placeholder="Your Password*" class="form-control" required ></asp:TextBox>
								
								</div>
                                 <br />
							</div>
                            <div class="col-12">
								<div class="form-group">
									<label>Refer Code</label>
                                     <asp:TextBox ID="txtrefer" runat="server" placeholder="Refer code" class="form-control" ></asp:TextBox>
								
								</div>
                                 <br />
							</div>

                            <div class="col-12">
								<div class="form-group">
								  <p><asp:Label ID="lblerror" runat="server"  ForeColor="Red"></asp:Label></p>
                                    <asp:Button ID="otpbutton" runat="server" Text="Get Otp"  OnClick="otpbutton_Click"  class="default-btn" />
								</div>
                                 <br />
							</div>

                         <%--   <div class="col-12">
								<div class="form-group">
									
                                    <asp:TextBox ID="txtotp" runat="server" class="form-control"  placeholder="Enter Otp" Visible="false"></asp:TextBox>
								
								</div>--%>
                                 <br />
							</div>
							<div class="col-12">
								<div class="login-action">
									
									<span class="forgot-login">
										<a href="forgotpassword.aspx">Forgot your password?</a>
									</span>
								</div>
                                 <br />
							</div>
                            
							<div class="col-12"  runat="server" id="registerdiv" visible="false">
                                  <asp:Label ID="lbleroor" runat="server"  ForeColor="Red"></asp:Label>
                                <asp:Button ID="Button1" runat="server" Text="Register Now" OnClick="Unnamed_ServerClick1"  class="default-btn" />
                          
                                <br />

							
							</div>
                            	<div class="col-12">
								<div class="login-action">
									
									<span class="forgot-login">
										<a href="login.aspx"> Account already exists.. continue login </a>
									</span>
								</div>
                                 <br />
							</div>
						</div>
					</div>

        
    </ContentTemplate>
</asp:UpdatePanel>


				</div>
			</div>
		</section>
</asp:Content>

