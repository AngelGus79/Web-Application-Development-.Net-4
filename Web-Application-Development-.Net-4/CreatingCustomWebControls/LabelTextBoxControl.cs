using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace CreatingCustomWebControls
{
    [ToolboxBitmap(typeof(LabelTextBoxControl),"icon.png")]
    public class LabelTextBoxControl : TextBox
    {
        public int size
        {
            get
            {
                return ViewState["size"] == null ? 100 : (int)ViewState["size"];
            }
            set
            {
                ViewState["size"] = value;
            }
        }
        public string LabelText
        {
            get
            {
                return ViewState["LabelText"] == null ? string.Empty : (string)ViewState["LabelText"];
            }
            set
            {
                ViewState["LabelText"] = value;
            }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            writer.Write(@"<span style=""display;inline-block;width:{0}px""> {1} </span>", size, LabelText);
            base.Render(writer);
        }
    }
}