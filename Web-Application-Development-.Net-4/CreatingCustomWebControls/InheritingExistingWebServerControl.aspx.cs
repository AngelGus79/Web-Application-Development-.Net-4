using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreatingCustomWebControls
{
    public partial class InheritingExistingWebServerControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            LabelTextBoxControl lbt1 = new LabelTextBoxControl();
            lbt1.size = 200;
            lbt1.LabelText = "Name: ";
            lbt1.ID = "lbt1";

            LabelTextBoxControl lbt2 = new LabelTextBoxControl();
            lbt2.size = 200;
            lbt2.LabelText = "Last Name: ";
            lbt2.ID = "lbt2";

            LiteralControl ltr = new LiteralControl();
            ltr.Text = "<br/>";

            form1.Controls.Add(lbt1);
            form1.Controls.Add(ltr);
            form1.Controls.Add(lbt2);


        }

        protected void btnPostBack_Click(object sender, EventArgs e)
        {
            LiteralControl ltr = new LiteralControl();

            LabelTextBoxControl lbt1 = (LabelTextBoxControl)Page.FindControl("lbt1");
            LabelTextBoxControl lbt2 = (LabelTextBoxControl)Page.FindControl("lbt2");

            //ltr.Text = string.Format("<h1>{0}</h1> <br/> <h1>{1}</h1>",lbt1.LabelText, lbt2.LabelText);
            ltr.Text = @"<br/><span style=""display;inline-block;width:200px""> Hola  </span>";
            form1.Controls.Add(ltr);
        }
    }
}