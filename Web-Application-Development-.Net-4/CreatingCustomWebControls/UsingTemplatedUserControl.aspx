<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingTemplatedUserControl.aspx.cs" Inherits="CreatingCustomWebControls.UsingTemplatedUserControl" %>
<%@Register  Src="TemplatedUserControl.ascx" TagName="myTemplatedUc"  TagPrefix="Uc1"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <Uc1:myTemplatedUc ID="myTemplatedUc1" runat="server" AddresType="Home"  >
                <LayoutTemplate>
                    <table>
                        <tr>
                            <td>FirstName: </td>
                            <td><asp:TextBox ID="TextBoxAddress" runat="server"
Text="<%#Container.FirstName%>"></asp:TextBox></td>
                            <td>LastName: </td>
                            <td>
                                <asp:TextBox Text="<%#Container.LastName %>" runat="server" ID="TxtLastName" /> </td>
                        </tr>
                        <tr>
                            <td>Phone Number: </td>
                            <td><asp:TextBox ID="TextBox1" runat="server"
Text="<%#Container.PhoneNumber%>"></asp:TextBox></td>
                            <td>Zip Code: </td>
                            <td>
                                <asp:TextBox Text="<%#Container.ZipCode %>" runat="server" ID="TextBox2" /> </td>
                        </tr>
                    </table>
                    
                </LayoutTemplate>
            </Uc1:myTemplatedUc>

        </div>
    </form>
</body>
</html>
