<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMenuList.aspx.cs" Inherits="AdminMenuList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Foodie</title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 31px;
        }
        .auto-style2 {
            width: 1194px;
        }
        .auto-style5 {
            width: 94px;
        }
        .auto-style6 {
            width: 156px;
        }
        .auto-style7 {
            width: 1331px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #F7F9B7">
        <div align="center">
             
            <table class="auto-style7">
                <tr>
                    
                    <td class="auto-style6" style="text-align: right; background-color: #000000;"></td>
                    <td class="auto-style2" style="text-align: center; background-color: #000000;">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="30px" Text="Today Menu Items" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style5" style="text-align: right; background-color: #000000;">
                        <br />
                    </td>
                   </tr> 
            </table>
                   <br />
            <br />
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddFood.aspx" Font-Bold="True" Font-Underline="False" ForeColor="Blue" Font-Size="25px" BorderColor="Black" BorderWidth="1px">Add Menu</asp:HyperLink>

           
        <br />
<br />
        <asp:DataList   ID="MenuList" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"  Width="896px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand1" Height="292px" OnDeleteCommand="MenuList_DeleteCommand" OnEditCommand="MenuList_EditCommand" CssClass="auto-style1">
            <HeaderTemplate>
                Food List
            </HeaderTemplate>
            <HeaderStyle BackColor="Red" ForeColor="Aqua" Font-Size="X-Large" HorizontalAlign="Center" />
            <ItemTemplate>
                <asp:Label ID="l1" runat="server" Text='<%#Eval("name") %>' ></asp:Label><br />
                <img src='<%#Eval("picture") %>' height="70" width="70" /><br />
                 <asp:Label ID="Label2" runat="server" Text=' <%#Eval("description") %>'></asp:Label><br />
  
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("price") %>'></asp:Label><br />
                

                <br />
                <asp:Button ID="b1" runat="server" Text="Edit"  CommandName="Edit" CommandArgument='<%#Eval("name") %>'/>
               <asp:Button ID="Button1" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("name") %>' />

            </ItemTemplate>
            <ItemStyle BackColor="Beige" BorderColor="Yellow" BorderStyle="Groove" BorderWidth="5" />
            <FooterStyle BackColor="Red" ForeColor="Aqua" Font-Size="X-Large" HorizontalAlign="Center" />

        </asp:DataList>
    <br />
            <br />
        </div>
              <div id="footer" style="background-color: #000000; text-align: center; color: #FFFFFF;">
                  <br />
                © 2024 food delivery website..
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AdminMenuList.aspx" ForeColor="Blue">Back to Top</asp:HyperLink>
          <br />
                  <br />
                  </div>
        
    </form>
</body>
</html>
