<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="InputValidationAndSiteNavigation.SiteMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:SiteMapDataSource ID="SiteMapDataSource1"  runat="server" />
            <asp:Menu ID="Menu1"  Orientation="Vertical" DataSourceID="SiteMapDataSource1" runat="server"></asp:Menu>
        </div>
    </form>
</body>
</html>
