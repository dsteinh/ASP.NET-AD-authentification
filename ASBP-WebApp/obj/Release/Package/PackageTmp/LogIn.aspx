<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ASBP_WebApp.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoginApp</title>
   
  <style>
body {
    text-align:center;
    
}



#lblError {
    color: red;
}


     

      </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table >
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password" ></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style1">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" OnClientClick="BtnLogin_Click" /></td>
                </tr>

                  <tr>
                    <td></td>
                    <td class="auto-style1">
                        <asp:Label ID="lblError" runat="server" Text="Wrong username or password!"></asp:Label></td>
                </tr>
            </table>

            <table>
                <tr>
<td>
                        <asp:Label ID="Label3" runat="server" Text="Users in domain:"></asp:Label></td>

                    
                </tr>
                <tr>
                    
                    <td>
                        <asp:ListBox ID="listBox" runat="server"></asp:ListBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
