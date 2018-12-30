using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Web.UI.Design;

namespace ServerControl
{
    class ServerControlDesigner: ControlDesigner
    {
        ServerControl.LabelTextBox _labelTextBox;

        public override string GetDesignTimeHtml()
        {
            if (_labelTextBox.LabelText.Trim().Length == 0)
                return "<div style='color: Red'>[Set LabelText property] </div> ";
            else
                return base.GetDesignTimeHtml();
        }

        public override void Initialize(IComponent component)
        {
            _labelTextBox = (LabelTextBox)component;
            base.Initialize(component);
            return;
        }

    }
}
