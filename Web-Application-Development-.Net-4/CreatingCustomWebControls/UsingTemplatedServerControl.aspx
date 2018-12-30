<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingTemplatedServerControl.aspx.cs" Inherits="CreatingCustomWebControls.UsingTemplatedServerControl" %>

<%@ Register Assembly="TemplatedCustomWebServerControl" Namespace="TemplatedCustomWebServerControl" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <cc1:TemplatedServerControl ID="TemplatedServerControl1" runat="server">
<template>
    <table>
        <tr>
            <td>User Name: </td>
            <td> <asp:TextBox runat="server" ID="txtUserName" Text="<%# Container.UserName %>"/>  </td>
        </tr>
        <tr>
            <td>Password: </td>
            <td> <asp:TextBox runat="server" ID="txtPassword" Text="<%# Container.Password %>"/>  </td>
        </tr>
    </table>
</template>
            </cc1:TemplatedServerControl>
        </div>
    </form>
</body>
</html>
