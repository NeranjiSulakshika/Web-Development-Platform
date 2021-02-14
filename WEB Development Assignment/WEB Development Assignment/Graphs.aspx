<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graphs.aspx.cs" Inherits="WEB_Development_Assignment.Graphs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Graph</title>

    <link href="StyleSheet_Nav.css" rel="stylesheet" />
  <link href="StyleSheet_Graphs.css" rel="stylesheet" />
    </head>

    <body>
        <nav class="mynav">
          <ul>
                <li>
                    <a href="Home(DoA_Keels).aspx">Home</a>
                </li>
                <li>
                    <a href="AboutUs.aspx">About us</a>
                </li>
                <li>
                    <a href="Store.aspx">Store</a>
                </li>  
                <li>
                    <a href="Report_View.aspx">Reports View</a>
                </li>              
                <li>
                    <a href="Graphs.aspx">Graphs</a>
                </li>
                <li>
                    <a href="ContactUs.aspx">Contact us</a>
                </li>    
                <li>
                    <a href="Default.aspx">Sign Out</a>
                </li>
            </ul>
	    </nav>
  
  <h1><u>Agriculture Economic Data</u></h1>


  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Fruits',     25],
          ['Vegetables', 25],
          
        ]);

        var options = {
          title: 'Analysis of Types of Products'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>



   <script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Element", "Quantity", { role: "style" } ],
        ["Types of Products", 50, "blue"],
        ["Locations",190 , "purple"],
        ["Successful Transactions", 146, "gold"],
        ["Wasted Harvests", 42, "color: #FFA500"],
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Quantity",
        width: 900,
        height: 400,
        bar: {groupWidth: "75%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
      chart.draw(view, options);
  }
  </script>
  <h2>Data</h2>

     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Nuwara Eliya',     82],
          ['Ambewela',      38],
          ['Matara',     10],
          ['Kurunegala',     30],
          ['Hambantota',     30],
          
        ]);

        var options = {
          title: 'Analysis of Locations Most Farmers Reside'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

        chart.draw(data, options);
      }
    </script>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Pending',     54],
          ['Successful',  146],
          
        ]);

        var options = {
          title: 'Analysis of Successful Transactions'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart3'));

        chart.draw(data, options);
      }
    </script>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Fruits Wasted',   25],
          ['Vegetables Wasted',  17],
          ['Unwasted Harvests',    157],
          
        ]);

        var options = {
          title: 'Analysis of Wasted Harvests'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart4'));

        chart.draw(data, options);
      }
    </script>







<div id="barchart_values" style="width: 500px; height: 300px; margin-left: 20%;"></div>
<br /> <br /> <br /> <br />
<h3>Data Analysis</h3>
<div id="piechart" style="width: 900px; height: 500px; margin-left: 20%; margin-top: 5%;"></div>
<div id="piechart2" style="width: 900px; height: 500px; margin-left: 20%"></div>
<div id="piechart3" style="width: 900px; height: 500px; margin-left: 20%"></div>
<div id="piechart4" style="width: 900px; height: 500px; margin-left: 20%"></div>


</body>
</html>

