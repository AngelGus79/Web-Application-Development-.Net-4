using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsingServerControls
{
    public partial class UsingWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if(Wizard1.WizardSteps[e.NextStepIndex].Title == "Summary")
            {
                //a Wizard has many WizardSteps
                foreach (WizardStep ws in Wizard1.WizardSteps)
                {
                    //a WizardStep has many controls
                    foreach (Control control in ws.Controls)
                    {
                        if(control is TextBox)
                        {
                            TextBox c = (TextBox)control;
                            string message = string.Format(@"<h1>{0}</h1>", c.Text);
                            Response.Write(message);
                        }
                    }
                }
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Wizard1.Visible = false;
            Response.Write(string.Format("wizard has finished"));
        }
    }
}