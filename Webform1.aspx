<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ValidationControlidpass.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <h2>User Registration Form</h2>

        <!-- User ID -->
        User ID:
        <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUserID" runat="server"
            ControlToValidate="txtUserID"
            ErrorMessage="User ID required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revUserID" runat="server"
            ControlToValidate="txtUserID"
            ValidationExpression="^(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{7,20}$"
            ErrorMessage="7-20 chars, 1 capital & 1 digit required"
            ForeColor="Red" />
        <br /><br />

        <!-- Name -->
        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Name required" ForeColor="Red" />
        <br /><br />

        <!-- Password -->
        Password:
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
            ControlToValidate="txtPassword"
            ErrorMessage="Password required" ForeColor="Red" />
        <br /><br />

        <!-- Confirm Password -->
        Confirm Password:
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvConfirm" runat="server"
            ControlToValidate="txtConfirm"
            ErrorMessage="Confirm password required" ForeColor="Red" />
        <asp:CompareValidator ID="cvPassword" runat="server"
            ControlToCompare="txtPassword"
            ControlToValidate="txtConfirm"
            ErrorMessage="Passwords do not match"
            ForeColor="Red" />
        <br /><br />

        <!-- Age -->
        Age:
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvAge" runat="server"
            ControlToValidate="txtAge"
            ErrorMessage="Age required" ForeColor="Red" />
        <asp:RangeValidator ID="rvAge" runat="server"
            ControlToValidate="txtAge"
            MinimumValue="21" MaximumValue="30"
            Type="Integer"
            ErrorMessage="Age must be between 21 and 30"
            ForeColor="Red" />
        <br /><br />

        <!-- Email -->
        Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revEmail" runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="\w+@\w+\.\w+"
            ErrorMessage="Invalid Email"
            ForeColor="Red" />
        <br /><br />

        <!-- Submit -->
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br /><br />

        <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>

        <div>
        </div>
    </form>
</body>
</html>
