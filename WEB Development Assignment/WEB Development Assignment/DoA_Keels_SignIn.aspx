<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doalogin.aspx.cs" Inherits="WEB_Assignment___Agriculture.WebForm6" %>

<!DOCTYPE html>

<head runat="server">
    <title>DoA & Keels Staff Sign In</title>
    <link href="StyleSheet_SignIn.css" rel="stylesheet" />
</head>
<body>
    <div class ="SignUpBox">
        &nbsp;<h2>DoA & Keels Staff</h2>
        <h2>Sign In</h2>
        <form runat ="server" style="height: 538px; width: 402px">
            
            <asp:Label Text="NIC" CssClass="lblNIC" runat="server" />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="Enter NIC" ID="txtnic" />

            

            <asp:Label Text="Password" CssClass="lblPassword" runat="server" />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="Enter Password" TextMode="Password" ID="txtpass"/>
            &nbsp; 

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <br />

            <asp:Button Text="Sign In" CssClass="btnSubmit" runat="server" OnClick="Unnamed5_Click" />

            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Web-Admin_SignIn.aspx">Not Registered? Sign Up</asp:HyperLink>
            

            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ContactUs.aspx">Recover Password</asp:HyperLink>
            

        </form>
    </div>
</body>
</html>
