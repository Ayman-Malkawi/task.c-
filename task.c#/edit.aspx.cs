using System;
using System.IO;
using System.Web.UI;

namespace task.c_
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                LoadProfileData();
            }
        }

        private void LoadProfileData()
        {
            string file = Server.MapPath("prof.txt");

            if (File.Exists(file))
            {
                string[] lines = File.ReadAllLines(file);

                if (lines.Length > 0)
                {
                    string firstLine = lines[0]; 
                    string[] dataSplit = firstLine.Split(' '); 

                    if (dataSplit.Length >= 4) 
                    {
                        txtName.Text = dataSplit[0]; 
                        txtEmail.Text = dataSplit[1]; 
                        txtCountry.Text = dataSplit[2]; 
                        txtAbout.Text = dataSplit[3];
                    }
                }
            }
        }

        protected void save1_Click(object sender, EventArgs e)
        {
            string file = Server.MapPath("prof.txt");

            if (string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtEmail.Text) || string.IsNullOrEmpty(txtCountry.Text) || string.IsNullOrEmpty(txtAbout.Text))
            {
                Response.Write("<script>alert('Please fill all fields.');</script>");
                return;
            }

            using (StreamWriter sw = new StreamWriter(file, false))   
            {
                sw.WriteLine($"{txtName.Text} {txtEmail.Text} {txtCountry.Text} {txtAbout.Text}");
            }

            Response.Write("<script>alert('Profile saved successfully.');</script>");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }
    }
}
