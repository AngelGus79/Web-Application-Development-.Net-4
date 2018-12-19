<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingCookies.aspx.cs" Inherits="HandlingEventsAndManagingStates.UsingCookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="" ID="Label1" runat="server" />
            <br />
            <asp:Label Text="" ID="lblCookies" runat="server" />
            <br />
            <asp:Button Text="Add Cookie" runat="server" OnClick="Unnamed1_Click" />
        </div>
    </form>
</body>
</html>
