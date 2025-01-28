using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task.c
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sign in.aspx");


            string file = Server.MapPath("ayman2.txt");

            if (!File.Exists(file))
            {
               File.Create(file);
            }
            else
            { 
               
                using (StreamWriter sw = new StreamWriter(file, true))
                {
                    sw.WriteLine($"{firstname.Text} {lastname.Text} {Email.Text} {password.Text}");

                }


            }







        }

    }
}