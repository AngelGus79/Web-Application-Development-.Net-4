<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkingWithFormControls.aspx.cs" Inherits="Bootstrap.WorkingWithFormControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous" />
    <title></title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col">
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Name" runat="server" />
            <asp:TextBox placeholder="Write a name" CssClass=" form-control" runat="server" />
            <asp:Label Text="User Name" runat="server" />
            <asp:TextBox placeholder="Write a user name" CssClass="form-control" runat="server" />
<asp:Label Text="Password" runat="server" />
            <asp:TextBox placeholder="Write a password" CssClass=" form-control" runat="server" />
<asp:Label Text="e-mail" runat="server" />
            <asp:TextBox placeholder="wirte a e-mail" CssClass=" form-control" runat="server" />
            <asp:DropDownList runat="server" CssClass="form-control">
                <asp:ListItem Text="item 1" />
                <asp:ListItem Text="item 2" />
            </asp:DropDownList>
            <asp:CheckBoxList runat="server"  CssClass="form-check">
                <asp:ListItem Text="text1" />
                <asp:ListItem Text="text2" />
            </asp:CheckBoxList>

            <asp:Button Text="Accept" CssClass="btn btn-primary" runat="server" />
        </div>
    </form>
                </div>
            </div>
        </div>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>
</html>
