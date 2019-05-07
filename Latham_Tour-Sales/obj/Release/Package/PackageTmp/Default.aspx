<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Latham_Tour_Sales.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title>Ski Touring Adventures Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css" media="screen"/>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
  
<body>
<form id="form1" runat="server">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"><img src="Images/ULTIMATE SKI TOURING ADVENTURES.png" height="85"/></a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="Default.aspx" style="font-size: x-large">Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="Book.aspx" style="font-size: x-large">Book<span class="sr-only">(current)</span></a>
            </li>            
            <li class="nav-item active">
                <a class="nav-link" href="AboutUs.aspx" style="font-size: x-large">About<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<div class="jumbotron text-center">
<div class="bd-example">
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" data-interval="3000">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>  
        <div class="carousel-inner">
         <div class="carousel-item active">
            <img src="Images/0118-ski-peak-lift-line_s.jpg" class="img-fluid" alt="Long Ski Lines"/>
            <div class="carousel-caption d-none d-md-block">
                <h5>Hate Waiting in Long Lift Lines?</h5>
            </div>
          </div>
        <div class="carousel-item">
            <img src="Images/ski-powder_s.jpg" class="img-fluid" alt="Ski Powder"/>
            <div class="carousel-caption d-none d-md-block">
                <h5>Love to Ski Powder?</h5>
            </div>
        </div>
        <div class="carousel-item">
            <img src="Images/ski-guides_s.jpg" class="img-fluid" alt="Ski Guides"/>
            <div class="carousel-caption d-none d-md-block">
                <h5>Book with Us!</h5>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
       </div>
    </div>
</div>
</div>

<div class="jumbotron text-center">
    <h1 style="font-size: xx-large">Welcome to Adventure</h1>
    <p style="font-size: large">Book a backcountry ski tour and take your ordinary life to extraordinary...</p>
    <p>
       <a href="Book.aspx" type="button" class="btn btn-primary">Book Now!</a>
    </p>
    <img src="Images/range3.jpeg" class="img-fluid" alt="Responsive Image"/>
</div>

</form>
<footer>
    <small>Copyright © 2019 Ryan Latham</small>
</footer>
</body>
</html>
