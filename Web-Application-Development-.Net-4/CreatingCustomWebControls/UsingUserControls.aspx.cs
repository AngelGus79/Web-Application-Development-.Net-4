using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreatingCustomWebControls
{
    public partial class UsingUserControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //To get access to a control
            //TextBox txtFirstName = (TextBox)myUserControl.FindControl("TxtFirstName");
            //txtFirstName.Text = "hellow";
            myUserControl.txtFirstName.Text = "Jhonaton";
            myUserControl.txtLastName.Text = "Wiston";
            myUserControl.txtZipAddress.Text = "63000";
            myUserControl.txtPhoneNumber.Text = "123-322-21-56";


        }

        protected void Page_Init(object sender, EventArgs e)
        {
            myUserControl.SaveInfo_click += MyUserControl_SaveInfo_click;
        }

        private void MyUserControl_SaveInfo_click(object sender, myPersonalInfoEventArgs e)
        {
            LtrPersonalInfo.Text = string.Format("<h1>{0} {1}</h1> </br> <h3>Phone Number: {2}</h3> </br> <h3>Zip Address: {3}</h3> ", e.FirstName,e.LastName,e.PhoneNumber, e.ZipAddress);
        }
    }
}