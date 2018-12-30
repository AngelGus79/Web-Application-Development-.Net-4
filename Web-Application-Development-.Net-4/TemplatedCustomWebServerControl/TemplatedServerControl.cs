using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
using System.Drawing;
namespace TemplatedCustomWebServerControl
{
    [ParseChildren(true)]
    [ToolboxBitmap(typeof(ContainerClass), "Blog.bmp")]
    public class TemplatedServerControl: Control, INamingContainer
    {
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [TemplateContainer(typeof(ContainerClass))]
        public ITemplate template { get; set; }

        public override void DataBind()
        {

            
            base.EnsureChildControls(); //if  child controls have not been created, it call CreateChildControls
            base.DataBind();
        }

        protected override void CreateChildControls()
        {

            if (template != null)
            {
                ContainerClass container = new ContainerClass(this.UserName, this.Password);
                template.InstantiateIn(container);
                Controls.Add(container);
            }


        }

        public string UserName { get; set; }
        public string Password { get; set; }

    }

     
}
