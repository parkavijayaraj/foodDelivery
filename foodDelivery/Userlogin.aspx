<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userlogin.aspx.cs" Inherits="Userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Foodie</title>
    <style type="text/css">
                
/* On mouse-over, add a deeper shadow */

     /*.card {*/
         
   /*Add shadows to create the "card" effect */
 /*box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
 
}*/

/* On mouse-over, add a deeper shadow */
/*.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}*/

/* Add some padding inside the card container */
/*.container {
  padding: 2px 16px;
}*/
        .auto-style6 {
            height: 672px;
            width: 1163px;
        }
        .auto-style11 {
            width: 100%;
            height: 575px;
        }
        .auto-style12 {
            width: 563px;
        }
        .auto-style13 {
            width: 234px;
        }
        .auto-style14 {
            width: 2%;
        }
        .auto-style17 {
            width: 100%;
            height: 39px;
        }
        .auto-style18 {
            width: 234px;
            height: 39px;
        }
        .auto-style19 {
            width: 2%;
            height: 39px;
        }
        .auto-style22 {
            height: 53px;
        }
        .auto-style23 {
            width: 234px;
            height: 53px;
        }
        .auto-style24 {
            width: 2%;
            height: 53px;
        }
        .auto-style25 {
            width: 234px;
            height: 52px;
        }
        .auto-style26 {
            width: 2%;
            height: 52px;
        }
        .auto-style27 {
            height: 52px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server"  class="auto-style6">
        <div align="center" >

                 
            <div class="card">
                <div class="container">
            
                    <table class="auto-style11">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style12">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Limg.jpg" />
                            </td>
                            <td><table class="auto-style1" style="text-align: right">
            <tr >
                <td class="auto-style25" style="text-align: right">&nbsp;&nbsp;
                    <asp:Label ID="lbltext" runat="server" Font-Bold="True" Font-Size="20px" Text="Username:" Font-Italic="True" ForeColor="#7D040E"></asp:Label>
                </td>
                <td style="text-align: center" class="auto-style26"></td>
                <td style="text-align: left" class="auto-style27">
                    <br />
                    <asp:TextBox ID="txtuser" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="the field should not be empty" ForeColor="Red" ControlToValidate="txtuser" SetFocusOnError="True">name shouldn&#39;t be empty</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr >
                <td class="auto-style23" style="text-align: right">
                    <asp:Label ID="lblpassword" runat="server" Font-Bold="True" Font-Size="20px" Text="Password:" Font-Italic="True" ForeColor="#7D040E"></asp:Label>
                </td>
                <td style="text-align: center" class="auto-style24"></td>
                <td style="text-align: left" class="auto-style22">
                    <asp:TextBox ID="txtpass" runat="server" Height="15px" ></asp:TextBox>&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="password should not be empty" ForeColor="Red">password should not be empty</asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                </td>
                <td class="auto-style19">
                </td>
                <td class="auto-style17" style="text-align: left">
                    <asp:HyperLink ID="HyperLink4" runat="server" BorderStyle="None" Font-Strikeout="False" Font-Underline="True" ForeColor="#3333CC" NavigateUrl="~/Forgetpass.aspx">Forget Password</asp:HyperLink>

                </td>
            </tr>
             <tr>
                     <td class="auto-style13" style="text-align: right">
                         <asp:Button ID="Button1" runat="server" BackColor="#008241" Text="Signin" ForeColor="White" OnClick="Button1_Click" Height="37px" Width="75px"  />
                     </td>
                     <td style="text-align: center" class="auto-style14"></td>
                     <td style="text-align: left" class="auto-style5">
                         <asp:HyperLink ID="HyperLink1" runat="server" BorderStyle="None" Font-Strikeout="False" Font-Underline="True" ForeColor="#3333CC" NavigateUrl="~/Registration.aspx">New User? Register here..</asp:HyperLink>
                     </td>
                 </tr>
            
        </table>&nbsp;</td>
                        </tr>
                    </table>
            
                    </div>
                </div>
        </div>
    </form>
</body>
</html>
