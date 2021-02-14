<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="WEB_Development_Assignment.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>

    <!--Style Sheets -->
    <link href="StyleSheet_Nav.css" rel="stylesheet" />    
    <link href="StyleSheet_Report.css" rel="stylesheet" />

    <!-- Links related to the google map -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" 
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCuOXS1TgOF-g9OXZJOw3pfNQp7TA-Jw4&callback=farmerMap"></script>

    <script type="text/javascript">
        function initialize() {
            // Creating map object
            var map = new google.maps.Map(document.getElementById('map_canvas'), {
                zoom: 12,
                center: new google.maps.LatLng(6.931970, 79.857750),
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });

            // creates a draggable marker to the given coordinates
            var vMarker = new google.maps.Marker({
                position: new google.maps.LatLng(6.931970, 79.857750),
                draggable: true
            });

            // adds a listener to the marker
            // gets the coordinate when drag event ends
            // then updates the input with the new coordinates
            google.maps.event.addListener(vMarker, 'dragend', function (evt) {
                $("#txtLat").val(evt.latLng.lat().toFixed(6));
                $("#txtLng").val(evt.latLng.lng().toFixed(6));

                map.panTo(evt.latLng);
            });

            // centers the map on markers coordinate
            map.setCenter(vMarker.position);

            // adds the marker on the map
            vMarker.setMap(map);
        }
    </script>
    <style type="text/css">
        .auto-style2 {
            left: 13%;
            position: absolute;
            top: 358px;
            height: 98px;
            width: 260px;
            margin-right: 0px;
        }
        .auto-style3 {
            left: 62%;
            position: absolute;
            top: 357px;
            height: 104px;
            right: 100px;
            width: 260px;
        }
    </style>
</head>

<body onload="initialize();">
    <form id="form1" runat="server">

        <!-- Add the Navigation Bar -->
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
                    <a href="ContactUs(Farmer).aspx">Contact Us</a>
                </li>
                <li>
                    <a href="Default.aspx">Sign Out</a>
                </li>
            </ul>
	    </nav>

                <!-- Create the report form -->
                <div class="ReportBox">

                    <!-- Heading -->
                <h1>REPORT</h1><br />

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <!-- When the report submited successfully, display this message. -->
                    <asp:Label Text="Your report submitted successfully!" CssClass="lblSuccess" runat="server" ID="lblSuccess"/><br />
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <!-- Display an error messages, when the text boxes empty. -->
                    <asp:Label Text="Please input all details!" CssClass="lblError" runat="server" ID="lblError"/><br />

                    <!-- Input NIC with Validation -->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNIC" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNIC" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="([0-9]{9}[x|X|v|V]|[0-9]{12})">Invalid NIC number</asp:RegularExpressionValidator>
                    <br /><br />                                        
                    <asp:Label Text="NIC" CssClass="lblNIC" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                    
                    <asp:TextBox runat="server" CssClass="txtNIC" placeholder="     Enter NIC" ID="txtNIC"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <!-- Insert Farm Name -->
                    <asp:Label Text="Farm Name" CssClass="lblName" runat="server" />&nbsp;
                    <asp:TextBox runat="server" CssClass="txtName" placeholder="     Enter Farm Name" ID="txtName" /><br /><br /><br />

                    <!-- Insert the Crop Type -->
                    <asp:Label Text="Crop Type" CssClass="lblCropType" runat="server" />&nbsp;
                    <asp:TextBox runat="server" CssClass="txtCropType" placeholder="    Enter Crop Type" ID="txtCropType" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <!-- Brows an Image related to the Crop Type. -->
                    <asp:Label Text="Image" CssClass="lblImage" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="ImageUpload" runat="server" CssClass="ImageUpload" OnClick="ImageUpload_Click"/><br /><br /><br />

                    <!-- Insert Crop Harvested date (Mfg) -->
                    <asp:Label Text="Crop Mfg" CssClass="lblMFG" runat="server" />&nbsp;&nbsp;
                    <asp:TextBox runat="server" CssClass="txtMFG" placeholder="    Add MFG" ID="txtMFG"/>&nbsp;&nbsp;&nbsp;
                    
                    <!-- Mfg Calendar Button -->
                    <asp:ImageButton ID="ImageButtonMFG" runat="server" ImageUrl="https://img.icons8.com/color/48/000000/calendar.png" ImageAlign="AbsBottom" OnClick="ImageButtonMFG_Click" Height="30px" Width="30px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <!-- Insert Crop Harvest expiry date (Exp) -->
                    <asp:Label Text="Crop Exp" CssClass="lblEXP" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" CssClass="txtEXP" placeholder="    Add EXP" ID="txtEXP" />

                    <!-- Exp Calendar Button -->
                    <asp:ImageButton ID="ImageButtonEXP" runat="server" ImageUrl="https://img.icons8.com/color/48/000000/calendar.png" ImageAlign="AbsBottom" OnClick="ImageButtonEXP_Click" Height="30px" Width="30px"/>
                    
                    <!-- Mfg Calendar -->
                    <asp:Calendar Text="MFG" CssClass="auto-style2" runat="server" ID="CalendarMFG" OnSelectionChanged="CalendarMFG_SelectionChanged" SelectedDate="12/22/2020 19:44:32" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" CellPadding="4" DayNameFormat="Shortest">
                        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    
                        <!-- Exp Calendar -->
                        <asp:Calendar Text="EXP" CssClass="auto-style3" runat="server" ID="CalendarEXP" OnSelectionChanged="CalendarEXP_SelectionChanged" SelectedDate="12/22/2020 19:44:32" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" CellPadding="4" DayNameFormat="Shortest">
                        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                            <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <br /><br /><br /><br />
                    <asp:Label Text="Location" CssClass="lblLocation" runat="server" />
                                        
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <!-- Automatically generate the latitude, when the map marker position is changed. -->
                    <asp:Label Text="Latitude" CssClass="lbllatitude" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" CssClass="txtLat" value="6.931970" ID="txtLat" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <!-- Automatically generate the longitude, when the map marker position is changed. -->
                    <asp:Label Text="Longitude" CssClass="lblLongitude" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" CssClass="txtLng" value="79.857750" ID="txtLng" />
                    
                    <!-- Google Map -->
                    <br /><br /><br />
                    <div id="map_canvas" style="width: auto; height: 400px;">
                    </div>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <!-- Submit Button -->
                    <asp:Button Text="Submit" CssClass="btnSubmit" runat="server" OnClick="btnSubmit_Click" ID="btnSubmit" Width="300px" />     
                    
                  </div>
                    
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    </form>
</body>
</html>
