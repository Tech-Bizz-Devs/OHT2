<%@ Page Title="My Account - mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountDetails.aspx.cs" Inherits="AccountDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        table#t01 tr:nth-child(even) {
            background-color: #eee;
        }

        table#t01 tr:nth-child(odd) {
            background-color: #fff;
        }

        table#t01 th {
            background-color: #FF5252;
            color: white;
            padding: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <br /><br />
   <div class="page-title-area bg-10" style="background-image:url('assets/images/bg_hd.jpg');background-size:cover">
			<div class="container">
				<div class="page-title-content">
					<h2>
Profile
</h2>

					<ul>
      
						<li>
							<a href="Index.aspx">
								Home 
							</a>
						</li>

						

						<li class="active">
Profile
</li>
					</ul>
				</div>
			</div>
		</div>

    <div class="mian-contain">
        <div class="container">

            <!-- CONTAIN START ptb-95-->
            <section class="checkout-section ptb-95 ptb-sm-60 ptb-xs-30">
                <div class="row">
                    <div class="col-md-2 col-sm-4">
                        
                    </div>
                    <div class="col-md-10 col-sm-8">
                        <br />
                        <div id="data-step2" class="account-content" data-temp="tabdata">
                            <div class="row">
                                <div class="col-12">
                                    <div class="heading-part heading-bg mb-30">
                                        <h2 class="heading m-0">Account Details</h2>
                                    </div>
                                </div>  <br /><br />
                            </div>

                            <div class="container-fluid" style="border: solid 1px #dbdee0">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:ListView ID="ListView1" runat="server" DataSourceID="Sqlnewarrival">
                                            <ItemTemplate>
                                                <div class="row">


                                                    <div class="col-sm-5 col-md-5 col-lg-5">
                                                        <form>
                                                            <div class="form-group">
                                                                <p>Name :-</p>
                                                                <asp:TextBox ID="TxtName" runat="server" class="form-control" type="text" Text='<%#Eval("Name")%>' Style="color: black" placeholder="Name"></asp:TextBox>
                                                            </div>
                                                            <div class="form-group">
                                                                <p>Email :-</p>
                                                                <asp:TextBox ID="TxtEmail" runat="server" type="email" class="form-control" Style="color: black" Text='<%#Eval("emailid")%>' placeholder="Email Id"></asp:TextBox>
                                                            </div>


                                                            <div class="form-group">
                                                                <p>Mobile Number :-</p>
                                                                <asp:TextBox ID="TxtMobile" runat="server" class="form-control" Enabled="false" Style="color: black" Text='<%#Eval("mobilenumber")%>' placeholder="Mobile No."></asp:TextBox>
                                                            </div>
                                                        </form>
                                                    </div>

                                                    <div class="col-sm-5 col-md-5 col-lg-5">





                                                        <div class="form-group">
                                                            <p>Pin Code :-</p>
                                                            <asp:TextBox ID="txtpincode" runat="server" class="form-control" Style="color: black" Text='<%#Eval("zipcode")%>' placeholder="Enter PinCode" TabIndex="7"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <p>Address :-</p>
                                                            <asp:TextBox ID="Txtaddress" runat="server" class="form-control" Style="color: black" TextMode="MultiLine" Rows="2" Text='<%#Eval("Address")%>' placeholder="Address"></asp:TextBox>

                                                        </div>

                                                      

                                                        &nbsp;<asp:Label ID="LblErr" runat="server" ForeColor="red"></asp:Label>
                                                        <div class="form-group">
                                                            <asp:Button ID="btnregister" runat="server" Text="Update" TabIndex="12" class="btn btn-primary" OnClick="btnregister_Click" Style="background-color: #278706; border: none; color: white" />

                                                        </div>
                                                        <br />
                                                    </div>

                                                </div>

                                            </ItemTemplate>
                                        </asp:ListView>
                                        <asp:SqlDataSource ID="Sqlnewarrival" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalMobiz %>" SelectCommand="select * from  register  Where UserId=@UserId">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="UserId" SessionField="UserId" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>




                        </div>

                        <br />
                        <br />
                        
                      
                        <%--  <div class="row">
                            <img src="refer.jpg" style="border: solid 1px #d8d8d8; padding: 3px" />
                        </div>--%>


                        <br />
                        <br />

                        <a id="bottom"></a>

                    </div>
                </div>
            </section>
            <!-- CONTAINER END -->
        </div>
    </div>
</asp:Content>
