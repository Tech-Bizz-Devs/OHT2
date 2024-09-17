<%@ Page Title="Appointment - mfpower.in " Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<!-- Start Page Title Area -->
		 <div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>
Appointment
</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">
Appointment
</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Page Title Area -->

		<!-- Start Appointment Area -->
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
</asp:Content>

