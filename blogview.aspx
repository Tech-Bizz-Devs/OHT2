<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blogview.aspx.cs" Inherits="blogview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-title-area bg-10" style="background-image: url('assets/images/bg_hd.jpg'); background-size: cover">
        <div class="container">
            <div class="page-title-content">
                <h2><%=heading %></h2>

                <ul>

                    <li>
                        <a href="Index.aspx">Home 
							</a>
                    </li>



                    <li class="active"><%=heading %></li>
                </ul>
            </div>
        </div>
    </div>
    <section class="news-details ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                           <asp:ListView ID="lsrblog" runat="server">
                <ItemTemplate>
                    <div class="news-details-content">
                        <div class="news-details-img">
                            <img src="img/blog/<%# Eval("image") %>" alt="<%# Eval("heading") %>" style="border:solid 2px #d5d5d5;padding:5px">
                        </div>

                        <div class="news-top-content">
                            <div class="news-content">
                                <ul class="admin">
                                    <li>
                                        <a href="#">
                                            <i class="bx bxs-user"></i>
                                          Admin
											</a>
                                    </li>

                                    <li>
                                        <i class="bx bx-calendar"></i>
                                      <%# Eval("date") %>
										</li>

                                   
                                </ul>

                                <h3><%# Eval("heading") %></h3>

                                <p>  <%# Eval("description") %></p>

                              
                            </div>

                            

                         
                        </div>

                        

                        
                    </div>
                     </ItemTemplate>
            </asp:ListView>
                </div>

                <div class="col-lg-1">
                 </div>
        </div>
	</div>
    </section>
</asp:Content>

