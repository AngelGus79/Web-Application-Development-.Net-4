using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreatingCustomWebControls
{
    public class Logo: WebControl
    {
        public string LogoPath { get; set; }
        public string CompanyName { get; set; }

        public override void RenderBeginTag(HtmlTextWriter writer)
        {
            writer.RenderBeginTag("div");

        }

        protected override void RenderContents(HtmlTextWriter writer)
        {
            writer.Write(@"<img src="" {0} "" alt=""Logo""/> <br />", LogoPath);
            writer.Write(CompanyName + "<br/>");
        }


    }
}