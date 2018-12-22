<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingGlobalResource1.aspx.cs" Inherits="Globalization_and.UsingGlobalResource1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList runat="server" ID="myDropDownListLanguages" AutoPostBack="True">
                <asp:ListItem Text="es-ES" />
                <asp:ListItem Text="en-US" />
            </asp:DropDownList>
            <br />

            <asp:Label ID="lblPhoneNumber" Text="<%$ Resources:myGlobalResources, PhoneNumber %>" runat="server" ToolTip="<%$ Resources:myGlobalResources, PhoneNumber %>" />
            <br />
            <asp:Label ID="lblOther"  Text="<%$ Resources:myGlobalResources, OtherResource %>" runat="server" />
        </div>
    </form>
</body>
</html>
