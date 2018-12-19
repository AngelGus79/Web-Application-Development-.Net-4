<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingCommonServerControls.aspx.cs" Inherits="UsingServerControls.UsingCommonServerControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<asp:Table runat="server">
    <asp:TableHeaderRow HorizontalAlign="Center" VerticalAlign="Middle">
       <asp:TableHeaderCell HorizontalAlign="Center" VerticalAlign="Middle" Text="This is a header" ColumnSpan="3" />
    </asp:TableHeaderRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:label text="&lt;u&gt;U&lt;/u&gt;ser Name" ID="lblUserName" runat="server"  AssociatedControlID="txtUserName" AccessKey="u"/>
        </asp:TableCell><asp:TableCell>
            <asp:textbox runat="server"  ID="txtUserName"/>
        </asp:TableCell><asp:TableCell>
<asp:button text="Update User Name" runat="server" ID="btnUserName" />
        </asp:TableCell></asp:TableRow><asp:TableRow>
        <asp:TableCell>
            <asp:label text="<u>P</u>assword" runat="server" ID="lblPassword" AssociatedControlID="txtPassword" AccessKey="p" />
        </asp:TableCell><asp:TableCell>
            <asp:textbox runat="server" ID="txtPassword" />
        </asp:TableCell><asp:TableCell>
<asp:button text="Update Password" runat="server" ID="btnPassword" />
        </asp:TableCell></asp:TableRow><asp:TableFooterRow HorizontalAlign="Center">
        <asp:TableHeaderCell HorizontalAlign="Center" VerticalAlign="Middle" Text="This is a footer"  ColumnSpan="3"/>
            
    </asp:TableFooterRow>

</asp:Table>
             <table>
                <tr>
                    <td>
                        <asp:RadioButton ID="rbSmall" Text="Small" AutoPostBack="true" runat="server" GroupName="Size" Checked="true" OnCheckedChanged="Unnamed3_CheckedChanged" /> </td>
                    <td><asp:RadioButton ID="rbMedium" Text="Medium" AutoPostBack="true" runat="server" GroupName="Size" OnCheckedChanged="Unnamed3_CheckedChanged"/></td>
                    <td> <asp:RadioButton ID="rbLarge" Text="Large" AutoPostBack="true" runat="server" GroupName="Size" OnCheckedChanged="Unnamed3_CheckedChanged" /></td>
                </tr>
                
            </table>
            <asp:RadioButtonList runat="server" AutoPostBack="true" OnSelectedIndexChanged="Unnamed5_SelectedIndexChanged">
                <asp:ListItem Text="red"   Value="0" />
                <asp:ListItem Text="blue"  Value="1" />
                <asp:ListItem Text="black" Value="2" />
            </asp:RadioButtonList>

            <asp:Panel ID="Panel1" runat="server"></asp:Panel>

            <asp:Button Text="LiteralControls" runat="server" OnClick="Unnamed3_Click" /><br /><asp:Literal  ID="LiteralPassThrough" runat="server"  />
            <br />
            <asp:Literal ID="LiteralTransform"  runat="server"  />
            <br />
            <asp:Literal ID="LiteralEncode"  runat="server" />

            <br />
           
        </div>
    </form>
</body>
</html>
