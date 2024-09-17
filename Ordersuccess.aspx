<%@ Page Title="Order success - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ordersuccess.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="ROBOTS" content="NOINDEX, NOFOLLOW"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <br/><br/>
<div class="container">
	<div class="row text-center">
         <div class="col-sm-3"></div>
        <div class="col-sm-6 col-sm-offset-3" style="border:solid 1px #dddddd">
        <br/><br/> <h2 style="color:#17a9fc"> Order Success</h2>
      <%--  <h3>Dear, <asp:Label ID="Label1" runat="server" ></asp:Label></h3>--%>
        <p style="font-size:20px;color:#17a9fc;">Thank you for Shopping with  MF Power We have sent Invoice of your order to Your Registered EmailID .</p>
        <a href="Index.aspx"  class="default-btn"   >    Explore Product     </a>
    <br/><br/>
        </div>
         <div class="col-sm-3"></div>
	</div>
</div> <br/><br/>
</asp:Content>

