using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task.c_
{
    public partial class add_meeting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("meeting.txt");

          


            using (StreamWriter sw = new StreamWriter(filePath, true)) // write the data that the user input it => in text file, more than one time
            {
                sw.WriteLine($"{id.Text} {name.Text} {type.Text} {level.Text}"); // to print the book infos in the text file


            }
        }
    }
}