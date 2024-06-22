<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminForgetPassword.aspx.cs" Inherits="AdminForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Foodie</title>
    <style>.card {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  
}

/* On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.container {
  padding: 2px 16px;
   padding: 2px 16px;
            background-color: darkgray;
             border-radius: 50px;
            height: 322px;
            margin-top: 0px;
}
        .auto-style1 {
            height: 318px;
        }
        .auto-style2 {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <div class="card">
  <div class="container">
             <table class="auto-style1">
              <tr>
                <td class="auto-style3" style="text-align: right">&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15px" Text="AdminName:"></asp:Label>
                </td>
                <td style="text-align: center" class="auto-style11"></td>
                <td style="text-align: left" class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                       
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">&nbsp;&nbsp;
                    <asp:Label ID="lbltext" runat="server" Font-Bold="True" Font-Size="15px" Text="Old Password:"></asp:Label>
                </td>
                <td style="text-align: center" class="auto-style11"></td>
                <td style="text-align: left" class="auto-style4">
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusername" ErrorMessage="enter your old password" ForeColor="Red">enter your old password</asp:RequiredFieldValidator>
                </td>
            </tr>
                  <tr>
                <td class="auto-style3" style="text-align: right">&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15px" Text="New Password:"></asp:Label>
                </td>
                <td style="text-align: center" class="auto-style11"></td>
                <td style="text-align: left" class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter your new password" ForeColor="Red">enter your new password</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
               <td class="auto-style2" style="text-align: center" colspan="3">
                         <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
                         <br />
                         <asp:Button ID="Button1" runat="server" BackColor="#00FF99" Text="Submit" OnClick="Button1_Click"  />
                     </td>
           </tr>


        </table>
      </div>
                </div>
        </div>
    </form>
</body>
</html>
