<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddFood.aspx.cs" Inherits="AddFood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Foodie</title>
    <style>
        body{
            background-image:url('images/addfoodback.jpg');
            background-repeat: no-repeat; 
            background-size: cover; 
            background-attachment: fixed;
        }
        .auto-style1 {
            height: 314px;
            width: 403px;
        }
        .auto-style2 {
            height: 36px;
        }
 
        .auto-style3 {
            padding: 2px 16px;
            background-color: darkgray;
            margin-top: 0px;
        }
        .auto-style4 {
            padding: 2px 16px;
            background-color: darkgray;
             border-radius: 50px;
            height: 322px;
            margin-top: 0px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 172px;
        }
        .auto-style8 {
            width: 173px;
        }
        .auto-style10 {
            width: 544px;
        }
        .auto-style11 {
            height: 36px;
            width: 544px;
        }
        .auto-style12 {
            width: 171px;
        }
        .auto-style14 {
            width: 34px;
        }
    </style>
</head>
<body style="width: 446px; margin-left: 470px; margin-top: 101px">
    <form id="form1" runat="server">
        <div align="center">
     <div class="card">
          <div class="auto-style4">
               <table class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="3" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20pt" ForeColor="#FF3300" Text="ADD MENU"></asp:Label>
                        <br />
                    </td>
                </tr>
                   
                <tr>
                    <td class="auto-style10" style="text-align: right">
                        <asp:Label ID="lblfoodname" runat="server" Text="Food Name:" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style6" style="text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                    <tr>
                    <td class="auto-style10" style="text-align: right">
                        <asp:Label ID="Label2" runat="server" Text="Food Image:" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style6" style="text-align: left">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align: right">
                        <asp:Label ID="Lbldescription" runat="server" Text="Food Description:" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style8" style="text-align: left">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align: right">
                        <asp:Label ID="Lblprice" runat="server" Text="Price:" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    </td>
                    <td></td>
                    <td class="auto-style12" style="text-align: left">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align: right">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" BackColor="#00CC99" BorderWidth="0px" CssClass="auto-style5" Font-Bold="True" Height="31px" Width="54px" />
                    </td>
                    <td></td>
                    <td class="auto-style14" style="text-align: left">
                        <asp:Button ID="btngo" runat="server" Text="Add" OnClick="btngo_Click" BackColor="#00B9B9" BorderWidth="0px" Font-Bold="True" Height="33px" Width="60px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style10">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td style="text-align: left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
               </div>
</div>
        </div>
  
    </form>
</body>
</html>
