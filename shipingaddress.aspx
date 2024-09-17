<%@ Page Title="Shipping Address - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shipingaddress.aspx.cs" Inherits="shipingaddress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
    <br /><br />
    <!--login section start-->
    <div class="page_login_section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h4 style="text-align: center; color:#ffcc29">Shipping Address</h4>
                    <div class="register_page_form" >

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div>
                                    <div class="row">
                                        <div class="col-lg-4 col-sm-4 col-md-4">
                                            <div class="input_text">
                                                <label for="R_N" style="color: white">Name <span style="color: white">*</span></label>
                                                <asp:TextBox ID="txtname" runat="server" class="form-control" required="required" placeholder="Name"></asp:TextBox>

                                            </div>
                                        </div>

                                         <div class="col-lg-4 col-sm-4 col-md-4">
                                            <div class="input_text">
                                                <label for="R_N4" style="color: white">Email Address <span style="color: white">*</span></label>
                                                <asp:TextBox ID="txtemail" runat="server" class="form-control" required="required" placeholder="Email Address"></asp:TextBox>
                                            </div>
                                        </div>
                                      <div class="col-lg-4 col-sm-4 col-md-4">
                                            <div class="input_text">
                                                <label for="R_N10" style="color: white">Mobile No<span style="color: white">*</span></label>
                                                <asp:TextBox ID="txtmobile" runat="server" class="form-control" placeholder="Mobile No"  required="required"></asp:TextBox>
                                            </div>
                                        </div>   
                                        <div class="col-lg-4 col-sm-4 col-md-4">
                                          
                                                <label for="R_N6" style="color: white">State<span style="color: white">*</span></label>
                                               <asp:TextBox ID="txtstate" runat="server" class="form-control" placeholder="State Name"  required="required"></asp:TextBox>

                                              <%--  <asp:DropDownList ID="DDState" runat="server" AutoPostBack="true" class="form-control"  TabIndex="3" DataValueField="State_Code" DataTextField="State_Name" OnSelectedIndexChanged="DDState_SelectedIndexChanged">
                                                </asp:DropDownList>--%>
                                          
                                        </div>

                                      

                                          <div class="col-lg-4 col-sm-4 col-md-4">
                                            <div class="input_text">
                                                <label for="R_N6" style="color: white">District<span style="color: white">*</span></label>

                                                 <asp:TextBox ID="txtDistrict" runat="server" class="form-control" placeholder="District Name"  required="required"></asp:TextBox>
                                            <%--    <asp:DropDownList ID="DDDistrict" runat="server" class="form-control"  TabIndex="4" DataValueField="District_Code" DataTextField="District_Name">
                                                </asp:DropDownList>--%>
                                            </div>
                                        </div>
                                          <div class="col-lg-4 col-sm-4 col-md-4">
                                            <div class="input_text">
                                                <label for="R_N10" style="color: white">Postcode / Zip<span style="color: white">*</span></label>
                                                <asp:TextBox ID="txtpincode" runat="server" class="form-control" required="required" placeholder="Postcode / Zip"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="col-lg-12 col-sm-12 col-md-12">

                                            <div class="input_text">
                                                <label for="R_N7" style="color: white">Address<span style="color: white">*</span></label>
                                                <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Address" required="required"></asp:TextBox>
                                            </div>
                                        </div>

                                    
                                                                                                              
                                           <div class="col-12">
                                            <br />
                                            <div class="login_submit">
                                                <asp:Label ID="UserLbl" runat="server" ForeColor="Red"></asp:Label>
                                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" class="default-btn"  >Continue</asp:LinkButton>                                            

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br /><br />
</asp:Content>

