<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingWebParts.aspx.cs" Inherits="InputValidationAndSiteNavigation.UsingWebParts" %>

<%@ Register Src="~/myControl.ascx" TagPrefix="uc1" TagName="myControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 367px;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            width: 61px;
        }
        .auto-style4 {
            width: 61px;
            height: 148px;
        }
        .auto-style5 {
            height: 148px;
        }
    </style>
</head>
<body>
    <asp:WebPartManager ID="WebPartManager1" runat="server">
        </asp:WebPartManager>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" rowspan="3">
                    <asp:WebPartZone ID="WebPartZone1" runat="server" Height="330px" Width="341px" BorderColor="#CCCCCC" Font-Names="Verdana" Padding="6">
                        <ZoneTemplate>
                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                        </ZoneTemplate> 

                        <MenuLabelHoverStyle ForeColor="#E2DED6" />
                        <MenuLabelStyle ForeColor="White" />
                        <MenuPopupStyle BackColor="#5D7B9D" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em" />
                        <MenuVerbHoverStyle BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ForeColor="#333333" />
                        <MenuVerbStyle BorderColor="#5D7B9D" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                        <EmptyZoneTextStyle Font-Size="0.8em" />
                        <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                        <PartChromeStyle BackColor="#F7F6F3" BorderColor="#E2DED6" Font-Names="Verdana" ForeColor="White" />
                        <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                        <PartTitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />

                    </asp:WebPartZone>
                </td>
                <td class="auto-style4">
                    <asp:WebPartZone ID="WebPartZone2" runat="server" Height="265px" Width="325px" BorderColor="#CCCCCC" Font-Names="Verdana" Padding="6"><ZoneTemplate>
                        <asp:Image ID="Image1" ImageUrl="data:image/jpeg;base64,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" runat="server" />

                                                                                                   </ZoneTemplate> 
                        <MenuLabelHoverStyle ForeColor="Yellow" />
                        <MenuLabelStyle ForeColor="#333333" />
                        <MenuPopupStyle BackColor="#1C5E55" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em" />
                        <MenuVerbHoverStyle BackColor="#E3EAEB" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ForeColor="#333333" />
                        <MenuVerbStyle BorderColor="#1C5E55" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                        <EmptyZoneTextStyle Font-Size="0.8em" />
                        <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                        <PartChromeStyle BackColor="#E3EAEB" BorderColor="#C5BBAF" Font-Names="Verdana" ForeColor="#333333" />
                        <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                        <PartTitleStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />
                    </asp:WebPartZone>
                </td>
                <td class="auto-style5">
                    <asp:WebPartZone ID="WebPartZone3" runat="server" Height="266px" Width="402px" BorderColor="#CCCCCC" Font-Names="Verdana" Padding="6">
                        <MenuLabelHoverStyle ForeColor="#D1DDF1" />
                        <MenuLabelStyle ForeColor="White" />
                        <MenuPopupStyle BackColor="#507CD1" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em" />
                        <MenuVerbHoverStyle BackColor="#EFF3FB" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ForeColor="#333333" />
                        <MenuVerbStyle BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                        <EmptyZoneTextStyle Font-Size="0.8em" />
                        <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                        <PartChromeStyle BackColor="#EFF3FB" BorderColor="#D1DDF1" Font-Names="Verdana" ForeColor="#333333" />
                        <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                        <PartTitleStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />
                        <ZoneTemplate >
                            <asp:Login ID="Login1" runat="server"></asp:Login>
                        </ZoneTemplate>

                    </asp:WebPartZone>
                </td>
            </tr>
            <tr>
                <td rowspan="2" class="auto-style3">
                    <asp:EditorZone ID="EditorZone1" runat="server">
                        <ZoneTemplate>
                            <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
                            <asp:BehaviorEditorPart ID="BehaviorEditorPart1" runat="server" />
                            <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
                        </ZoneTemplate>
                    </asp:EditorZone>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Browse</asp:ListItem>
                        <asp:ListItem>Design</asp:ListItem>
                        <asp:ListItem>Edit</asp:ListItem>
                        <asp:ListItem>Catalog</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:CatalogZone ID="CatalogZone1" runat="server">
                        <ZoneTemplate>
                            <asp:DeclarativeCatalogPart ID="DeclarativeCatalogPart1" runat="server">
                                <WebPartsTemplate>
                                    <asp:Calendar Title="Calendar" ID="Calendar2" runat="server"></asp:Calendar>
                                    <uc1:myControl title="Nothing" ID="myControl1" runat="server" />
                                </WebPartsTemplate>
                            </asp:DeclarativeCatalogPart>
                        </ZoneTemplate>
                    </asp:CatalogZone>
                    
                </td>
            </tr>
        </table>
        


    </form>
</body>
</html>
