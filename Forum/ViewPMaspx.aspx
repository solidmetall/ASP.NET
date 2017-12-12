<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewPMaspx.aspx.cs" Inherits="ViewPMaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblGreet" runat="server"></asp:Label>
        <asp:LoginStatus ID="LoginStatus1" runat="server" 
            style="z-index: 1; left: 604px; top: 15px; position: absolute" 
            LogoutAction="RedirectToLoginPage" />
    
        <asp:LinkButton ID="GoBackLink" runat="server" 
            style="z-index: 1; left: 598px; top: 54px; position: absolute" 
            PostBackUrl="~/PrivateMessages.aspx">Go Back</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <asp:DetailsView ID="dvMessage" runat="server" AutoGenerateRows="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" 
            style="margin-bottom: 0px" Width="799px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="FromUser" HeaderText="From:">
                <ControlStyle BackColor="#99CCFF" />
                <HeaderStyle Width="30px" />
                <ItemStyle HorizontalAlign="Left" Width="500px" />
                </asp:BoundField>
                <asp:BoundField DataField="Subject" HeaderText="Subject:">
                <ControlStyle BackColor="#99CCFF" />
                <HeaderStyle Width="30px" />
                <ItemStyle HorizontalAlign="Left" Width="500px" />
                </asp:BoundField>
                <asp:BoundField DataField="txtMessage" HeaderText="Message:">
                <HeaderStyle VerticalAlign="Top" />
                <ItemStyle Height="300px" HorizontalAlign="Left" VerticalAlign="Top" 
                    Width="500px" />
                </asp:BoundField>
                <asp:BoundField DataField="TimeM" HeaderText="Time:">
                <ControlStyle BackColor="#99CCFF" />
                <ItemStyle HorizontalAlign="Left" Width="500px" />
                </asp:BoundField>
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:Label ID="lblDel" runat="server" ForeColor="Red" 
            style="z-index: 1; left: 246px; top: 241px; position: absolute; right: 715px" 
            Text="Message is deleted!" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" 
            Text="You can reply to this message or delete"></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtReply" runat="server" 
            
            style="z-index: 1; left: 10px; top: 521px; position: absolute; width: 565px; height: 100px"></asp:TextBox>
        <br />
        <asp:Button ID="btnDelete" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 667px; top: 482px; position: absolute" 
            Text="Delete Message" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnReply" runat="server" 
            style="z-index: 1; left: 606px; top: 644px; position: absolute" 
            Text="Reply" onclick="Button1_Click1" />
        <br />
    
    </div>
    </form>
</body>
</html>
