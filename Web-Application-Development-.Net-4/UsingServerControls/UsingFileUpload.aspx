<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingFileUpload.aspx.cs" Inherits="UsingServerControls.UsingFileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="myFileUpload" runat="server"/>
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Save File" OnClick="Save_Click" />
            <br />
            <asp:Literal Text="" ID="myLiteral" runat="server" />
        </div>
    </form>
</body>
</html>
