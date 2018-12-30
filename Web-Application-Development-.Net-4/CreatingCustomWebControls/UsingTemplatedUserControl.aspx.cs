using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreatingCustomWebControls
{
    public partial class UsingTemplatedUserControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
            myTemplatedUc1.FirstName = "Jonathon";
            myTemplatedUc1.LastName = "Juanes";
            myTemplatedUc1.PhoneNumber = "555-522-63-25";
            myTemplatedUc1.ZipCode = "64000";

            Page.DataBind();
        }
    }
}