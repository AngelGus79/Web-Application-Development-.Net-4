<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="UsingCacheInsert.aspx.cs" Inherits="MasterPages.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <asp:Button ID ="btnCreateFile" Text="Create File" runat="server" />
    <br />
    <asp:Button ID="btnInserting" runat="server" Text="Inserting in Cache Cache" OnClick="btnInserting_Click" />
    <br />
    <asp:Button ID="btnCache" runat="server" Text="Getting by Cache" OnClick="btnCache_Click" />
    <br />
    <asp:Button ID="btnDinamically" runat="server" Text="Getting Dinamically" OnClick="btnDinamically_Click" />
    <br />
    <asp:Label Text="" ID ="lblElapsedTime" runat="server" />
</asp:Content>
