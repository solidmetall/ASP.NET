<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" DataKeyNames="branch_nbr">
            <Columns>
                <asp:BoundField DataField="branch_nbr" HeaderText="branch_nbr" 
                    SortExpression="branch_nbr" ReadOnly="True" />
                <asp:BoundField DataField="branch_name" HeaderText="branch_name" 
                    SortExpression="branch_name" />
                <asp:BoundField DataField="region_nbr" HeaderText="region_nbr" 
                    SortExpression="region_nbr" />
                <asp:BoundField DataField="employee_count" HeaderText="employee_count" 
                    SortExpression="employee_count" />
                <asp:BoundField DataField="region_name" HeaderText="region_name" 
                    SortExpression="region_name" />
                <asp:BoundField DataField="location" HeaderText="location" ReadOnly="True" 
                    SortExpression="location" />
            </Columns>
        </asp:GridView>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT BRANCH.branch_nbr, BRANCH.branch_name, REGIONS.region_nbr, BRANCH.employee_count, REGIONS.region_name, RTRIM(BRANCH.branch_name) + N'--' + UPPER(REGIONS.region_name) AS location FROM BRANCH INNER JOIN REGIONS ON BRANCH.region_nbr = REGIONS.region_nbr">
        </asp:SqlDataSource>
    
        <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
