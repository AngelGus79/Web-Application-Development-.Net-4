using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InputValidationAndSiteNavigation
{
    public partial class ProcessingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = PreviousPage.MyUserName.Text;
        }
    }
}