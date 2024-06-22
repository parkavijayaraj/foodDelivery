<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Foodie</title>
    <style type="text/css">
        .auto-style1 {
            height: 226px;
        }
        .auto-style7 {
            height: 67px;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style10 {
            height: 44px;
        }
        .auto-style11 {
            height: 39px;
        }
    </style>
</head>
<body style="  background-size: 1370px 630px;background-image: url('/images/Backgroundfood.jpeg');  background-repeat: no-repeat; height: 570px;">
    <form id="form1" runat="server">
        <div align="center">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
  <table class="auto-style1" style="border-style: inherit;  box-shadow: 5px 10px 8px 10px #888888; background-color: #EEE1B9">
            <tr>
                <td colspan="3" style="text-align: right" class="auto-style7">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="Admin Name:"></asp:Label>
                    &nbsp;<br />
                </td>
                 <td style="text-align: center" class="auto-style7"></td>
                <td style="text-align: left" class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style9" style="text-align: right">
                   <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
               &nbsp; </td>
                 <td style="text-align: center" class="auto-style9"></td>
                <td style="text-align: left" class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style10">
                </td>
                <td class="auto-style10">
                </td>
                <td class="auto-style10" style="text-align: left">
                    <asp:HyperLink ID="HyperLink4" runat="server" BorderStyle="None" Font-Strikeout="False" Font-Underline="True" ForeColor="#3333CC" NavigateUrl="~/AdminForgetPassword.aspx">Forget Password</asp:HyperLink>

                </td>
            </tr>
             <tr>
                     <td colspan="3" class="auto-style11" style="text-align: right">
                     </td>
                     <td style="text-align: center" class="auto-style11"></td>
                     <td style="text-align: left" class="auto-style11">
                         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#00CC99" ForeColor="White" /> &nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AdminRegistration.aspx">New Admin?Click here..</asp:HyperLink>

                     </td>
                 </tr>
            
        </table>
        </div>
    </form>
</body>
</html>
