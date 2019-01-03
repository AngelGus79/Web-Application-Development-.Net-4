<%@ Page Title="" Language="C#" MasterPageFile="~/Sales.Master" AutoEventWireup="true" CodeBehind="ClientsPage.aspx.cs" Inherits="UsingScriptingClientSideAjaxAndJquery.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p Class="h1">Clients</p>

    <asp:Label Text="" ID="LblOutSide" runat="server" />
    <br />
    <asp:Button Text="Outside" runat="server" />


    <br />
    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnInside" EventName="Click" />
        </Triggers>
        <ContentTemplate>
            <asp:Button ID="btnInside" runat="server" Text="InsidePanel1" OnClick="btnInside_Click" />
            <asp:Label ID="LblInside" runat="server" Text=""></asp:Label>
            <br />
            
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnPanel3" EventName="Click" />
        </Triggers>
        <ContentTemplate>

            <asp:Button ID="btnPanel3" Text="btnPanel3" runat="server" OnClick="Unnamed2_Click" />
           <br /> <asp:Label Text="" ID="LblPanel3" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" Interval="500"  runat="server" OnTick="Timer1_Tick"></asp:Timer>
            <asp:Label ID="LblTimer" runat="server" Text="Label"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
