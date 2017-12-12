<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT BRANCH.branch_name, BRANCH.employee_count, REGIONS.region_name FROM BRANCH INNER JOIN REGIONS ON BRANCH.region_nbr = REGIONS.region_nbr WHERE (BRANCH.branch_nbr = @newparameter)">
        <SelectParameters>
            <asp:SessionParameter Name="newparameter" SessionField="Branch_Number" type="Int16"/>
        </SelectParameters>
    </asp:SqlDataSource>
    
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
