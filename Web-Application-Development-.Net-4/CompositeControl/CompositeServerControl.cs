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

namespace CompositeServerControl
{
    
    [ToolboxBitmap(typeof(CompositeServerControl), "Anchor.bmp")]
    public class CompositeServerControl : CompositeControl
    {
        public event System.EventHandler Submitted;

        public string UserName {
            get
            {
                TextBox txtUserName = (TextBox)FindControl("txtUserName");
                return txtUserName.Text;
            }
            set
            {
                TextBox txtUserName = (TextBox)FindControl("txtUserName");
                txtUserName.Text = value;
            }
        }

        public string Password {
            get
            {
                TextBox txtPassword = (TextBox)FindControl("txtPassword");
                return txtPassword.Text;
            }
            set
            {
                TextBox txtPassword = (TextBox)FindControl("txtPassword");
                txtPassword.Text = value;
            }

        }

        protected override void CreateChildControls()
        {
            Panel pnl = new Panel();
            TextBox txtUserName = new TextBox();
            TextBox txtPassword = new TextBox();
            Button btnAccept = new Button();

            btnAccept.Click += BtnAccept_Click;

            Controls.Add(pnl);
            pnl.Controls.Add(new LiteralControl("<table><tr><td>User Name: </td><td>"));
            pnl.Controls.Add(txtUserName);
            pnl.Controls.Add(new LiteralControl("</td><tr><td>Password: </td><td>"));
            pnl.Controls.Add(txtPassword);
            pnl.Controls.Add(new LiteralControl(@"</td><tr><td colspan=""2"">"));
            pnl.Controls.Add(btnAccept);
            pnl.Controls.Add(new LiteralControl("</td></tr></table>"));
            pnl.Style.Add("background-color", "yellow");
            pnl.Style.Add("width", "100%");
            txtPassword.ID = "txtPassword";
            txtUserName.ID = "txtUserName";
            txtPassword.TextMode = TextBoxMode.Password;
            btnAccept.Text = "Accept";
        }

        private void BtnAccept_Click(object sender, EventArgs e)
        {
            if (Submitted != null)
                Submitted(this,e);
        }
    }
}
