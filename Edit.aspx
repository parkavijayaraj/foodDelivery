<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 372px;
            width: 373px;
        }
        .auto-style2 {
            height: 26px;
        }
          .auto-style4 {
            padding: 2px 16px;
            background-color: #FFFFED;
             border-radius: 50px;
            height: 322px;
            margin-top: 0px;
            width: 390px;
            margin-left: 135px;
        }
    </style>
</head>
<body  style="background-image: url('images/editfood1.jpeg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div align="center">
            <div class="card">
          <div class="auto-style4">
              <table class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="3" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20pt" ForeColor="Red" Text="EDIT MENU"></asp:Label>
                    </td>
                </tr>
                   
                <tr>
                    <td class="auto-style6" style="text-align: right">
                        <asp:Label ID="lblfoodname" runat="server" Text="Food Name:" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style6" style="text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                    <tr>
                    <td class="auto-style6" style="text-align: right">
                        <asp:Label ID="Label2" runat="server" Text="Food Image:" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style6" style="text-align: left">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="text-align: right">
                        <asp:Label ID="Lbldescription" runat="server" Text="Food Description:" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style8" style="text-align: left">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" style="text-align: right">
                        <asp:Label ID="Lblprice" runat="server" Text="Price:" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style12" style="text-align: left">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" style="text-align: right">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" BackColor="#8080C0" BorderWidth="0px" Font-Bold="True" Height="27px" Width="57px" />
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style14" style="text-align: left">
                        <asp:Button ID="btngo" runat="server" Text="Done" OnClick="btngo_Click" BackColor="#CCFF99" BorderWidth="0px" Font-Bold="True" Height="26px" Width="53px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td style="text-align: left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
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
