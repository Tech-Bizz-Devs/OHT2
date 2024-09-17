<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webslider.aspx.cs" Inherits="webslider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      
<meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="m1.jpg" alt="mfpower" style="width:100%;"/>
        <div class="carousel-caption"><br />
          <h3>Keep Your Family Life Alive with us</h3>
         <p>We Introduce you family kit a hope of every family for happy moments & Feelings.</p>
        </div>
      </div>

      <div class="item">
        <img src="assets/images/slider/slider-2.jpg" alt="mfpower" style="width:100%;"/>
        <div class="carousel-caption"><br />
         <h3>Good Nutrition Improve Performance</h3>
								
	
        </div>
      </div>
    
      <div class="item">
        <img src="assets/images/slider/slider-3.jpg" alt="mfpower" style="width:100%;"/>
        <div class="carousel-caption"><br />
        <h3>Our Medicine is Secret of your Smile </h3>
									
	
        </div>
      </div>
  
         <div class="item">
        <img src="assets/images/slider/slider-4.jpg" alt="mfpower" style="width:100%;"/>
        <div class="carousel-caption"><br />
      	<h3>Our Medicine make you Stronger</h3>
					
	
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev" style=" background-image:none !important; filter:none !important;">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next" style=" background-image:none !important; filter:none !important;">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
    </form>
</body>
</html>
