<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingWizard.aspx.cs" Inherits="UsingServerControls.UsingWizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick">
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <asp:RadioButton ID="RadioButton1" runat="server" />
                        <br />
                        <asp:RadioButton ID="RadioButton2" runat="server" />
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep4" runat="server" Title="Summary">
                        <h1>This is a summary</h1>                                                                          </asp:DropDownList><asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
