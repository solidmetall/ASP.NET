<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
        This is my repeater <br />
        </HeaderTemplate>
        <ItemTemplate>
          <tr>
            <td>Branch Number:&nbsp&nbsp<%# Eval("branch_nbr") %></td> <br />
            <td>Branch Name:&nbsp&nbsp&nbsp&nbsp&nbsp<%# Eval("branch_name") %></td> <br />
            <td>Region Number:&nbsp&nbsp<%# Eval("region_nbr") %></td> <br />
            <td>Employee Count:&nbsp<%# Eval("employee_count") %></td> <br />
            <br />
          </tr>
        </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [BRANCH]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
