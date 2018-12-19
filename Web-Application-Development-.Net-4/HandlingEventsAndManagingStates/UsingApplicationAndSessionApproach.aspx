<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingApplicationAndSessionApproach.aspx.cs" Inherits="HandlingEventsAndManagingStates.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <asp:Label  runat="server" Text="Session"></asp:Label>
            <asp:TextBox ID="txtSession" runat="server"></asp:TextBox>
            <br />
            <asp:Button Text="Accept" ID="btnAccept" runat="server" OnClick="btnAccept_Click" />
          <br />
            <br />
            <asp:Label  runat="server" Text="Application"></asp:Label>
            <asp:TextBox ID="txtApplication" runat="server"></asp:TextBox>
            <br />
            <asp:Button Text="Accept" ID="btnApplication" runat="server" OnClick="btnApplication_Click"  />

          <br />
            <asp:Button Text="Update" ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" />
            <br />
            <asp:Label Text="" ID="lblSession" runat="server" />
            <br />
            <asp:Label Text="" ID="lblApplication" runat="server" />

        </div>
    </form>
</body>
</html>
