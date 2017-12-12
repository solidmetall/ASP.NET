<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewPM.aspx.cs" Inherits="NewPM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LoginStatus ID="LoginStatus1" runat="server" 
            style="z-index: 1; left: 604px; top: 15px; position: absolute" 
            LogoutAction="RedirectToLoginPage" />
    
        <asp:Label ID="lblGreet" runat="server"></asp:Label>
    
        <br />
        <asp:LinkButton ID="GoBackLink" runat="server" 
            style="z-index: 1; left: 598px; top: 54px; position: absolute" 
            PostBackUrl="~/MainForumPage.aspx" CausesValidation="False">Go Back</asp:LinkButton>
        <br />
        <asp:Label ID="lblNewMSG" runat="server" ForeColor="#33CC33" 
            style="z-index: 1; left: 250px; top: 53px; position: absolute" 
            Text="Create new Message"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Search for UserName"></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnCheckUser" runat="server" onclick="btnCheckUser_Click" 
            Text="Find User" CausesValidation="False" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Select User To send Message To"></asp:Label>
        <br />
        <asp:ListBox ID="lbUsers" runat="server" Width="196px"></asp:ListBox>
        <asp:Label ID="lblValid" runat="server" ForeColor="Red" Text="Required"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Check this box to see all Users:"></asp:Label>
&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
            oncheckedchanged="CheckBox1_CheckedChanged" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label>
        <br />
        <asp:TextBox ID="txtSubject" runat="server" Width="455px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVSubject" runat="server" 
            ControlToValidate="txtSubject" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Message to Send"></asp:Label>
        <br />
        <asp:TextBox ID="txtPM" runat="server" Height="106px" Width="455px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVMessage" runat="server" 
            ControlToValidate="txtPM" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnCancel" runat="server" 
            
            style="z-index: 1; left: 389px; top: 523px; position: absolute; width: 73px;" 
            Text="Cancel" CausesValidation="False" height="26px" 
            PostBackUrl="~/PrivateMessages.aspx" />
        <br />
        <asp:Button ID="Send" runat="server" Text="Send" onclick="Send_Click" 
            style="z-index: 1; left: 10px; top: 523px; position: absolute" 
            CausesValidation="False" height="26px" width="73px" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblSent" runat="server" Text="Message was sent!" Visible="False"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [UserName] FROM [vw_aspnet_Users] WHERE ([UserName] LIKE '%' + @UserName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtName" Name="UserName" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [UserName] FROM [vw_aspnet_Users]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
