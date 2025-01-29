<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="see_all_books.aspx.cs" Inherits="task.c.see_all_books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>See All Books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <!-- Search Box -->
            <div class="mb-3">
                <asp:TextBox ID="SearchTextBox" runat="server" CssClass="form-control" placeholder="Search by Book Name"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Button ID="SearchButton" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="SearchButton_Click" />
            </div>

            <!-- Table to Display Books -->
            <asp:Table ID="DynamicTable" runat="server" CssClass="table table-striped"></asp:Table>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>