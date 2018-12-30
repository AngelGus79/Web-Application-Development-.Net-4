using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ServerControl
{
    [ToolboxData(
@"<{0}:LabelTextBox runat=""server"" LabelText="""" size=""200"" />")]
    [DefaultProperty("LabelText")]
    [ToolboxBitmap(typeof(LabelTextBox),"Alien.bmp")]
    [Designer("ServerControl.ServerControlDesigner, ServerControl")]
    public class LabelTextBox : TextBox
    {
        [Bindable(false),
Category("Appearance"),
Description("Specify the width size of TexBox (unity pixels) "),
Localizable(true)]
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
        [Bindable(false),
Category("Appearance"),
Description("Specify the label text"),
Localizable(true)]
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
