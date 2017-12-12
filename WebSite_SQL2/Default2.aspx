<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="branch_nbr" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="branch_nbr" HeaderText="branch_nbr" ReadOnly="True" 
                    SortExpression="branch_nbr" />
                <asp:BoundField DataField="branch_name" HeaderText="branch_name" 
                    SortExpression="branch_name" />
                <asp:BoundField DataField="region_nbr" HeaderText="region_nbr" 
                    SortExpression="region_nbr" />
                <asp:BoundField DataField="employee_count" HeaderText="employee_count" 
                    SortExpression="employee_count" />
            </Columns>
        </asp:GridView>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [BRANCH] WHERE [branch_nbr] = @branch_nbr" 
        InsertCommand="INSERT INTO [BRANCH] ([branch_nbr], [branch_name], [region_nbr], [employee_count]) VALUES (@branch_nbr, @branch_name, @region_nbr, @employee_count)" 
        SelectCommand="SELECT * FROM [BRANCH]" 
        UpdateCommand="UPDATE [BRANCH] SET [branch_nbr] = @new_branch_nbr, [branch_name] = @branch_name, [region_nbr] = @region_nbr, [employee_count] = @employee_count WHERE [branch_nbr] = @branch_nbr">
        <DeleteParameters>
            <asp:Parameter Name="branch_nbr" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="branch_nbr" Type="Int32" />
            <asp:Parameter Name="branch_name" Type="String" />
            <asp:Parameter Name="region_nbr" Type="Int32" />
            <asp:Parameter Name="employee_count" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="branch_name" Type="String" />
            <asp:Parameter Name="region_nbr" Type="Int32" />
            <asp:Parameter Name="employee_count" Type="Int32" />
            <asp:Parameter Name="branch_nbr" Type="Int32" />
            <asp:Parameter Name="new_branch_nbr" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="branch_nbr" 
        DataSourceID="SqlDataSource1" Height="50px" 
        onpageindexchanged="DetailsView1_PageIndexChanged" Width="125px">
        <Fields>
            <asp:BoundField DataField="branch_nbr" HeaderText="branch_nbr" ReadOnly="False" 
                SortExpression="branch_nbr" />
            <asp:BoundField DataField="branch_name" HeaderText="branch_name" 
                SortExpression="branch_name" />
            <asp:BoundField DataField="region_nbr" HeaderText="region_nbr" 
                SortExpression="region_nbr" />
            <asp:BoundField DataField="employee_count" HeaderText="employee_count" 
                SortExpression="employee_count" />
            <asp:CommandField ShowInsertButton="True" ShowDeleteButton="True" 
                ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
