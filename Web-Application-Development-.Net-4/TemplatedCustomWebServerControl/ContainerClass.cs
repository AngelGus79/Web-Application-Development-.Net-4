using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
using System.Drawing;
namespace TemplatedCustomWebServerControl
{
   
   public class ContainerClass : Control, INamingContainer
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public ContainerClass(string UserName, string Password)
        {
            this.UserName = UserName;
            this.Password = Password;
        }

    }
}
