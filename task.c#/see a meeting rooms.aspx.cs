using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace task.c
{
    public partial class see_a_meeting_rooms : System.Web.UI.Page
    {
        protected Table DynamicTables;


        protected void Page_Load(object sender, EventArgs e)
        {

            

            if (!IsPostBack)
            {
                string filePath = Server.MapPath("meeting.txt");

                AddHeaderRow();
                AddRow(filePath);

            }

        }



        private void AddHeaderRow()
        {
            // Create a new row
            TableRow headerRow = new TableRow();

            // Add header cells
            headerRow.Cells.Add(new TableHeaderCell { Text = "Meeting ID" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Meeting Name" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Meeting Type" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Meeting Level" });




            //Appends this row to DynamicTable
            DynamicTables.Rows.Add(headerRow);
        }


        // This method reads the file and adds rows of data to the table
        private void AddRow(string filePath)
        {




            string[] lines = File.ReadAllLines(filePath); // Read all lines from the file into an array of strings (lines)


            foreach (string line in lines)
            {
                string[] columns = line.Split(' '); // Split the line to columns ex: 12 | 34 | 56 | 78

                if (columns.Length == 4)
                {
                    TableRow row = new TableRow();

                    foreach (string columnValue in columns) // inside each index from the line
                    {
                        // Adds each value as a TableCell
                        TableCell cell = new TableCell();
                        cell.Text = columnValue; // cell obj => put inside it a value for each column 
                        row.Cells.Add(cell); // add the cell to the row each index in columns 
                    }



                    // Adds the row to DynamicTable.
                    DynamicTables.Rows.Add(row);
                }
                else
                {
                    TableRow errorRow = new TableRow();
                    TableCell errorCell = new TableCell
                    {
                        Text = "No data available. File not found.",
                        ColumnSpan = 4,
                        CssClass = "text-center text-danger"
                    };
                    errorRow.Cells.Add(errorCell);
                    DynamicTables.Rows.Add(errorRow);
                }
            }

        }

    }
}