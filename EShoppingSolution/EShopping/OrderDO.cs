using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EShopping
{
    public class OrderDO
    {
        public string orderid
        { get; set; }
        public string sno
        { get; set; }
        public string productid
        { get; set; }
        public string pname
        { get; set; }
        public string price
        { get; set; }
        public string quantity
        { get; set; }
        public string orderdate
        { get; set; }
    }
}