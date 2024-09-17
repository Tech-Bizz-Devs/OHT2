<%@ Page Language="C#" AutoEventWireup="true" CodeFile="websider.aspx.cs" Inherits="websider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active" ></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
      <li data-target="#myCarousel" data-slide-to="2" ></li>
         <li data-target="#myCarousel" data-slide-to="3" ></li>
         <li data-target="#myCarousel" data-slide-to="4" ></li>
         <li data-target="#myCarousel" data-slide-to="5" ></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/product/<%=img1 %>" style="width:100%;"/>
    
      </div>

      <div class="item">
          <img src="img/product/<%=img2 %>" style="width:100%;"/>
       
      </div>
    
      <div class="item">
        <img src="img/product/<%=img3 %>" style="width:100%;"/>
       
      </div>
   <div class="item">
        <img src="img/product/<%=img4 %>" style="width:100%;"/>
       
      </div>
         <div class="item">
        <img src="img/product/<%=img5 %>" style="width:100%;"/>
       
      </div>
         <div class="item">
        <img src="img/product/<%=img6 %>" style="width:100%;"/>
       
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev" style=" background-image:none !important; filter:none !important;"> 
      <span class="glyphicon glyphicon-chevron-left" style="text-decoration:none"></span>
   
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next" style=" background-image:none !important;   filter:none !important;">
      <span class="glyphicon glyphicon-chevron-right" style="text-decoration:none"></span>
    </a>
  </div>
    </form>
</body>
</html>
