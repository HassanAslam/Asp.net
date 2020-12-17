using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace EShopping
{
    public class UserDO
    {
        public string Fname
        { get; set; }
        public string Lname
        { get; set; }
        public string Email
        { get; set; }
        public string Gender
        { get; set; }
        public string Address
        { get; set; }
        public string Phone
        { get; set; }
        public string password
        { get; set; }
        public string ConfirmPassword
        { get; set; }


    }
}