<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WEB_Assignment___Agriculture.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link href="StyleSheet_SignIn.css" rel="stylesheet" />
</head>
<body>
    <div class ="SignUpBox">
        &nbsp;<h2>Sign In</h2>
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

            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SignUp.aspx">Not Registered? Sign Up</asp:HyperLink>
           
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DoA_Keels_SignIn.aspx">Sign In as Keels Or DOA Member</asp:HyperLink>
            

            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ContactUs.aspx">Recover Password</asp:HyperLink>
            

        </form>
    </div>
</body>
</html>
