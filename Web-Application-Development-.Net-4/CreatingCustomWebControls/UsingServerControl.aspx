<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingServerControl.aspx.cs" Inherits="CreatingCustomWebControls.UsingServerControl" %>

<%@ Register Assembly="ServerControl" Namespace="ServerControl" TagPrefix="muc" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <muc:LabelTextBox ID="LabelTextBox1" runat="server" LabelText="" size="200">
            </muc:LabelTextBox>
        </div>
    </form>
</body>
</html>
