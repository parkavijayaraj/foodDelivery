<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Foodweb.aspx.cs" Inherits="foodDelivery.Foodweb" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Foodie</title>
    <style type="text/css">
        .style{
         height:200px;
     }

        .card {
            /* Add shadows to create the "card" effect */
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;

        }

/* On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 20px 8px 16px 10px rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.container {
  padding: 2px 16px;
  box-shadow: 20px 8px 16px 10px rgba(0,0,0,0.2);
  width:150px;
  height:100px;
  background-color:beige;


}
    </style>
</head>
<body class="style" style="background-position: right top; background-image:url('/images/img098.jpg') ; background-repeat: no-repeat; background-size:cover"; class="auto-style1">
    
    <form id="form1" runat="server" >
        <div align="center" style="font-family: sans-serif; font-size: -1px;" class="card">
           
            &nbsp;&nbsp;&nbsp;
             <br />
            <br />
            <br />
             <br />
            <br />
            
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="50px" ForeColor="Yellow" Text="Food Delivery Website"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="card">
                <div class="container">
                    <br />
                    
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Userlogin.aspx" BorderStyle="Solid" BorderWidth="0px" Font-Bold="True" Font-Underline="False" ForeColor="#7D040E"  Font-Size="15pt">User Login</asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminLogin.aspx" Font-Bold="True" Font-Underline="False" ForeColor="#7D040E" BorderStyle="Solid" BorderWidth="0px" Font-Size="15pt">Admin Login</asp:HyperLink>
                   </div>
              </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20px" ForeColor="#FFFF66" Text="Thank you for choosing us🙏"></asp:Label>
        </div>
           
    </form>
</body>
</html>
