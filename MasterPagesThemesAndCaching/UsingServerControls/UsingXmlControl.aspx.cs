using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsingServerControls
{
    public partial class UsingXmlControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Xml1.DocumentSource = "~/content.xml";
            Xml1.TransformSource = "~/format.xsl";
        }
    }
}