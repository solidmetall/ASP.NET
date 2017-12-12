<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainForumPage.aspx.cs" Inherits="MainForumPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="margin-top: 15px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblGreet" runat="server"></asp:Label>
        <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" 
            LogoutPageUrl="~/Login.aspx" 
            style="z-index: 1; left: 604px; top: 15px; position: absolute" />
        <asp:Label ID="lblLogin" runat="server" 
            style="z-index: 1; left: 469px; top: 15px; position: absolute" 
            Text="Please login to Post :"></asp:Label>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" 
            style="z-index: 1; left: 605px; top: 53px; position: absolute" 
            PostBackUrl="~/PrivateMessages.aspx">Private Messages :</asp:LinkButton>
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/CreateTopic.aspx">Create New Topic</asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="800px" CellPadding="4" 
            ForeColor="#333333" GridLines="None" 
             AutoGenerateColumns="False" 
            DataKeyNames="UniquePosts" DataSourceID="SqlDataSource1" 
            AllowSorting="True" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Topic Name" SortExpression="UniquePosts">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                            Text='<%# Eval("UniquePosts") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PostedBy" HeaderText="Opened By" 
                    SortExpression="PostedBy" />
                <asp:BoundField DataField="TimeOpened" HeaderText="Date Opened" 
                    SortExpression="TimeOpened" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT [UniquePosts], [PostedBy], [TimeOpened] FROM [Topics]"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
