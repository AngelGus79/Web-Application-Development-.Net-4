<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingUserControls.aspx.cs" Inherits="CreatingCustomWebControls.UsingUserControls" %>

<%@ Register Src="~/myUserControl.ascx" TagPrefix="PersonalInfoUC" TagName="myUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <PersonalInfoUC:myUserControl runat="server" id="myUserControl" />
            <br />
            <asp:Literal Text="" ID="LtrPersonalInfo" runat="server" />
        </div>
    </form>
</body>
</html>
