using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandlingEventsAndManagingStates
{
    public partial class StartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

          
        }

        private void ModifyingLevelApplicationVariable()
        {
           
        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {
            Session["UserName"] = txtSession.Text;
           

        }

        protected void btnApplication_Click(object sender, EventArgs e)
        {
            Application["info"] = txtApplication.Text;
            

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            lblSession.Text = Session["UserName"].ToString();

            lblApplication.Text = Application["info"].ToString();

        }
    }
}