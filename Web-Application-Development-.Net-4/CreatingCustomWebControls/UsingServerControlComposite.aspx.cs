using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreatingCustomWebControls
{
    public partial class UsingServerControlComposite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            CompositeServerControl1.Submitted += CompositeServerControl1_Submitted;
        }

        private void CompositeServerControl1_Submitted(object sender, EventArgs e)
        {
            Response.Write("Ok");
        }
    }
}