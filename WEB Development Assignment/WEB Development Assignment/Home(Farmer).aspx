<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home(Farmer).aspx.cs" Inherits="WEB_Assignment___Agriculture.Home_DoA_Keels_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <link rel="stylesheet" type="text/css" href="Today.css"/>
    <link href="StyleSheet_Template.css" rel="stylesheet" />
    <link href="StyleSheet_Nav.css" rel="stylesheet" />
  <title>Farmer Home</title>
  <style type="text/css">

 body {
  background-image: url('Images/home_background.jpg');
  background-size:cover;  
}
background-image {
  opacity: 20%;
}
.container{
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  width: 100%;
}
.container span{
  display: block;
}
.text1{
  color:rgb(104, 219, 33);
  font-size: 150px;
  font-weight: 1000;
  letter-spacing: 20px;
  margin-bottom: 20px;
  position: relative;
  animation: text 2s 1;
  fill-opacity: initial;
  background-color: lavender;
  text-shadow: 2px  black;
}

@keyframes text {
  0%{
    color: black;
    margin-bottom: -40px;
    opacity:50%;
  }
  30%{
    letter-spacing: 25px;
    margin-bottom: -40px;
  }
  85%{
    letter-spacing: 8px;
    margin-bottom: -40px;
  }
}
section{
  text-align:center;
}
html {
  box-sizing: border-box;
}
</style> 
</head>
<body>
<div class="container">
  <span class="text1">Keells Online Store</span>
</div>
<nav class="mynav">
    <ul>
        <li>
                <a href="Home(farmer).aspx">Home</a>
            </li>
            <li>
                <a href="AboutUs(Farmer).aspx">About us</a>
            </li>
            <li>
                <a href="Store(Farmer).aspx">Store</a>
            </li>
            <li>
                <a href="Report.aspx">Report</a>
            </li>
            <li>
                <a href="ContactUs(Farmer).aspx">Contact us</a>
            </li>
              <li>
                <a href="Default.aspx">Sign Out</a>
            </li>
    </ul>
</nav>
    </body>
</html>
