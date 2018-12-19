<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="UsingCache.aspx.cs" Inherits="MasterPages.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <asp:ListBox ID="ListBoxPeople" runat="server" Height="84px" Width="115px"></asp:ListBox>
    <br />
    <asp:Button Text="Dinamically Charge" ID="Dinamic" runat="server" OnClick="Dinamic_Click" />
    <br />
    <asp:Button Text="Caching" ID="btnCache" runat="server" OnClick="btnCache_Click" />
    <br />
    <asp:Label Text="" ID="lblElapsedTime" Placeholder="elapsed time" runat="server" />
</asp:Content>
