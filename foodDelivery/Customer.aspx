<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script language="javascript">
        function f1(s, args) {
            if (args.value % 2 !== 0)
                args.Isvalid = false
            else
                args.Isvalid=true
        }
     </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 866px;
        }
        .auto-style3 {
            width: 20px;
        }
        .auto-style5 {
            height: 49px;
        }
        .auto-style6 {
            width: 20px;
            height: 49px;
        }
        .auto-style7 {
            height: 47px;
        }
        .auto-style8 {
            height: 46px;
        }
        .auto-style9 {
            width: 20px;
            height: 46px;
        }
        .auto-style10 {
            height: 53px;
        }
        .auto-style11 {
            width: 20px;
            height: 53px;
        }
        .auto-style12 {
            height: 43px;
        }
        .auto-style13 {
            width: 20px;
            height: 43px;
        }
        .auto-style14 {
            height: 50px;
        }
        .auto-style15 {
            width: 20px;
            height: 50px;
        }
        .auto-style16 {
            height: 49px;
            width: 165px;
        }
        .auto-style17 {
            height: 46px;
            width: 165px;
        }
        .auto-style18 {
            height: 53px;
            width: 165px;
        }
        .auto-style19 {
            height: 43px;
            width: 165px;
        }
        .auto-style20 {
            height: 50px;
            width: 165px;
        }
        .auto-style21 {
            width: 165px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('od1.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover;">
        <div align="center">


            <table class="auto-style1">
                <tr>
                    <td colspan="3" class="auto-style7" style="text-align: center">
                        <asp:Label runat="server" Text="Customer Details" Font-Bold="True" Font-Size="16pt" ForeColor="Black" BackColor="#FFCC00"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style16">
                        <asp:Label ID="Lblname" runat="server" Text="Name" Font-Bold="True" Font-Size="15pt" ForeColor="#FF9933"></asp:Label>
                    </td>
                    <td class="auto-style6"></td>
                    <td style="text-align: left" class="auto-style5">
                        <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" placeholder="Enter your Name" ErrorMessage="Name should not be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style17">
                        <asp:Label ID="Lblemail" runat="server" Text="Email Id" Font-Bold="True" Font-Size="15pt" ForeColor="#FF9933"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                    <td style="text-align: left" class="auto-style8">
                        <asp:TextBox ID="Txtemail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid EmailId" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter valid Emailid" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18" style="text-align: right">
                        <asp:Label ID="Lblnumber" runat="server" Text="Phone Number" Font-Bold="True" Font-Size="15pt" ForeColor="#FF9933"></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style10" style="text-align: left">
                        <asp:TextBox ID="txtnumber" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtnumber" ErrorMessage="Invalid Mobile Number" ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnumber" ErrorMessage="Enter valid Phone number" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style18">
                        <asp:Label ID="Lbladdress" runat="server" Text="Current Address" Font-Bold="True" Font-Size="15pt" ForeColor="#FF9933"></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                    <td style="text-align: left" class="auto-style10">
                        <asp:TextBox ID="Txtaddress" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style19">
                        <asp:Label ID="Lbltime" runat="server" Text="Preffered Time" Font-Bold="True" Font-Size="15pt" ForeColor="#FF9933"></asp:Label>
                    </td>
                    <td class="auto-style13"></td>
                    <td style="text-align: left" class="auto-style12">
                        <asp:TextBox ID="Txttime" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style9"></td>
                    <td style="text-align: left" class="auto-style8">
&nbsp;
                        </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style20">
                        <asp:Button ID="BtnPaynow" runat="server" OnClick="Btnsubmit_Click" Text="Pay Now" BackColor="#00CC99" Font-Bold="True" Font-Size="14pt" />
                    </td>
                    <td class="auto-style15"></td>
                    <td style="text-align: left" class="auto-style14">
                        <asp:Button ID="Btnreset" runat="server" OnClick="Btnreset_Click" Text="RESET" BackColor="#00CC99" Font-Bold="True" Font-Size="14pt" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#FFFF66" HeaderText="Please fill the all(*) fields" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>

