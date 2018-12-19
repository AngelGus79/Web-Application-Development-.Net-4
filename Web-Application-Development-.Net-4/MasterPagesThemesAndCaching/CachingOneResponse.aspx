<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="CachingOneResponse.aspx.cs" Inherits="MasterPages.Formulario_web11"  %>
<%@ OutputCache VaryByParam="None" Duration="30" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="233px" Width="482px">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label Text="Server Time: " ID="serverTime" runat="server" />    
<br />
    Client Time:
    <script>
        document.write(Date());
    </script>
</asp:Content>
