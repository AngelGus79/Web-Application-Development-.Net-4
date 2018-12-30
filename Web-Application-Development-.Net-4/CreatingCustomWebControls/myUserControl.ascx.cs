using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreatingCustomWebControls
{

    public class myPersonalInfoEventArgs : EventArgs
    {


        public myPersonalInfoEventArgs(string firstName, string lastName, string phoneNumber, string zipaddress)
        {
            FirstName = firstName;
            LastName = lastName;
            PhoneNumber = phoneNumber;
            ZipAddress = zipaddress;

            
        }

        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public string ZipAddress { get; private set; }
        public string PhoneNumber { get; private set; }
    }
    public partial class myUserControl : System.Web.UI.UserControl
    {

        public TextBox txtFirstName
        {
            get
            {
                return TxtFirstName;
            }
            set
            {
                TxtFirstName = value;
            }
        }

        public TextBox txtLastName
        {
            get
            {
                return TxtLastName;
            }
            set
            {
                TxtLastName = value;
            }
        }

        public TextBox txtZipAddress
        {
            get
            {
                return TxtZipAddress;
            }
            set
            {
                TxtZipAddress = value;
            }
        }

        public TextBox txtPhoneNumber
        {
            get
            {
                return TxtPhoneNumber;
            }
            set
            {
                TxtPhoneNumber = value;
            }
        }


        public event EventHandler<myPersonalInfoEventArgs> SaveInfo_click;


        protected void Page_Load(object sender, EventArgs e)
        {
        }
        
       
        protected void btnAccept_Click(object sender, EventArgs e)
        {
        
           
            if(SaveInfo_click != null)
            {
                SaveInfo_click(this, new myPersonalInfoEventArgs(TxtFirstName.Text, TxtLastName.Text, TxtPhoneNumber.Text, TxtZipAddress.Text));
            }
            //ltrAccept.Text = string.Format("The name is: {0} {1} \nPhone Number: {2}\nZip Address: {3}", TxtFirstName.Text, TxtLastName.Text, TxtPhoneNumber.Text, TxtZipAddresss.Text);   

        }
    }
}