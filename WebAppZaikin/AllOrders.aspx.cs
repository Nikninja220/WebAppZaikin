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
    public partial class AllOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Return_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderForm.aspx");
        }

    }
}