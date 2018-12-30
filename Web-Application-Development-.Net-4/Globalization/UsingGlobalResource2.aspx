<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingGlobalResource2.aspx.cs" Inherits="Globalization_and.UsingGlobalResource2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="<%$ Resources: myGlobalResources, PhoneNumber %>" ID="lblPhone" runat="server" />
            <asp:Label Text="<%$ Resources: myGlobalResources, Welcome %>" ID="lblWelcome" runat="server" />
        </div>
    </form>
</body>
</html>
