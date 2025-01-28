<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Books.aspx.cs" Inherits="task.c.Add_Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>ID</label>
            <br />
            <asp:TextBox ID="id" runat="server" Placeholder="Enter ID"></asp:TextBox>
            <br />
            <br />
            <br />

            <label>Name</label>
            <br />
            <asp:TextBox ID="name" runat="server" Placeholder="Enter Name"></asp:TextBox>
            <br />
            <br />
            <br />

            <label>Type</label>
            <br />
            <asp:TextBox ID="type" runat="server" Placeholder="Enter Type"></asp:TextBox>
            <br />
            <br />
            <br />

            <label>Level</label>
            <br />
            <asp:TextBox ID="level" runat="server" Placeholder="Enter Level"></asp:TextBox>
            <br />
            <br />
            <br />

            <asp:Button ID="btnAdd" runat="server" Text="Add Book" OnClick="btnAdd_Click" />
        </div>
    </form>
</body>
</html>
