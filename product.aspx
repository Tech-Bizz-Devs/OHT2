<%@ Page Title="Product - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>Our Product</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">Our Product</li>
					</ul>
				</div>
			</div>
		</div>
   <section class="expertise-area pt-100 pb-70">
			<div class="container">
				<div class="section-title">
					<h2>Our Expertise</h2>
				</div>

				<div class="row">
					<div class="col-lg-4 col-md-6">
                            <a href="familykit.aspx">
						<div class="single-expertise">
						
                            <img src="img/MainCategory/1.jpg" alt="mfpower.in" />
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
						 <img src="img/MainCategory/3.jpg"   alt="mfpower.in"/>

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
						 <img src="img/MainCategory/2.jpg" alt="mfpower.in" />

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
</asp:Content>

