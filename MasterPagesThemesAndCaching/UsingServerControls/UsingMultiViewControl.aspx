<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingMultiViewControl.aspx.cs" Inherits="UsingServerControls.UsingMultiViewControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ActiveViewIndex="0" runat="server" ID="myMultiview">
                <asp:View runat="server"  > 

                    <table class="auto-style1">
                        <tr>
                            <td>Name</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>User Name</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="step1" runat="server" Text="Next" oncommand="Button1_Command" CommandName="step1"    />
                            </td>
                        </tr>
                    </table>

                </asp:View>
                <asp:View runat="server">  
                    <table class="auto-style1">
                        <tr>
                            <td>Address</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Nationality</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                <asp:Button ID="step2" Text="Next" runat="server" oncommand="Button1_Command" CommandName="step2" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View runat="server"> 
                    <h1>This is the end</h1>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
