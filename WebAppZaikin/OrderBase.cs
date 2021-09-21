using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppZaikin
{
    public class OrderBase
    {
        public int ID { get; set; }
        public string SenderCity { get; set; }
        public string SenderAddress { get; set; }
        public string RecepientCity { get; set; }
        public string RecepientAddress { get; set; }
        public double Weight { get; set; }
        public DateTime DateStart { get; set; }
    }
}