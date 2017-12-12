<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblColor" runat="server" Text="Color:"></asp:Label>
        <asp:DropDownList ID="ddlColor" runat="server">
            <asp:ListItem>Green</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Red</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRemember" runat="server" onclick="btnRemember_Click" 
            Text="Remember Me" />
        <br />
        <br />
        <asp:Label ID="lblFavoriteColor" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lblMyColor" runat="server" Text="What was my color?"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlMycolor" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlMycolor_SelectedIndexChanged" Width="130px">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
