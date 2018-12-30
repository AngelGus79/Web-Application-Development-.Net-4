<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingServerControlComposite.aspx.cs" Inherits="CreatingCustomWebControls.UsingServerControlComposite" %>

<%@ Register Assembly="CompositeServerControl" Namespace="CompositeServerControl" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <cc1:CompositeServerControl ID="CompositeServerControl1" runat="server" />
        </div>
    </form>
</body>
</html>
