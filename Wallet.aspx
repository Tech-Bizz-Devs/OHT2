<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Wallet.aspx.cs" Inherits="Wallet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <br /><br /><br />

    <div class="product-section section mt-30">

        <div class="container">
            <div class="row text-center">
                <div class="col-sm-2">
                  
                    <a href="myaccount.aspx">
                        <div style="border:solid 2px #4267b2"> 
                        <h4>Back</h4> 
                    </div>
                    </a>
                  
                </div>
                 
                <div class="col-sm-4">
                  
                   
                  
                </div>

                <div class="col-sm-6">
                  
                  
                </div>

                 <div class="col-sm-12">
                       <h4 class="mb-4">Total Point : <asp:Label ID="lblpoint" runat="server" Text="Label"></asp:Label></h4>
                  <h4 class="mb-4">Wallet History List</h4>
<div class="card transaction-table mb-0">
<div class="card-body">
<div class="table-responsive">
<table class="table table-center mb-0">
<thead>
<tr>
<th>S.No</th>
<th>Date</th>
<th>Remark</th>

</tr>
                      
</thead>

    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>

      
<tbody>
<tr>
 <td><%#Container.DataItemIndex+1%> </td>
<td><%# Eval("rts") %></td>
<td><%# Eval("Remark") %></td>

</tr>

</tbody>
      </ItemTemplate>
    </asp:ListView>

</table>
</div>
</div>
</div>
                  
                </div>
            </div>
        </div>
    </div>
</asp:Content>

