<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuList.aspx.cs" Inherits="MenuList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Foodie</title>
    <style>
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
            height: 100px;
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
        .card button:hover {
            opacity: 0.7;
        }
        #footer {
            position: relative;
            padding: 10px 10px 0px 10px;
            bottom: 0;
            width: 100%;
            height: 40px;
            background: black;
            color: white;
        }
        .cssdesign {
            color: white;
        }
        .auto-style1 {
            height: 623px;
        }
        .datalist-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .datalist-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 10px;
        }
        
        .dynamic-menu-item a {
    display: block; /* Ensure block display for margin effect */
    margin-top: 10px; /* Adjust the margin value as needed */
}


        .auto-style2 {
            width: 100%;
        }


        </style>
</head>
<body style="height: 143px">
    <form id="form1" runat="server">
        <div align="center" class="auto-style1">
        
            <div style="background-color: #000000; text-align: left;">
                <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
<asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/images/logo11.jpg" Width="106px" />                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" CssClass="design" runat="server" NavigateUrl="~/MenuList.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">Menu</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:HyperLink ID="HyperLink3" CssClass="design" runat="server" NavigateUrl="~/AboutUs.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">AboutUs</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink4" CssClass="design" runat="server" NavigateUrl="~/ContactUs.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">ContactUs</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:HyperLink ID="HyperLink1" CssClass="design" runat="server" NavigateUrl="~/UserLogin.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">LogOut</asp:HyperLink>

            </div>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Selected Items" Font-Bold="True" ForeColor="Red" OnClick="Button1_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <br />
               <br />
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="896px" CssClass="datalist-container" CellPadding="4" ForeColor="#333333">
                <HeaderTemplate>
                    Food List
                </HeaderTemplate>
                <HeaderStyle BackColor="Red" ForeColor="Aqua" Font-Size="X-Large" HorizontalAlign="Center" />
                <ItemTemplate>
                    <div class="datalist-item">
                        <asp:Label ID="l1" runat="server" Text='<%#Eval("name") %>'></asp:Label><br />
                        <img src='<%#Eval("picture") %>' height="70" width="70" /><br />
                        <asp:Label ID="Label2" runat="server" Text=' <%#Eval("description") %>'></asp:Label><br />
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("price") %>'></asp:Label><br />
                        <asp:CheckBox ID="c1" runat="server" Text="Add To Cart" />
                        <br />
                    </div>
                </ItemTemplate>
                <ItemStyle BackColor="Beige" BorderColor="Yellow" BorderStyle="Groove" BorderWidth="5" />
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="Red" ForeColor="Aqua" Font-Size="X-Large" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataList>
            <br />
            <div id="footer">
                © 2024 food delivery website..
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/MenuList.aspx">Back to Top</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
