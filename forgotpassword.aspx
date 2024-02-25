<%@ Page Title="forgot password - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" defaultbutton="LogIn" defaultfocus="TxtPass">
      <section class="breadcrumb-area" style="background-image: url(images/resources/breadcrumb-bg.jpg);">
	<div class="container">
	    <div class="row">
	        <div class="col-md-12">
	            <div class="breadcrumbs">
	                <h1>Forgot Password</h1>
	            </div>
	        </div>
	    </div>
	</div>
</section>
    <!--Start breadcrumb bottom area-->
  <div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>

Forgot Password

</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">

Forgot Password

</li>
					</ul>
				</div>
			</div>
		</div>

    <!-- /BREADCRUMB -->
    <br /><br />
    <div class="container">
        <!-- row -->
        <div class="row">

            <div class="col-md-4"></div>
            <div class="col-md-4 order-details" style="border:solid 1px #dcdcdc">  <br /><br /> <asp:Panel ID="Panel1" runat="server" DefaultButton="LogIn">
                <div class="section-title" style="text-align: center">
                    <h3 class="title">Forgot Password</h3>
                    <div class="form-group">
                        <br />
                        <asp:TextBox ID="Forgot" runat="server" placeholder="Enter Your Register Mail Id.." class="form-control"></asp:TextBox>
                    </div>
                   
                    <div class="form-group">
                        <asp:Label ID="LblErr" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="LogIn" class="btn btn-danger" runat="server" Text="Forgot Password" OnClick="LogIn_Click" Style="background-color:#17a9fc;border:none;color:white" />
                         <asp:Button ID="Button2" class="btn btn-Dark" runat="server" OnClick="Button2_Click" Text="Login Account" Style="background-color:#33343D;border:none;color:white" />
  
  
                    </div>
                </div></asp:Panel><br /><br />
            </div>
            <div class="col-md-4"></div>
        </div>
    </div> <br /><br /> <br /><br />
</asp:Content>

