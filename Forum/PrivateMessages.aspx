<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrivateMessages.aspx.cs" Inherits="PrivateMessages" %>

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
    
        <br />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/NewPM.aspx">Compose New Message</asp:LinkButton>
        <asp:LinkButton ID="GoBackLink" runat="server" 
            style="z-index: 1; left: 598px; top: 54px; position: absolute" 
            PostBackUrl="~/MainForumPage.aspx">Go Back</asp:LinkButton>
        <br />
        <br />
        <br />
        <asp:Label ID="lblNoMessages" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridViewPM" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSourcePM" 
            GridLines="None" Width="765px" CellPadding="4" ForeColor="#333333" 
            onselectedindexchanged="GridViewPM_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="FromUser" HeaderText="FromUser" 
                    SortExpression="FromUser" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" 
                    SortExpression="Subject" />
                <asp:BoundField DataField="TimeM" HeaderText="TimeM" 
                    SortExpression="TimeM" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" Visible="False" />
                <asp:CommandField SelectText="Read" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle Height="30px" BackColor="#5D7B9D" Font-Bold="True" 
                ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSourcePM" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            SelectCommand="SELECT [FromUser], [Subject], [TimeM], [ID] FROM [PMessages] WHERE ([ToUser] = @ToUser)">
            <SelectParameters>
                <asp:SessionParameter Name="ToUser" SessionField="LoggedUser" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
