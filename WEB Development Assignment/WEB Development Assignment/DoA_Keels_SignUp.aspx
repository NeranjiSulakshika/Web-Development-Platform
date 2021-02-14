<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoA_Keels_SignUp.aspx.cs" Inherits="WEB_Assignment___Agriculture.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DoA & Keels Staff Sign Up</title>
    <link href="StyleSheet_SignUp.css" rel="stylesheet" />
    <style type="text/css">


.btnsignup {
    font-size: 16px;
    font-weight: 700;
    text-decoration: none;
    color: black;
}

    </style>
</head>
<body>
    <div class ="SignUpBox">
        &nbsp;<h2>DoA & Keels Staff</h2>
        <h2>Sign Up</h2>
        <form runat ="server" style="height: 456px; width: 577px">
            <asp:Label Text="Name" CssClass="lblName" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox runat="server" CssClass="txtName" placeholder="Enter Name" ID="txtname" />

            <br />

            <asp:Label Text="Email" CssClass="lblEmail" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtmail" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid E mail ID</asp:RegularExpressionValidator>
            <br />
            <asp:TextBox runat="server" CssClass="txtEmail" placeholder="Enter Email" ID="txtmail"  />

            <br />

            <asp:Label Text="NIC" CssClass="lblNIC" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnic" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtnic" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="([0-9]{9}[x|X|v|V]|[0-9]{12})">Invalid NIC number</asp:RegularExpressionValidator>
            <br />
            <asp:TextBox runat="server" CssClass="txtNIC" placeholder="Enter NIC" ID="txtnic" />

            <br />

            <asp:Label Text="Organiziation Name" CssClass="lblFarmName" runat="server" />
            <br />
            <asp:DropDownList ID="orgdrop" runat="server" Width="124px">
                <asp:ListItem>Keels</asp:ListItem>
                <asp:ListItem>DOA</asp:ListItem>
            </asp:DropDownList>

            <br />

            <asp:Label Text="Password" CssClass="lblPassword" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpass" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="Enter Password" ID="txtpass" TextMode="Password" />

             <br />

             <asp:Label Text="Re Enter Password" CssClass="lblPassword" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtrepass" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtrepass" Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="Red" SetFocusOnError="True">Password Does not match</asp:CompareValidator>
            <br />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="Re Enter Password" ID="txtrepass" TextMode="Password" />
         
            <br />

            <br />

            <asp:Button Text="Sign Up" CssClass="btnSubmit" runat="server" ID="signbtn" OnClick="signbtn_Click" />


        </form>
    </div>
        &nbsp;

</body>
</html>
