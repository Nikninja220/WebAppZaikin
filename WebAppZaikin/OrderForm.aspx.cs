using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Web.ModelBinding;
using WebAppZaikin;

namespace WebAppZaikin
{
    public partial class OrderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderBase order = new OrderBase();
            IValueProvider provider = new FormValueProvider(ModelBindingExecutionContext);
            if (IsPostBack&IsEmpty())
            {
                if (TryUpdateModel<OrderBase>(order, provider))
                {
                    OrderDbContext context = new OrderDbContext();
                    context.OrderDelivery.Add(order);
                    context.SaveChanges();
                }
            }
        }

        protected void NextPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllOrders.aspx");
        }

        private bool IsEmpty()
        {
            if (SenderCity.Text == "" || SenderAddress.Text == "" || RecepientCity.Text == "" || RecepientAddress.Text == "" || Weight.Text == "" || DateStart.Text == "")
                return false;
            return true;
        }
    }
}