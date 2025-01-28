using System;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task.c
{
    public partial class Sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void but_Click(object sender, EventArgs e)
        {


            string file = Server.MapPath("ayman2.txt");

            string[] usersData = File.ReadAllLines(file);

            bool userFound = false;

            foreach (string user in usersData)
            {
                string[] userData = user.Split(' ');

                if (userData[2] == "admin@gmail.com")
                {
                    Response.Redirect("admin_card.aspx");

                }


                if (emai.Text == userData[2] && pass.Text == userData[3])
                {
                    Response.Redirect("cards.aspx");


                    result.Text = "Welcome";
                    result.Visible = true;
                    userFound = true;
                    break; 
                }
            }

            if (!userFound)
            {
                result.Text = "Invalid Email or Password";
                result.Visible = true;
            }
        }
    }
}
