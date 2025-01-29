using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task.c
{
    public partial class cards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void card1_Click(object sender, EventArgs e)
        {
            Response.Redirect("see_all_books.aspx");
        }

        protected void card2_Click(object sender, EventArgs e)
        {
            Response.Redirect("see a meeting rooms.aspx");
        }

        // Add Profile button event
        protected void profileButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx"); // Redirecting to profile page
        }
    }
}
