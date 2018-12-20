<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingInputValidationControls.aspx.cs" Inherits="InputValidationAndSiteNavigation.UsingInputValidationControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script  type="text/javascript">
        function verifyLength(source, arguments)
        {
            var data = arguments.Value.split('');
            arguments.IsValid = false;
//check length
if(data.length < 3 || data.length > 20) return;

            arguments.IsValid = true;
           
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="myWizard" ActiveViewIndex="0" runat="server">
                <asp:View ID="View1" runat="server">
                    <table>
                            <tr>
                                <td> Name: </td>
                                <td>
                                    <asp:RegularExpressionValidator ErrorMessage="Write a valid Name" ControlToValidate="TxtName" ID="NameRegularExpressionValidator" runat="server" ToolTip="Write a valid Name" ValidationExpression="^[a-zA-Z]{3}[a-zA-Z]*(&quot; &quot;[a-zA-Z]{3}[a-zA-Z]*)*$" ValidationGroup="PersonalInformation" SetFocusOnError="True" >Write a valid Name</asp:RegularExpressionValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Write a Name" ControlToValidate="TxtName" ToolTip="Write a Name" ValidationGroup="PersonalInformation" SetFocusOnError="True">Write a Name</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ErrorMessage="Name should have minimum 3 characters or maximum 20 characters " ControlToValidate="TxtName" runat="server" SetFocusOnError="True" ClientValidationFunction="verifyLength" Text="Name should have minimum 3 characters or maximum 20 characters " ID="NameCustomValidator" OnServerValidate="NameCustomValidator_ServerValidate" ValidationGroup="PersonalInformation" />
                                    <br />
                                    <asp:TextBox ID="TxtName" runat="server" ValidationGroup="PersonalInformation" />
                                </td>
                                <td> Last Name: </td>
                                
                                <td> 
                                    <asp:CustomValidator OnServerValidate="NameCustomValidator_ServerValidate" ErrorMessage="Name should have minimum 3 characters or maximum 20 characters " ControlToValidate="TxtLastName" runat="server" SetFocusOnError="True" ClientValidationFunction="verifyLength" Text="Name should have minimum 3 characters or maximum 20 characters " ID="LastNameCustomValidator" ValidationGroup="PersonalInformation" />
                                    <br />
                                    <asp:RegularExpressionValidator ID="LastNameRegularExpressionValidator" ErrorMessage="Write a valid Last Name" ControlToValidate="TxtLastName" runat="server" ToolTip="Write a valid Last Name" ValidationGroup="PersonalInformation" ValidationExpression="^[a-zA-Z]{3}[a-zA-Z]*(&quot; &quot;[a-zA-Z]{3}[a-zA-Z]*)*$" SetFocusOnError="True" >Write a valid Last Name</asp:RegularExpressionValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="LastNameRequiredFieldValidator" runat="server" ErrorMessage="Write a Last Name" ValidationGroup="PersonalInformation" ControlToValidate="TxtLastName" SetFocusOnError="True">Write a Last Name</asp:RequiredFieldValidator>
                                <br />
                                    <asp:TextBox ID="TxtLastName" runat="server" ValidationGroup="PersonalInformation" /></td>
                            </tr>
                            <tr>
                                <td> Civil Status: </td>
                                <td> 
                                    <asp:RequiredFieldValidator ID="CivilStatusRequiredFieldValidator" ErrorMessage="Select a valid option" ControlToValidate="DdlCivilStatus" runat="server" ValidationGroup="PersonalInformation" InitialValue="Select.." ToolTip="Select a valid option" SetFocusOnError="True" >Select a valid option</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:DropDownList ID="DdlCivilStatus" runat="server" ValidationGroup="PersonalInformation">
                                        <asp:ListItem Text="Select.." />
                                        <asp:ListItem Text="Married" />
                                        <asp:ListItem Text="Single" />
                                    <asp:ListItem Text="Free union" />

                                    </asp:DropDownList></td>
                                <td> Birth Date: </td>
                                <td>
                                    <asp:RequiredFieldValidator ErrorMessage="Write a Date" ID="BirthDateRequiredFieldValidator" ControlToValidate="TxtBirthDate" runat="server" ValidationGroup="PersonalInformation" SetFocusOnError="True" >Write a Date</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CompareValidator ID="BirthDateCompareValidator" runat="server" ErrorMessage="Write a valid Date" ValidationGroup="PersonalInformation" ControlToValidate="TxtBirthDate" Operator="DataTypeCheck" ToolTip="Write a valid Date" SetFocusOnError="True" Type="Date">Write a valid Date</asp:CompareValidator>
                                    <br />
                                    <asp:TextBox ID="TxtBirthDate" runat="server" ValidationGroup="PersonalInformation" TextMode="Date" /></td>
                            </tr>
                        </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table>
                            <tr>
                                <td>Phone Number: </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="PhoneNumberRequiredFileValidator" ErrorMessage="Write a Phone Number" Text="Write a Phone Number" ControlToValidate="TxtPhoneNumber" SetFocusOnError="true" ToolTip="Write a Phone Number" ValidationGroup="ContactInformation" runat="server" />       
                                    <br />
                                    <asp:RegularExpressionValidator ErrorMessage="Write a valid Phone Number" ControlToValidate="TxtPhoneNumber" Text="Write a valid Phone Number" SetFocusOnError="true" ValidationGroup="ContactInformation"   runat="server" ID="PhoneNumberRegularExpression" ToolTip="Write a valid Phone Number" ValidationExpression="^\(\d{3}\)-\d{3}-\d{2}-\d{2}$" />
                                    <br />
                                    <asp:TextBox runat="server" ID="TxtPhoneNumber" TextMode="Phone" />
                                </td>
                                <td>E-mail: </td>
                                <td>
                                    <asp:RequiredFieldValidator ErrorMessage="Write a Email" Text="Write a Email" ToolTip="Write a Email" ID="EmailRequiredFileValidator" ValidationGroup="ContactInformation" ControlToValidate="TxtEmail"  runat="server" />
                                    <br />
                                    <asp:RegularExpressionValidator Text="Write a valid Email" ToolTip="Write a valid Email" ErrorMessage="Write a valid Email" ControlToValidate="TxtEmail" ID="EmailRegularExpressionValidator" SetFocusOnError="true"  ValidationGroup="ContactInformation"  runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                    <br />
                                    <asp:TextBox runat="server" ID="TxtEmail" TextMode="Email" />
                                </td>
                            </tr>
                            <tr>
                                <td>Web site: </td>
                                <td>
                                    <asp:RequiredFieldValidator ErrorMessage="Write a web site" ControlToValidate="TxtWebSite" SetFocusOnError="true" Text="Write a WebSite"  ToolTip="Write a WebSite" ValidationGroup="ContactInformation"  runat="server" />
                                    <br />
                                    <asp:RegularExpressionValidator ErrorMessage="Write a valid WebSite" Text="Write a valid WebSite" ToolTip="Write a valid WebSite" ID="WebSiteRegularExpressionValidator" SetFocusOnError="true" ValidationGroup="ContactInformation"  ControlToValidate="TxtWebSite" runat="server" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" />
                                    <br />
                                    <asp:TextBox runat="server" ID="TxtWebSite" TextMode="Url" />
                                </td>
                                <td>Github: </td>
                                <td>
                                    <asp:RequiredFieldValidator Text="Write a git hub address" ID="GithubRequiredFileValidator" SetFocusOnError="true" ValidationGroupf="ContactInformation"  ToolTip="Write a git hub address" ErrorMessage="Write a git hub address" ControlToValidate="TxtGithub" runat="server" />
                                    <br />
                                    <asp:RegularExpressionValidator ErrorMessage="Write a valid Github Address"  Text="Write a valid Github Address" ToolTip="Write a valid Github Address" ID="GithubRegularExpressionValidator" SetFocusOnError="true"  ValidationGroup="ContactInformation"   ControlToValidate="TxtGithub" runat="server" ValidationExpression="^https:\/\/github\.com\/\w{2}[a-zA-Z]+\w*$" />
                                    <br />
                                    <asp:TextBox runat="server" ID="TxtGithub" />
                                </td>
                            </tr>
                        </table>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table>
                            <tr>
                                <td>Education: </td>
                                <td>
                                    <asp:TextBox runat="server" ID="TxtEducation" Height="136px" Width="616px" Columns="25" MaxLength="10" Rows="4" TextMode="MultiLine"/>

                                </td>
                            </tr>
                            <tr>
                                <td>Experience: </td>
                                <td>
                                    <asp:TextBox runat="server" ID="TxtExperience" Height="158px" Width="616px" Columns="25" MaxLength="10" Rows="4" TextMode="MultiLine"/>

                                </td>
                            </tr>
                        </table>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <table>
                            <tr>
                                <td>
                                    <asp:Literal Text="" ID="LiteralSummary" runat="server" /></td>
                            </tr>
                        </table>
                </asp:View>

            </asp:MultiView>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnNext" Text=">>" runat="server" OnClick="btnNext_Click" />

                    </td>
                    <td>
                        <asp:Button ID="btnPrevious" Text="<<" runat="server" />

                    </td>
                     <td>
                        <asp:Button ID="btnCancel"  CausesValidation="false" Text="Cancel" runat="server" OnClick="btnCancel_Click" />

                    </td>
                </tr>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="PersonalInformation" />
                </td>
                </table>
        </div>
        
    </form>
  
</body>
    
</html>
