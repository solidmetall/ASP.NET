<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 345px">
    
        To be able to post replies in our Forum - please login or create user.&nbsp;&nbsp;&nbsp;&nbsp; Otherwise 
        you can continue as a Guest.<br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/MainForumPage.aspx" 
            style="z-index: 1; left: 166px; top: 53px; position: absolute">Continue as a Guest</asp:LinkButton>
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
        <br />
        <br />
    
        <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" 
            Height="189px" Width="411px" DestinationPageUrl="~/MainForumPage.aspx" 
            
            
            style="position: absolute; z-index: 1; left: 11px; top: 91px; height: 193px; width: 415px" 
            CreateUserText="Create Account" CreateUserUrl="~/NewUser.aspx">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>
    
        <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/PasswordReset.aspx" Visible="False">Forgot Password</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
