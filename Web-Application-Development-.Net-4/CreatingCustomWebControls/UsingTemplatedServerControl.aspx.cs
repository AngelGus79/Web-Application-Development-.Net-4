using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TemplatedCustomWebServerControl;
namespace CreatingCustomWebControls
{
    public partial class UsingTemplatedServerControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TemplatedServerControl1.UserName = "Dune";
            TemplatedServerControl1.Password = "Pass";
            Page.DataBind();
        }
        protected void Page_Init(object sender, EventArgs e)
        {
        }
    }
}