using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Globalization_and
{
    public partial class UsingLocalResourceFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtSalary.Text = "100000";
            TxtSalary.Text = string.Format("{0:C}", double.Parse(TxtSalary.Text));
        }

        protected void TxtSalary_TextChanged(object sender, EventArgs e)
        {

        }
    }
}