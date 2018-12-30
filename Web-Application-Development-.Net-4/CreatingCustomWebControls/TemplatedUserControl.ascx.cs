using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreatingCustomWebControls
{
    public partial class TemplatedUserControl : System.Web.UI.UserControl
    {

        [PersistenceMode(PersistenceMode.InnerProperty)]
        [TemplateContainer(typeof(AddressUCContainer))]
        public ITemplate LayoutTemplate { get; set; }

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string ZipCode { get; set; }
        public string PhoneNumber { get; set; }

        
        protected void Page_Init(object sender, EventArgs e)
        {
            //in this event does not work properly
            //myPlaceHolder.Controls.Clear();

            //if (LayoutTemplate == null)
            //{
            //    myPlaceHolder.Controls.Add(new LiteralControl("There is no object"));
            //}
            //else
            //{
            //    AddressUCContainer container = new AddressUCContainer(this.FirstName, this.LastName, this.ZipCode, this.PhoneNumber);
            //    this.LayoutTemplate.InstantiateIn(container);
            //    myPlaceHolder.Controls.Add(container);

            //};
        }

        public override void DataBind()
        {
            myPlaceHolder.Controls.Clear();

            if (LayoutTemplate == null)
            {
                myPlaceHolder.Controls.Add(new LiteralControl("There is no object"));
            }
            else
            {
                AddressUCContainer container = new AddressUCContainer(this.FirstName, this.LastName, this.PhoneNumber, this.ZipCode);
                this.LayoutTemplate.InstantiateIn(container);
                myPlaceHolder.Controls.Add(container);

            };

            base.DataBind();
        }


    }
}