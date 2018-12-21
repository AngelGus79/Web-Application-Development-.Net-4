using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InputValidationAndSiteNavigation
{
    public partial class OriginPage : System.Web.UI.Page
    {
        public TextBox MyUserName {
            get
            {
                return TxtName;
            }
            set
            {
                TxtName = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}