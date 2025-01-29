using System;
using System.IO;
using System.Web.UI.WebControls;

namespace task.c
{
    public partial class see_all_books : System.Web.UI.Page
    {
        protected Table DynamicTable;

        protected void Page_Load(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("books.txt");
            if (!IsPostBack)
            {
                AddHeaderRows();
                AddRows(filePath); // Load all books initially
            }
        }

        private void AddHeaderRows()
        {
            TableRow headerRow = new TableRow();
            headerRow.Cells.Add(new TableHeaderCell { Text = "Book ID" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Book Name" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Book Type" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Book Level" });
            DynamicTable.Rows.Add(headerRow);
        }

        private void AddRows(string filePath, string searchQuery = "")
        {
            if (!File.Exists(filePath))
            {
                File.CreateText(filePath).Close(); // Create the file if it doesn't exist
            }

            string[] lines = File.ReadAllLines(filePath); // Read all lines from the file

            // Clear existing rows (except header)
            DynamicTable.Rows.Clear();
            AddHeaderRows();

            foreach (string line in lines)
            {
                string[] columns = line.Split(' '); // Split the line into columns

                if (columns.Length == 4)
                {
                    string bookName = columns[1]; // Assuming Book Name is the second column

                    // If search query is empty or matches the book name, add the row
                    if (string.IsNullOrEmpty(searchQuery) || bookName.IndexOf(searchQuery, StringComparison.OrdinalIgnoreCase) >= 0)
                    {
                        TableRow row = new TableRow();
                        foreach (string columnValue in columns)
                        {
                            TableCell cell = new TableCell { Text = columnValue };
                            row.Cells.Add(cell);
                        }
                        DynamicTable.Rows.Add(row);
                    }
                }
            }

            // If no rows are added (no matching results), display a message
            if (DynamicTable.Rows.Count == 1) // Only header row exists
            {
                TableRow errorRow = new TableRow();
                TableCell errorCell = new TableCell
                {
                    Text = "No matching books found.",
                    ColumnSpan = 4,
                    CssClass = "text-center text-danger"
                };
                errorRow.Cells.Add(errorCell);
                DynamicTable.Rows.Add(errorRow);
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchQuery = SearchTextBox.Text.Trim(); 
            string filePath = Server.MapPath("books.txt");
            AddRows(filePath, searchQuery); 
        }
    }
}