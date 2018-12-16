<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Master_Pages__Themes_and_Caching.Formulario_web1" %>
<%@ MasterType VirtualPath="~/Main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label Text="Age" ID="lblAge" runat="server" />
    <asp:TextBox Text="" Placeholder="Write your Age" ID="txtAge" runat="server" />
    <br />
    <asp:Label Text="Name:" ID="lblContent" runat="server" />
    <asp:TextBox  ID="txtName" runat="server" /> 
    <br />
    <asp:Label Text="Property:" runat="server" />
    <asp:TextBox  ID="txtProperty" runat="server" /> 
    <br />
    <asp:Button Text="Ok" ID="btnOk" runat="server" OnClick="btnOk_Click" />
    <br />
    <asp:Button Text="Switch Master Page" ID="Switch" runat="server" OnClick="Switch_Click" />
</asp:Content>
