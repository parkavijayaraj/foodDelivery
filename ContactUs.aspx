<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="foodDelivery.ContactUs" %>

<!DOCTYPE html>
<script runat="server">


    protected void Button3_Click(object sender, EventArgs e)
    {
       // Response.Redirect("Driver.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Foodie</title>
    <style>
        .topnav {
            overflow: hidden;
            background-color: black;
        }

        .qunKh {
            height: auto;
            margin-bottom: 24px;
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

        .qunKh {
            display: flex;
            flex-direction: column;
            height: 100%;
            position: relative;
            transition: box-shadow 0.25s ease 0s;
            width: 100%;
            gap: 16px;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            text-align: center;
            background: rgb(255, 255, 255);
            box-shadow: rgba(0, 0, 0, 0.08) 0px 2px 4px;
            padding: 32px 24px;
        }

        .auto-style3 {
            left: 1px;
            top: 0px;
        }

        .column {
            float: left;
            width: 25%;
            padding: 0 10px;
        }

        /* Remove extra left and right margins, due to padding in columns */
        .row {
            margin: 0 -5px;
        }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

       

        .auto-style6 {
            float: left;
            width: 33%;
            padding: 0 10px;
            height: 341px;
            margin-left: 97px;
            margin-top: 24px;
        }

        .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}


        .auto-style7 {
            float: left;
            width: 33%;
            padding: 0 10px;
            height: 307px;
            margin-left: 97px;
            margin-top: 0px;
        }
        .auto-style8 {
            margin: 0 -5px;
            height: 388px;
        }
        .design{
            color:white;
        }

        .auto-style9 {
            left: 0px;
            bottom: 0;
        }
        .auto-style10 {
            left: 0px;
            bottom: 0;
            height: 7px;
        }
        .auto-style11 {
            float: left;
            width: 75%;
            padding: 0 10px;
            height: 124px;
            margin-left: 97px;
            margin-top: 0px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">

              <div style="background-color: #000000; text-align: left;">
                <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
<asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/images/logo11.jpg" Width="106px" />                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" CssClass="design" runat="server" NavigateUrl="~/MenuList.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">Menu</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:HyperLink ID="HyperLink3" CssClass="design" runat="server" NavigateUrl="~/AboutUs.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">AboutUs</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink4" CssClass="design" runat="server" NavigateUrl="~/ContactUs.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">ContactUs</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:HyperLink ID="HyperLink1" CssClass="design" runat="server" NavigateUrl="~/UserLogin.aspx" Font-Size="25px" Font-Underline="False" ForeColor="White">LogOut</asp:HyperLink>

            </div>
            <div class="auto-style8">
                 <p >&nbsp;</p>
                <div class="auto-style6">
                    <div class="card">
                    <div class="auto-style3">
                            <h3 class="auto-style10" >Talk to a member of our Sales team</h3>
                            <p >&nbsp;</p>
                            <p class="auto-style9" >We’ll help you find the right products andpricing for your business.</p>
                            <p >&nbsp;</p>
                            <p class="Textstyle__TextRoot-sc-c9um69-0 jTtMdS">
                                <asp:Button ID="Button3" runat="server" BackColor="#0099CC" Text="Contact Sales" Height="35px" Width="143px" OnClick="Button3_Click" />
                            </p>
                           
                        </div>
                    </div>
                </div>

                <br />

                 <br />
                <div class="auto-style7">
                    <div class="card">
                    <div class="auto-style3">
                        <h3 class="auto-style10">Food and account support</h3>
                        <p class="auto-style9">Our help center is fresh and always open for business. If you can’t find the answer you’re looking for, we’re here to lend a hand.</p>
                        <p >&nbsp;</p>
                        <p class="Textstyle__TextRoot-sc-c9um69-0 jTtMdS">
                            <asp:Button ID="Button2" runat="server" BackColor="#009933" Text="Food Team" />
                        </p>
                    </div>
                        </div>
                   
                </div>
            </div>
                 <div class="auto-style11">
                    <div class="card">
                    <div class="auto-style3">
                        <h3 class="auto-style10">Social Links</h3>
                        <asp:Image ID="Image2" runat="server" Height="27px" ImageUrl="~/images/insta.jpeg"  NavigateUrl="https://www.instagram.com/swiggyindia/"/>
&nbsp;
                        <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/images/linkedin.png" Width="26px" />
&nbsp;
                        <asp:Image ID="Image4" runat="server" Height="25px" ImageUrl="~/images/Facebook.png" />
&nbsp;
                        <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/images/youtube1.png" />
                       
                    </div>
                        </div>
                   
                </div>
              <p >&nbsp;</p>
              <p >&nbsp;</p>
              <p >&nbsp;</p>
              <p >&nbsp;</p> 

            <div id="footer" class="auto-style10">
                © 2024 food delivery website...
                
                 <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ContactUs.aspx" ForeColor="Yellow">Back to Top</asp:HyperLink>

            </div>
    </form>
</body>
</html>
