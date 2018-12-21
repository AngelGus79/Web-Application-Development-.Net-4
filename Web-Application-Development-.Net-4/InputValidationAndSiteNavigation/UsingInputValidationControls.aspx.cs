using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InputValidationAndSiteNavigation
{
    public partial class UsingInputValidationControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TxtName.Focus();
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            switch (myWizard.ActiveViewIndex)
            {
                case 0:
                    ValidationSummary1.ValidationGroup = "PersonalInformation";
                    //Validate PersonalInformation group
                    Page.Validate("PersonalInformation");
                    if (Page.IsValid)
                    {
                        myWizard.ActiveViewIndex = 1;
                    }
                    break;
                case 1:
                    ValidationSummary1.ValidationGroup = "ContactInformation";
                    Page.Validate("ContactInformation");
                    if (Page.IsValid)
                    {
                        myWizard.ActiveViewIndex = 2;
                    }
                    break;
                case 2:
                   
                        myWizard.ActiveViewIndex = 3;
                  
                    break;
                default:
                    break;

            }
        }

        protected void NameCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;
            string data = args.Value;
            if (data.Length < 3 || data.Length > 20)
                return;
            args.IsValid = true;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            myWizard.Visible = false;
        }
    }
}