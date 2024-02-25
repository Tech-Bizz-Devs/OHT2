<%@ Page Title="my Account- mfpower.in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="myaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        @media only screen and (max-width: 1000px) {
            .masterancgh {
                display: none;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="page-title-area bg-10" style="background-image: url('assets/images/bg_hd.jpg'); background-size: cover">
        <div class="container">
            <div class="page-title-content">
                <h2>My Account
                </h2>

                <ul>

                    <li>
                        <a href="Index.aspx">Home 
                        </a>
                    </li>



                    <li class="active">My Account
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <br />

    <div class="product-section section mt-30">

        <div class="container">
            <div class="row text-center">
                <div class="col-12" style="border: 2px dotted #4267b2">
                    <a href="https://api.whatsapp.com/send?text=https://mfpower.in/Register.aspx?ReferCode=<%=code %> " target="_blank" data-action="share/whatsapp/share">Share Refer Link via Whatsapp </a>

                </div>
                <br />
                <br />
                <br />
                <div class="col-12" style="margin-top:5px;"> 
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="false"></asp:Label>
                    <asp:Button ID="referbutton" runat="server" class="btn btn-success" OnClick="referbutton_Click" Text="Share Refer Code via Email" />

                </div>
                <div class="col-sm-3">

                    <a href="MyOrder.aspx">
                        <div style="border: solid 2px #17a9fc; margin-top: 5px">
                            <br />
                            <h4>Order list</h4>
                            <br />
                        </div>
                    </a>

                </div>
                <div class="col-sm-3">

                    <a href="MyOrder.aspx">
                        <div style="border: solid 2px #17a9fc; margin-top: 5px">
                            <br />
                            <h4>Cancelled Order list</h4>
                            <br />
                        </div>
                    </a>

                </div>


                <div class="col-sm-3">

                    <a href="AccountDetails.aspx">
                        <div style="border: solid 2px #17a9fc; margin-top: 5px">
                            <br />
                            <h4>Profile</h4>
                            <br />
                        </div>
                    </a>

                </div>
                <div class="col-sm-3">


                    <div style="border: solid 2px #17a9fc; margin-top: 5px">
                        <br />
                        <h4>Refer Code Is:  <b>
                            <asp:Label ID="lblpoint" runat="server" Text="Label"></asp:Label></b></h4>
                        <br />
                    </div>


                </div>
                <div class="col-sm-3">

                    <a href="Wallet.aspx">
                        <div style="border: solid 2px #17a9fc; margin-top: 5px">
                            <br />
                            <h4>Wallet</h4>
                            <br />
                        </div>
                    </a>

                </div>


                <div class="col-sm-3">

                    <a href="LogOut.aspx">
                        <div style="border: solid 2px #17a9fc; margin-top: 5px">
                            <br />
                            <h4>Logout</h4>
                            <br />
                        </div>
                    </a>

                </div>
                <div class="col-sm-3">
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
</asp:Content>

