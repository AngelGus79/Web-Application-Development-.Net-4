using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master_Pages__Themes_and_Caching
{
    public partial class Main : System.Web.UI.MasterPage
    {
        public string myProperty {
            get
            {
                return (string)Session["Name"];

            }
            set
            {
                Session["Name"] = value;
            }
        }

        
        public Label Age
        {
            get
            {
                return lblAge;
            }
            set
            {
               lblAge = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
                
               
        }
    }
}