using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
namespace Globalization_and
{
    public partial class UsingGlobalResource1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          CultureInfo[] cultures =  System.Globalization.CultureInfo.GetCultures( CultureTypes.SpecificCultures);

            foreach (CultureInfo culture in cultures)
            {
                myDropDownListLanguages.Items.Add(new ListItem(culture.DisplayName,culture.Name));
            }
        }
        protected override void InitializeCulture()
        {
           if(Request.Form["myDropDownListLanguages"] != null)
            {
                Culture = Request.Form["myDropDownListLanguages"];
                UICulture = Request.Form["myDropDownListLanguages"]; 
            }
            base.InitializeCulture();
        }
    }
}