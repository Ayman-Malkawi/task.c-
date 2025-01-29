<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cards.aspx.cs" Inherits="task.c.cards" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
        }
        .header {
            display: flex;
            justify-content: flex-end;
            padding: 20px;
            background-color: #f8f9fa;
        }
        .header button {
            font-size: 16px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .header button:hover {
            background-color: #0056b3;
        }
        .connt {
            display: flex;
            flex-direction: row;
            justify-content: center;
            gap: 40px;
            margin-top: 20px;
        }
        .card {
            width: 18rem;
        }
    </style>
    <title>Cards</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header with Profile Button -->
            <div class="header">
                <asp:Button Text="Go to Profile" runat="server" ID="profileButton" OnClick="profileButton_Click" />
            </div>
            
            <h1>Power Of Students</h1>
            <div class="connt">
                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Show Box</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button Text="see all books" runat="server" ID="card1" OnClick="card1_Click" />
                    </div>
                </div>

                <div class="card">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Show Meetings</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button Text="see a meeting rooms" runat="server" ID="card2" OnClick="card2_Click" />
                    </div>
                </div>
            </div>

        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
