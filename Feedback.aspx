<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
    <style type="text/css">
        .auto-style1 {
            width: 41%;
            height: 333px;
        }
        .auto-style3 {
            width: 124px;
        }
        .auto-style4 {
            width: 1694px;
        }
        .auto-style7 {
            width: 124px;
            height: 53px;
        }
        .auto-style8 {
            width: 1694px;
            height: 53px;
        }
        .auto-style9 {
            height: 687px;
        }
        .auto-style10 {
            width: 1024px;
        }
        .auto-style11 {
            width: 1024px;
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style9" style="background-image: url('images/b1.jpg'); background-repeat: no-repeat;background-size:cover; text-align: left;">
        <div align="center">

            <table class="auto-style1">
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="#FFCC00" Text="FEEDBACK" BackColor="Black"></asp:Label>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align: right">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#FFCC00" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4" style="text-align: left">
                        <asp:TextBox ID="txtname" runat="server"  Height="25px" Width="200px" placeholder="Enter Your Name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#FFCC00" Text="EmailId"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8" style="text-align: left">
                        <asp:TextBox ID="txtemail" runat="server" Width="193px">sivasankaric2022@gmail.com</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#FFCC00" Text="Subject"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8" style="text-align: left">
                        <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align: right">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#FFCC00" Text="Comments"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4" style="text-align: left">
                        <asp:TextBox ID="txtcomment" runat="server" Height="46px" Width="177px" placeholder="Eg:Very Good ,Average.,"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align: right">
                        <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" Font-Bold="True" Font-Size="11pt" Text="BACK" OnClick="Button2_Click" BorderColor="#FFCC00" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4" style="text-align: left">
                        <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" Font-Bold="True" Font-Size="11pt" OnClick="Button1_Click" Text="SUBMIT" BorderColor="#FF9933" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblStatus" runat="server" ForeColor="Aqua"></asp:Label>

                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>