<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingLocalResourceFile.aspx.cs" Inherits="Globalization_and.UsingLocalResourceFile" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="<%$Resources:,lblWelcomeResource1.Text %>"  ToolTip="<%$Resources:, lblWelcomeResource1.ToolTip %>" ID="lblWelcome" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label Text="Address: " ID="LblAddress" runat="server" meta:resourcekey="LblAddressResource1" />
                    </td>
                    <td>
                         <asp:TextBox runat="server" ID="TxtAddress" meta:resourcekey="TxtAddressResource1" />
                    </td>
                    <td>
                        <asp:Label Text="Phone Number: " ID="LblPhoneNumber" runat="server" meta:resourcekey="LblPhoneNumberResource1" />
                    </td>
                    <td>
                         <asp:TextBox runat="server" ID="TxtPhoneNumber" meta:resourcekey="TxtPhoneNumberResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Email:" ID="LblEmail" runat="server" meta:resourcekey="LblEmailResource1" />
                    </td>
                    <td>
                         <asp:TextBox runat="server" ID="TxtEmail" meta:resourcekey="TxtEmailResource1" />
                    </td>
                    <td>
                        <asp:Label Text="Web site:" ID="LblWebSite" runat="server" meta:resourcekey="LblWebSiteResource1" />
                    </td>
                    <td>
                         <asp:TextBox runat="server" ID="TxtWebSite" meta:resourcekey="TxtWebSiteResource1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="<%$Resources:,  LblSalaryResource1.Text %>" ToolTip="<%$ Resources:, LblSalaryResource1.ToolTip %>" ID="LblSalary" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtSalary" runat="server" OnTextChanged="TxtSalary_TextChanged" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
