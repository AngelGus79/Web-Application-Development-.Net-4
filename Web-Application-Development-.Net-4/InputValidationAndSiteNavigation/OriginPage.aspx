<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OriginPage.aspx.cs" Inherits="InputValidationAndSiteNavigation.OriginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>User Name: </td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server" />

                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:Button ID="btnName"  runat="server" PostBackUrl="~/ProcessingPage.aspx" />

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
