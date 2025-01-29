using System;
using System.IO;
using System.Web.UI;

namespace task.c_
{
    public partial class profile : System.Web.UI.Page
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

                    if (dataSplit.Length >= 4) // 
                    {
                        firstname.Text = dataSplit[0]; 
                        lastname.Text = dataSplit[1];  
                        email.Text = dataSplit[2];    
                        country.Text = dataSplit[3];   

                        lblName.Text = $"{dataSplit[0]} {dataSplit[1]}";
                        lblEmail.Text = dataSplit[2];
                        lblCountry.Text = dataSplit[3];
                    }
                }
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit.aspx");
        }

        protected void save_Click(object sender, EventArgs e)
        {
            string file = Server.MapPath("prof.txt");

            if (string.IsNullOrEmpty(firstname.Text) || string.IsNullOrEmpty(lastname.Text) || string.IsNullOrEmpty(email.Text) || string.IsNullOrEmpty(country.Text))
            {
                Response.Write("<script>alert('Please fill all fields.');</script>");
                return;
            }

            if (!File.Exists(file))
            {
                using (StreamWriter sw = File.CreateText(file))
                {
                    sw.WriteLine($"{firstname.Text} {lastname.Text} {email.Text} {country.Text}");
                }
            }
            else
            {
                using (StreamWriter sw = new StreamWriter(file, false)) 
                {
                    sw.WriteLine($"{firstname.Text} {lastname.Text} {email.Text} {country.Text}");
                }
            }

            lblName.Text = $"{firstname.Text} {lastname.Text}";
            lblEmail.Text = email.Text;
            lblCountry.Text = country.Text;

            Response.Write("<script>alert('Profile saved successfully.');</script>");
        }
    }
}