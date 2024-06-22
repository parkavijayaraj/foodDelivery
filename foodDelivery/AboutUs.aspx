<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="foodDelivery.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Foodie</title>
    <style>
        #footer {
            position: relative;
            padding: 10px 10px 0px 10px;
            bottom: 0;
            width: 100%;
            height: 40px;
            background: black;
            color: white;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
            font-family: arial;
        }

        .topnav {
            overflow: hidden;
            background-color: black;
        }

        .price {
            color: grey;
            font-size: 22px;
        }

        .card button {
            border: none;
            outline: 0;
            padding: 12px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
        }
        .margin{
            background-color: lightgrey;
  width: 300px;
  border: 2px solid green;
  padding: 40px;
  margin: 20px;
        }

            .card button:hover {
                opacity: 0.7;
            }

        .auto-style2 {
            width: 90%;
        }
        .auto-style7 {
            width: 969px;
        }
        .auto-style11 {
            width: 667px;
            height: 58px;
        }
        .auto-style12 {
            width: 713px;
        }
      .label-hover-zoom {
            transition: transform 0.3s ease, color 0.3s ease;
        }
      .design{
          color:white;
      }

        .auto-style13 {
            height: 92px;
        }

        .auto-style14 {
            margin-top: 3px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="font-size: x-large">
         <div style="background-color: #000000; text-align: left;" class="auto-style13">
              
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
<asp:Image ID="Image1" runat="server" Height="61px" ImageUrl="~/images/logo11.jpg" Width="106px" CssClass="auto-style14" />                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" CssClass="design" runat="server" NavigateUrl="~/MenuList.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">Menu</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:HyperLink ID="HyperLink3" CssClass="design" runat="server" NavigateUrl="~/AboutUs.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">AboutUs</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink4" CssClass="design" runat="server" NavigateUrl="~/ContactUs.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">ContactUs</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:HyperLink ID="HyperLink1" CssClass="design" runat="server" NavigateUrl="~/UserLogin.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">LogOut</asp:HyperLink>

            </div>
            <div>
                <h5 class="auto-style11" style="font-size: medium">Our mission is to elevate the quality of life for the urban consumer with unparalleled convenience. Convenience is what makes us tick. It's what makes us get out of bed and say, "Let's do this."
                </h5>
            </div>
            <div>
               
               <h2>What’s In Store For The Future?</h2> 
<h6 class="auto-style12" style="font-size: medium">Swiggy has grand plans to be India’s most loved hyperlocal player. It aims to be the most accessible platform on the network - reimagining the meaning of convenience in the country through a variety of service offerings.</h6>
            </div>
            <div align="center">


                <table class="auto-style2">
                    <tr>
                        <td class="auto-style7">
                            <h1>Changing<br /> the game</h1>
                        &nbsp;</td>
                        <td class="margin">
                            <asp:Label ID="Label2" runat="server" Text="150000+ Restaurant Partners Countrywide"></asp:Label>
                        </td>
                        <td class="margin">
                            <asp:Label ID="Label3" runat="server" Text="5000+ Employees across the Country"></asp:Label>
                        </td>
                         <td class="margin">
                            <asp:Label ID="Label4" runat="server" Text="2600000+ Executives"></asp:Label>
                        </td>
                         <td class="margin">
                            <asp:Label ID="Label5" runat="server" Text="103+ Pan India"></asp:Label>
                        </td>
                    </tr>
                </table>


            </div>
            <br />
            <div id="footer">
                © 2024 food delivery website...
                
                 <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AboutUs.aspx">Back to Top</asp:HyperLink>

            </div>
        </div>
    </form>
</body>
</html>
