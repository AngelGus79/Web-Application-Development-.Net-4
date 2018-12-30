using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
namespace CreatingCustomWebControls
{
    public class AddressUCContainer: Control,INamingContainer
    {
        public AddressUCContainer(string FirstName, string LastName, string PhoneNumber, string ZipCode)
        {
            this.FirstName = FirstName;
            this.LastName = LastName;
            this.ZipCode = ZipCode;
            this.PhoneNumber = PhoneNumber;
        }


        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string ZipCode { get; set; }
        public string PhoneNumber { get; set; }
    }
}