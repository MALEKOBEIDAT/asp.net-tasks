<%@ Page Language="C#" ViewStateMode="Disabled" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="state_mangment_practic.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" ViewStateMode="Enabled" runat="server" Text="1"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="counter" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
