<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="NoCachingMultipleResponsesInContentPage.aspx.cs" Inherits="MasterPages.Formulario_web12" %>
<%@ OutputCache Duration="60" VaryByParam="DdlProductName" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Product Name:
    <br />
    <asp:DropDownList ID="DdlProductName" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlProductName_SelectedIndexChanged">
        <asp:ListItem >All</asp:ListItem>
        <asp:ListItem>Laptop</asp:ListItem>
        <asp:ListItem>PC</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    Server Time : <asp:Label Text="" ID="lblServerTime" runat="server" />
    <br />
    Client Time : <script>
                      document.write(Date())
                  </script>
</asp:Content>
