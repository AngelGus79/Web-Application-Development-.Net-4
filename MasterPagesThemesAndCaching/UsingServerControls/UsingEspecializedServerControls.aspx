<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingEspecializedServerControls.aspx.cs" Inherits="UsingServerControls.UsingEspecializedServerControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" />
            <br />
            <asp:Button Text="Charge image" runat="server" OnClick="Unnamed1_Click" />
            <br />
            <asp:ImageButton ID="myImagenButton" runat="server" OnClick="myImagenButton_Click" />

            <br />

            <asp:Button Text="Add Table" ID="btnAdd" runat="server" OnClick="btnAdd_Click" />
            <asp:Table ID="myTable" runat="server"></asp:Table>

            <br />
            <asp:Button Text="ImageMap" runat="server" OnClick="Unnamed2_Click" />
            <br />
            <asp:ImageMap ID="myImageMap" runat="server" OnClick="myImageMap_Click"></asp:ImageMap>
        </div>
    </form>
</body>
</html>
