<%@ Page Title="login - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>Log In</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">Log In</li>
					</ul>
				</div>
			</div>
		</div>
    <section class="user-area-style log-in-style ptb-100">
			<div class="container">
				<div class="contact-form-action">
					<div class="account-title">
						<h2>Log in</h2>
					</div>



<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

					<div>
						<div class="row">
							<div class="col-12">
								<div class="form-group">
									<label>Mobile Number</label>
                                     <asp:TextBox ID="txtlogin" runat="server" placeholder="Your Mobile Number*" class="form-control" required></asp:TextBox>
									
								</div>
                                 <br />
							</div>
                         
							<div class="col-12">
								<div class="form-group">
									<label>Password</label>
									 <asp:TextBox ID="txtpassword" runat="server" placeholder="Your Password*" class="form-control" required ></asp:TextBox>
								</div>
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
                            
							<div class="col-12">
                                   <asp:Label ID="lbleroor" runat="server"  ForeColor="Red"></asp:Label> <br />
                                <asp:Button ID="Button1" runat="server" Text="Login Now" OnClick="Button1_Click"   class="default-btn"   />

                                <br />

							
							</div>
                            	<div class="col-12">
								<div class="login-action">
									
									<span class="forgot-login">
										<a href="register.aspx"> No Account .. Please Register </a>
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

