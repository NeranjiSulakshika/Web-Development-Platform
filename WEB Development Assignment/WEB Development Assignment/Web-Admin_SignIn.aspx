<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web-Admin_SignIn.aspx.cs" Inherits="WEB_Assignment___Agriculture.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Admin Sign In</title>
    <link href="StyleSheet_SignIn.css" rel="stylesheet" />
</head>
<body>
    <div class ="SignUpBox">
        &nbsp;<h2>Web Admin </h2>
        <h2>Sign In</h2>
        <form runat ="server" style="height: 538px; width: 402px">
            
            

            <asp:Label Text="Password" CssClass="lblPassword" runat="server" />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="Enter Password" TextMode="Password" ID="txtpass"/>
            &nbsp; 

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <br />

            <asp:Button Text="Sign In" CssClass="btnSubmit" runat="server" OnClick="Unnamed5_Click" />

            <br />

            <br />
            

        </form>
    </div>
</body>
</html>
