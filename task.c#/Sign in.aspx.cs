using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task.c_
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

            foreach (string user in usersData)
            {
                string[] userData = user.Split(' ');
                if(emai.Text == userData[0] && pass.Text == userData[1])
                   
                {  
                   
                }
            }


        }
    }
}