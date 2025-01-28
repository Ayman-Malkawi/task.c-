using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task.c_
{
    public partial class button_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("sign up.aspx");



        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sign in.aspx");


        }
    }
}