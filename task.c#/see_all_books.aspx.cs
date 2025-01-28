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
    public partial class see_all_books : System.Web.UI.Page
    {
        protected Table DynamicTable;


        protected void Page_Load(object sender, EventArgs e)
        {
            // Ensures the code only runs the first time the page loads (not on every button click or form submission).
            string filePath = Server.MapPath("books.txt");
            if (!IsPostBack)
            {

                AddHeaderRows();
                AddRows(filePath);

            }

        }



        private void AddHeaderRows()
        {
            // Create a new row
            TableRow headerRow = new TableRow();

            // Add header cells
            headerRow.Cells.Add(new TableHeaderCell { Text = "Book ID" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Book Name" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Book Type" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Book Level" });


            // DynamicTable : This refers to the table where the data will be displayed (defined in the ASPX file).
            // Add the row to the table

            //Appends this row to DynamicTable
            DynamicTable.Rows.Add(headerRow);
        }


        // This method reads the file and adds rows of data to the table
        private void AddRows(string filePath)
        {


            if (!File.Exists(filePath))
            {
                File.CreateText(filePath);
            }

            string[] lines = File.ReadAllLines(filePath); // Read all lines from the file into an array of strings (lines)


            // loop inside lines
            foreach (string line in lines)
            {
                string[] columns = line.Split(' '); // Split the line to columns ex: 12 | 34 | 56 | 78

                if (columns.Length == 4)
                {
                    // if there is 4 columns create new row
                    TableRow row = new TableRow();

                    foreach (string columnValue in columns) // inside each index from the line
                    {
                        // Adds each value as a TableCell
                        TableCell cell = new TableCell();
                        cell.Text = columnValue; // cell obj => put inside it a value for each column 
                        row.Cells.Add(cell); // add the cell to the row each index in columns 
                    }

                    // the same above without loop

                    // TableRow row = new TableRow();
                    //row.Cells.Add(new TableCell { Text = columns[0] }); // Book ID
                    // row.Cells.Add(new TableCell { Text = columns[1] }); // Book Name
                    // row.Cells.Add(new TableCell { Text = columns[2] }); // Book Type
                    // row.Cells.Add(new TableCell { Text = columns[3] }); // Book Level

                    // Adds the row to DynamicTable.
                    DynamicTable.Rows.Add(row);
                }
                else
                {
                    // Display an error if the file doesn't exist
                    TableRow errorRow = new TableRow();
                    TableCell errorCell = new TableCell
                    {
                        Text = "No data available. File not found.",
                        ColumnSpan = 4,
                        CssClass = "text-center text-danger"
                    };
                    errorRow.Cells.Add(errorCell);
                    DynamicTable.Rows.Add(errorRow);
                }
            }

        }

    }
}
