<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="branch_name" HeaderText="branch_name" 
                    SortExpression="branch_name" />
                <asp:BoundField DataField="region_name" HeaderText="region_name" 
                    SortExpression="region_name" />
                <asp:BoundField DataField="employee_count" HeaderText="employee_count" 
                    SortExpression="employee_count" />
                <asp:BoundField DataField="division_name" HeaderText="division_name" 
                    SortExpression="division_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT BRANCH.branch_name, REGIONS.region_name, BRANCH.employee_count, DIVISIONS.division_name FROM BRANCH INNER JOIN REGIONS ON BRANCH.region_nbr = REGIONS.region_nbr INNER JOIN DIVISIONS ON BRANCH.division_type = DIVISIONS.division_id">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
