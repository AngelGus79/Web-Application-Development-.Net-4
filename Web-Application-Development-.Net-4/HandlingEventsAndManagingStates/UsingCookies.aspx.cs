using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandlingEventsAndManagingStates
{
    public partial class UsingCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //it is good apprach to encode the cookie because can contains malicious scripts
            // Server.HtmlEncode(Request.Cookies["myCookies"].Value);
            if (Request.Cookies["myCookie"] != null)
                
                lblCookies.Text = string.Format("the BirthDay is {0}, the Name is {1}, the nationality is {2}",Request.Cookies["myCookie"]["BirthDay"], Request.Cookies["myCookie"]["Name"], Request.Cookies["myCookie"]["Nationality"]);
                
            else
            {
                lblCookies.Text = "No cookies";
                Response.Cookies["myCookie"]["BirthDay"] = new DateTime(1998, 11, 23).ToString();
                Response.Cookies["myCookie"]["Name"] = "User Name";
                Response.Cookies["myCookie"]["Nationality"] = "fra";
                Response.Cookies["myCookie"].Expires = DateTime.Now.AddSeconds(10);

            }


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //a way to do it is
            Response.Cookies.Add(new HttpCookie("myKey","This is the information that I want to store"));


            Label1.Text = Server.HtmlEncode(Request.Cookies["myKey"].Value);

        }
    }
}