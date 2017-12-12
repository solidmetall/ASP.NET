<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateTopic.aspx.cs" Inherits="CreateTopic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;
        <asp:Label ID="lblGreet" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        To
    
        Create Topic please give it a Name, and create first message to be posted.<asp:LoginStatus 
            ID="LoginStatus1" runat="server" LogoutAction="Redirect" 
            LogoutPageUrl="~/Login.aspx" 
            style="z-index: 1; left: 858px; top: 15px; position: absolute" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name For your New Topic :"></asp:Label>
&nbsp;<asp:TextBox ID="txtNewTopicName" runat="server" Width="421px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtNewTopicName" ErrorMessage="Name Cannot be Empty" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Message goes here:
        <asp:TextBox ID="txtTopicMessage" runat="server" Height="95px" Width="606px" 
            TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtTopicMessage" 
            ErrorMessage="First Message is Required to create new Thread" ForeColor="Red" 
            style="z-index: 1; left: 760px; top: 156px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtTopicMessage" 
            ErrorMessage="Exceeded Length, Max: 500 chars." ForeColor="Red" 
            style="z-index: 1; left: 763px; top: 186px; position: absolute" 
            ValidationExpression="^[\s\S]{0,500}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Create Topic" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/MainForumPage.aspx" 
            Text="Cancel" CausesValidation="False" onclick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
