<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payments.aspx.cs" Inherits="Payments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 34px;
            height: 560px;
        }
        .auto-style2 {
            height: 68px;
        }
        .auto-style8 {
            height: 51px;
        }
        .auto-style15 {
            height: 51px;
            width: 28px;
        }
        .auto-style22 {
            height: 51px;
            width: 1134px;
        }
        .auto-style25 {
            height: 57px;
            width: 1134px;
        }
        .auto-style26 {
            height: 57px;
            width: 28px;
        }
        .auto-style27 {
            height: 57px;
        }
        .auto-style28 {
            height: 61px;
            width: 1134px;
        }
        .auto-style29 {
            height: 61px;
            width: 28px;
        }
        .auto-style30 {
            height: 61px;
        }
        .auto-style31 {
            height: 45px;
            width: 1134px;
        }
        .auto-style32 {
            height: 45px;
            width: 28px;
        }
        .auto-style33 {
            height: 45px;
        }
        .auto-style34 {
            height: 42px;
            width: 1134px;
        }
        .auto-style35 {
            height: 42px;
            width: 28px;
        }
        .auto-style36 {
            height: 42px;
        }
    </style>
    <script type="text/javascript">
        function handlePayModeChange() {
            var ddl = document.getElementById("<%= DropDownList1.ClientID %>");
            var selectedValue = ddl.value;
           
            var usernameRow = document.getElementById("usernameRow");
            var passwordRow = document.getElementById("passwordRow");
           
            if (selectedValue === "COD") {
                usernameRow.style.display = "none";
                passwordRow.style.display = "none";
            } else if (selectedValue === "ONLINE") {
                usernameRow.style.display = "table-row";
                passwordRow.style.display = "table-row";
            } else {
            }
        }

       
        window.onload = function () {
            var ddl = document.getElementById("<%= DropDownList1.ClientID %>");
            ddl.onchange = handlePayModeChange;
        };

    </script>
</head>
<body>
    <form id="form2" runat="server" style="background-image: url('payment.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
        <div align="center">

            <table class="auto-style1">
                <tr>
                    <td colspan="3" class="auto-style2" style="text-align: center">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#FFCC00" Font-Bold="True" Font-Size="20pt" NavigateUrl="~/Payment.aspx">PAYMENT DETAILS</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style34">
                        <asp:Label ID="Lblpaymentid" runat="server" Font-Bold="True" Text="PayMode" Font-Size="17pt" ForeColor="#FFCC00"></asp:Label>
                    </td>
                    <td class="auto-style35"></td>
                    <td style="text-align: left" class="auto-style36">
                        <asp:DropDownList ID="DropDownList1" runat="server" >
                            <asp:ListItem>--Select paymode--</asp:ListItem>
                            <asp:ListItem>COD</asp:ListItem>
                            <asp:ListItem>ONLINE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                            <tr>
                <td style="text-align: right" class="auto-style31">
                    <asp:Label ID="Lblamount" runat="server" Font-Bold="True" Text="Amount" Font-Size="17pt" ForeColor="#FFCC00"></asp:Label>
                </td>
                <td class="auto-style32"></td>
                <td style="text-align: left" class="auto-style33">
                    <asp:TextBox ID="txtamount" runat="server" Height="22px" Width="167px" BackColor="White" Placeholder="Your Total Amount"></asp:TextBox>
                </td>
            </tr>

                <tr id="usernameRow" style="display: none;">
                    <td style="text-align: right" class="auto-style22">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="#FFCC00" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style15"></td>
                    <td style="text-align: left" class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="166px" placeholder="Enter username or EmailId"></asp:TextBox>
                    </td>
                </tr>
                <tr id="passwordRow" style="display: none;">
                    <td class="auto-style25" style="text-align: right">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="#FFCC00" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style26"></td>
                    <td class="auto-style27" style="text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="171px" placeholder="Enter Your Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28" style="text-align: right">
                        <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" Font-Bold="True" Font-Size="16pt" OnClick="Button1_Click1" Text="Submit" />
                    </td>
                    <td class="auto-style29"></td>
                    <td class="auto-style30" style="text-align: left">
                        <asp:Button ID="Button2" runat="server" BackColor="#00CCFF" Font-Bold="True" Font-Size="16pt" OnClick="Button2_Click" Text="Back" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>



         
