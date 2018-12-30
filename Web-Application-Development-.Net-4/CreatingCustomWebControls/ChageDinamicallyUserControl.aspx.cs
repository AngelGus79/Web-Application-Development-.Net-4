using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreatingCustomWebControls
{
    public partial class ChageDinamicallyUserControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            myUserControl uc = (myUserControl)LoadControl("myUserControl.ascx");
            form1.Controls.Add(uc);
        }
    }
}