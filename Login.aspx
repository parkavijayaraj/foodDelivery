<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="foodDelivery.Login" %>

<!DOCTYPE html>
<script runat="server">
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 334px;
        }
        .auto-style3 {
            height: 28px;
        }
        .auto-style4 {
            height: 622px;
            margin-bottom: 0px;
            background-repeat:no-repeat;
            background-size:cover;
        }
        .auto-style5 {
            height: 60px;
        }
        .auto-style9 {
            height: 60px;
            width: 183px;
        }
        .auto-style10 {
            height: 28px;
            width: 183px;
        }
         
        .auto-style11 {
            height: 27px;
        }
        .auto-style12 {
            height: 63px;
            width: 183px;
        }
        .auto-style13 {
            height: 63px;
        }
         
        </style>
  
</head>
<body style="height: 447px">
   
            <form id="form2" class="auto-style4"  runat="server" onsubmit="return validateForm()" style="background-position: left top; background-image: url('food23.jpg'); background-color: #bf94cb; background-size:cover; background-repeat: no-repeat; background-attachment: fixed;">
        <div align="center">

       
        <table class="auto-style1">
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="75px" ForeColor="#FFFF64" Text="Food Delivery Website"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: right">&nbsp;&nbsp;
                    <asp:Label ID="lbltext" runat="server" Font-Bold="True" Font-Size="15px" Text="Username:"></asp:Label>
                </td>
                <td style="text-align: center" class="auto-style5"></td>
                <td style="text-align: left" class="auto-style5">
                    <asp:TextBox ID="txtuser" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="the field should not be empty" ForeColor="Red" ControlToValidate="txtusername" SetFocusOnError="True">name shouldn&#39;t be empty</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="text-align: right">
                    <asp:Label ID="lblpassword" runat="server" Font-Bold="True" Font-Size="15px" Text="Password:"></asp:Label>
                </td>
                <td style="text-align: center" class="auto-style3"></td>
                <td style="text-align: left" class="auto-style3">
                    <asp:TextBox ID="txtpass" runat="server" Height="15px" ></asp:TextBox>&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="password should not be empty" ForeColor="Red">password should not be empty</asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                </td>
                <td class="auto-style11">
                </td>
                <td class="auto-style11" style="text-align: left">
                    <asp:HyperLink ID="HyperLink4" runat="server" BorderStyle="None" Font-Strikeout="False" Font-Underline="True" ForeColor="#3333CC" NavigateUrl="~/forgotPassword.aspx">Forget Password</asp:HyperLink>

                </td>
            </tr>
             <tr>
                     <td class="auto-style12" style="text-align: right">
                         <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Text="Signin" BorderColor="#00CC00" ForeColor="White" OnClick="Button1_Click"  />
                     </td>
                     <td style="text-align: center" class="auto-style13"></td>
                     <td style="text-align: left" class="auto-style13">
                         <asp:HyperLink ID="HyperLink1" runat="server" BorderStyle="None" Font-Strikeout="False" Font-Underline="True" ForeColor="#3333CC" NavigateUrl="~/RegistrationForm.aspx">New User..</asp:HyperLink>
                     </td>
                 </tr>
            
        </table>
             </div>
    </form>
      
</body>
</html>
