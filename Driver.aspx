<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Driver.aspx.cs" Inherits="Driver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
        }
        .auto-style3 {
            height: 40px;
            width: 30px;
        }
        .auto-style4 {
            width: 30px;
        }
    </style>
</head>
<body>
      <form id="form1" runat="server">
        <div align="center">

            <table class="auto-style1">
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" Text="DRIVER DETAILS"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">
                        <asp:Label ID="Lblname" runat="server" Text="Driver Name"></asp:Label>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style2" style="text-align: left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="Lblnumber" runat="server" Text="Contact Number"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="Lblemail" runat="server" Text="Email ID"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="Lblid" runat="server" Text="Driver ID"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="Lbllocation" runat="server" Text="Location"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="Btndone" runat="server" Font-Bold="True" Text="DONE" OnClick="Btndone_Click" style="height: 29px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>