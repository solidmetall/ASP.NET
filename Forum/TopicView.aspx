<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TopicView.aspx.cs" Inherits="TopicView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblGreetin" runat="server" Text="Label"></asp:Label>
        <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" 
            LogoutPageUrl="~/Login.aspx" 
            style="z-index: 1; left: 604px; top: 15px; position: absolute" />
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 469px; top: 15px; position: absolute" 
            Text="Please login to Post:"></asp:Label>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/MainForumPage.aspx">Back to Main</asp:LinkButton>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT PostedBy, Message, TimePosted FROM Posts WHERE (NameOfTopic = @NameOfTopic)">
            <SelectParameters>
                <asp:SessionParameter Name="NameOfTopic" SessionField="ClickedTopic" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="lblTopicName" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="785px" Height="50px" 
            AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" 
            DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
            GridLines="Horizontal">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="PostedBy" HeaderText="Posted By" 
                    SortExpression="PostedBy" />
                <asp:BoundField DataField="Message" HeaderText="Message" 
                    SortExpression="Message" />
                <asp:BoundField DataField="TimePosted" HeaderText="Date Posted" 
                    SortExpression="TimePosted" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Left" Height="85px" Width="200px" 
                BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:TextBox ID="txtReply" runat="server" Height="86px" TextMode="MultiLine" 
            Width="785px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnPost" runat="server" Text="Post Reply" 
            onclick="btnPost_Click" />
    
    </div>
    </form>
</body>
</html>
