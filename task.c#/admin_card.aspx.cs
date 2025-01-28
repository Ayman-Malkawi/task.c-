using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task.c_
{
    public partial class admin_card : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void card1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add-meeting.aspx");
        }
        protected void card2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Books.aspx");

        }
    }
}