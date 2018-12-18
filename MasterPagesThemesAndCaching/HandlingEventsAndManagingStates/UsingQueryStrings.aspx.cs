using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandlingEventsAndManagingStates
{
    public partial class UsingQueryStrings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnQuery_Click(object sender, EventArgs e)
        {
            //adding query strings

            string stringquery = string.Format("?{0}={1}&?{2}={3}&?{4}={5}&", "productID", "33332", "Date", "23/10/23", "ClientID", "233");
            Response.Redirect("myPage.aspx"+ stringquery);

            //reading string query. Return the value of each parameter
            string ProductID  = Server.HtmlEncode(Request.QueryString["productID"]);
            string Date = Server.HtmlEncode(Request.QueryString["Date"]);
            string ClientID = Server.HtmlEncode(Request.QueryString["ClientID"]);
        }
    }
}