using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebAppZaikin
{
    public class OrderDbContext:DbContext
    {
        public OrderDbContext() : base("OrderDeliv")
        {

        }
        public DbSet<OrderBase> OrderDelivery { get; set; }
    }
}