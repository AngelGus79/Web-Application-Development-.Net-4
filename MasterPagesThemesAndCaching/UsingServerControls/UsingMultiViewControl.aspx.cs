using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsingServerControls
{
    public partial class UsingMultiViewControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "step1":
                    myMultiview.ActiveViewIndex = 1;
                    break;
                case "step2":
                    myMultiview.ActiveViewIndex = 2;
                    break;
            }
        }

        
    }
}