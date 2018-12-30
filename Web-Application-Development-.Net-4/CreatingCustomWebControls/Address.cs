using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CreatingCustomWebControls
{
    public  class Address
    {
        public Address(string FirsName, string LastName, string ZipCode, string PhoneNumber)
        {
            this.FirstName = FirstName;
            this.LastName = LastName;
            this.PhoneNumber = PhoneNumber;
            this.ZipCode = ZipCode;
        }

        

        public  string FirstName { get; set; }
        public  string LastName { get; set; }
        public  string ZipCode { get; set; }
        public  string PhoneNumber { get; set; }

    }
}