<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body style="height: 340px; width: 965px;">
    <form id="form1" runat="server">
    <div style="height: 370px; width: 956px;">
    
        <asp:Label ID="Label1" runat="server" style="position: absolute; text-align: center; z-index: 1; left: 374px; top: 33px" Text="Create User Account"></asp:Label>
      
        <asp:TextBox ID="txtUserName" runat="server" style="z-index: 1; left: 375px; top: 55px; position: relative; bottom: -77px; width: 218px;"></asp:TextBox>
        <asp:TextBox ID="txtPassWord" runat="server" height="22px" style="position: relative; top: 103px; left: 147px; width: 227px;"></asp:TextBox>
        <asp:TextBox ID="txtRetypePass" runat="server" height="22px" style="position: relative; top: 147px; left: -91px; width: 228px;"></asp:TextBox>
        <asp:TextBox ID="txtEmail" runat="server" height="22px" style="position: relative; top: 191px; left: -328px; width: 235px;"></asp:TextBox>
    
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 313px; top: 115px; position: absolute; bottom: 195px" Text="Password:"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 296px; top: 161px; position: absolute" Text="Retype pwd:"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 335px; top: 203px; position: absolute" Text="Email:"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 309px; top: 63px; position: absolute" Text="Username:"></asp:Label>
    
        <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" style="position: relative; top: 239px; left: 282px" Text="Create" />
        <asp:Button ID="btnCancel" runat="server"  style="position: relative; top: 240px; left: 424px" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="This Field is REQUIRED" SetFocusOnError="True" style="z-index: 1; left: 626px; top: 62px; position: absolute; width: 187px;" ForeColor="Red"></asp:RequiredFieldValidator>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassWord" ErrorMessage="This Field is REQUIRED" ForeColor="Red" style="z-index: 1; left: 628px; top: 111px; position: absolute"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassWord" ControlToValidate="txtRetypePass" CultureInvariantValues="True" ErrorMessage="Passwords do not match" ForeColor="Red" style="z-index: 1; left: 630px; top: 155px; position: absolute"></asp:CompareValidator>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This Field is REQUIRED" ForeColor="Red" style="z-index: 1; left: 632px; top: 202px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRetypePass" ErrorMessage="This Field is REQUIRED" ForeColor="Red" style="position: absolute; z-index: 1; left: 631px; top: 156px"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address Format" ForeColor="Red" style="z-index: 1; left: 632px; top: 205px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    
    </div>
    </form>
</body>
</html>
