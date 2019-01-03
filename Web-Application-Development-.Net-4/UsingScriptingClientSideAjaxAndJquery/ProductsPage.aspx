<%@ Page Title="" Language="C#" MasterPageFile="~/Sales.Master" AutoEventWireup="true" CodeBehind="ProductsPage.aspx.cs" Inherits="UsingScriptingClientSideAjaxAndJquery.Formulario_web1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="h1">Products</p>

    <table>
        <tr>
            <td>Product Name:</td>
            <td>
                <asp:TextBox ID="TxtProductName" runat="server" /></td>
            <td>Product Price: </td>
            <td>
                <asp:TextBox runat="server" ID="TxtProductPrice" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right">
                <asp:Button CssClass="btn-primary" Text="Add Product" runat="server" OnClick="Unnamed1_Click" /></td>

        </tr>
    </table>
    <asp:Button ID="btnProducts" CssClass="btn-primary" Text="Show Products" runat="server" OnClick="btnProducts_Click" />
    <br />
    <asp:Label Text="" ID="LblTime1" runat="server" />
    <br />
    <asp:Literal ID="LtrProducts" runat="server"></asp:Literal>
    <br />
    <asp:UpdatePanel UpdateMode="Conditional" ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label Text="" ID="LblTime" runat="server" />
            <br />
            <asp:Button Text="Fetch In GridView" CssClass="btn-primary" ID="btnGridView" runat="server" OnClick="btnGridView_Click" />
            <%--  --%>
            <asp:GridView runat="server" ID="GdvProducts" AllowPaging="true" AllowSorting="true" OnPageIndexChanging="GdvProducts_PageIndexChanging"></asp:GridView>
            <br />
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <div>
                        <img src="https://media.giphy.com/media/BU6T5P8nWH8go/source.gif" alt="Alternate Text" />
                        <br />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>


    </asp:UpdatePanel>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" />
           
        </Triggers>

        <ContentTemplate>
            <asp:Label Text="" ID="LblNow" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Timer ID="Timer1" runat="server" Interval="500" OnTick="Timer1_Tick">
    </asp:Timer>

    <br />
    <asp:UpdatePanel UpdateMode="Always" ID="UpdatePanel3" runat="server">
        <ContentTemplate>
            <asp:Label Text="" ID="LblPanel3" runat="server" />
            <asp:Button Text="another button" CssClass="btn-primary" id="btnPanel3" runat="server" OnClick="btnPanel3_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
