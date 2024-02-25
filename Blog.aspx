<%@ Page Title="Blog & News - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>Featured Blog And Advice</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">Featured Blog And Advice</li>
					</ul>
				</div>
			</div>
		</div>
    	<section class="our-news-area pt-100 pb-70">
			<div class="container">
				<div class="section-title">
					
					<h2>Featured Blog And Advice</h2>
				</div>
                <div class="row">

                      <asp:ListView ID="lsrblog" runat="server">
                <ItemTemplate>
                    <div class="col-4">
                        <div class="single-news">
						<a href="blogview.aspx?id=<%# Eval("id") %>">
							<img src="img/blog/<%# Eval("image") %>" alt="<%# Eval("heading") %>"/>
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
                    </div>
                      </ItemTemplate>
            </asp:ListView>
                </div>
				
			</div>
		</section>
</asp:Content>

