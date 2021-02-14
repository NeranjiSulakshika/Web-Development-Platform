<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report_View.aspx.cs" Inherits="WEB_Development_Assignment.Report_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang ="en">
<head runat="server">
    
    <link href="StyleSheet_Nav.css" rel="stylesheet" />

    <title>Report View</title>

	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/googlemap.js"></script>
	<style type="text/css">
		.container {
			height: 450px;
		}
		#map {
			width: 100%;
			height: 100%;
			border: 1px solid blue;
		}
		#data, #allData {
			display: none;
		}
	</style>
</head>

<body>

         <form runat="server">

         <nav class="mynav">
            <ul>
    <li>
      <a href="Home(DoA_Keels).aspx">Home</a>
    </li>
    <li>
      <a href="AboutUs(DoA_Keels).aspx">About us</a>
    </li>
    <li>
      <a href="Store(DoA_Keels).aspx">Store</a>
    </li>  
    <li>
      <a href="Report_View.aspx">Reports</a>
    </li>
     <li>
      <a href="Graphs.aspx">Graphs</a>
    </li>
    <li>
      <a href="ContactUs(DoA_Keels).aspx">Contact Us</a>
    </li>  
     <li>
      <a href="Default.aspx">Sign Out</a>
    </li>
            </ul>
	    </nav>
   
            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCt2DUw5njluDzXuF0qrnf5PxCqCUzLRV4&callback=initMap"></script>
<script type="text/javascript">
var markers = [
<asp:Repeater ID="rptMarkers" runat="server">
<ItemTemplate>
            {
            "title": '<%# Eval("F_House_Name") %>',
            "lat": '<%# Eval("Latitude") %>',
            "lng": '<%# Eval("Longitude") %>',
            "description": '<%# Eval("F_Crop_Type") %>'
        }
</ItemTemplate>
<SeparatorTemplate>
    ,
</SeparatorTemplate>
</asp:Repeater>
];
</script>
<script type="text/javascript">
    window.onload = function () {
        var mapOptions = {
            center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
            zoom: 20,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var infoWindow = new google.maps.InfoWindow();
        var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        for (i = 0; i < markers.length; i++) {
            var data = markers[i]
            var myLatlng = new google.maps.LatLng(data.lat, data.lng);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: data.title
            });
            (function (marker, data) {
                google.maps.event.addListener(marker, "click", function (e) {
                    infoWindow.setContent(data.description);
                    infoWindow.open(map, marker);
                });
            })(marker, data);
        }
    }
</script>
<div id="dvMap" style="width: 500px; height: 500px">
</div>


    </form>
</body>
</html>
