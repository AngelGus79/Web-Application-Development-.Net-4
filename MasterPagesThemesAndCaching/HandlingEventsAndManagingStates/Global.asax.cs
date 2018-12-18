using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace HandlingEventsAndManagingStates
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //it is not necessary to lock, unlock
            Application["Counter"] = 0;
            Application["info"] = "No info";
        }
        protected void Application_Stop(object sender, EventArgs e)
        {
            Session["UserName"] = "";

        }
        protected void Session_Start(object sender, EventArgs e)
        {

            //it is locked and unlocked because many users can be accessing to the web application, it creates a thread for each one
            Application.Lock();
            Application["Counter"] = (int)Application["Counter"] + 1;
           
            Application.UnLock();

            Session["UserName"] = "Default";




        }
        protected void Session_End(object sender, EventArgs e)
        {
            Session["UserName"] = null;
        }

        
        
    }
}