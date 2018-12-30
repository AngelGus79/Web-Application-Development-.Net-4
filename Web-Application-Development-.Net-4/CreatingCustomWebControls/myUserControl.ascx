<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="myUserControl.ascx.cs" Inherits="CreatingCustomWebControls.myUserControl" %>
<table>
    <tr>
        <td>
            <asp:Label Text="First Name: " ID="LblFirstName" runat="server" /></td>
        <td>
            <asp:TextBox ID="TxtFirstName" runat="server" />
        </td>
        <td>
            <asp:Label Text="Last Name: " ID ="LblLastName" runat="server" />
        </td>
        <td>
            <asp:TextBox runat="server"  ID="TxtLastName"/>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label Text="Phone Number:" runat="server" />

        </td>
        <td>
            <asp:TextBox runat="server" ID="TxtPhoneNumber"  />
            

        </td>
        <td>
            <asp:Label Text="Zip Address:" ID="LblZipAddress" runat="server" />
        </td>
        <td>

             <asp:TextBox runat="server" ID="TxtZipAddress" />
        </td>
    </tr>
<tr > 
    <td colspan="4">
        <asp:Button ID="btnAccept" Text="Accept" runat="server"  Height="29px" OnClick="btnAccept_Click" />
        <br />
        <br />
        <asp:Literal Text="" ID="ltrAccept" runat="server" />
    </td>
</tr>
</table>
