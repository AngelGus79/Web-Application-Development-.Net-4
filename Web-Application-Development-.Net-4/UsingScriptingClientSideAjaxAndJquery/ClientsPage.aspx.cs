using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsingScriptingClientSideAjaxAndJquery
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblInside.Text = "Panel 2:" + DateTime.Now.ToString();

            LblOutSide.Text = "Outside: " + DateTime.Now.ToString();

            LblPanel3.Text = "Panel 3: " + DateTime.Now.ToString();

        }

        protected void btnInside_Click(object sender, EventArgs e)
        {
            LblInside.Text = "Panel 2:" + DateTime.Now.ToString();
        }

       

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            LblPanel3.Text = "Panel 3: " + DateTime.Now.ToString();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            LblTimer.Text = "Timer :" + DateTime.Now.ToString();
        }
    }
}