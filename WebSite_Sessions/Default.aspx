<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button_Save" runat="server" onclick="Button_Save_Click" 
            Text="Save" />
        <asp:TextBox ID="TextBox_Name" runat="server"></asp:TextBox>
        <asp:Button ID="_Delete" runat="server" onclick="_Delete_Click" Text="Delete" />
        <asp:TextBox ID="TextBox1" runat="server" Width="258px"></asp:TextBox>
    
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Page 2" />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="ColorMe" />
    </form>
</body>
</html>
