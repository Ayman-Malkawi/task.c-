<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_card.aspx.cs" Inherits="task.c_.admin_card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


      <style>
          .cont {
              display: flex;
              flex-direction: row;
              justify-content: center;
              gap: 40px;
          }
      
  </style>
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
        <div class="cont">
            <div>
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Show Meetings</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button Text="add a meeting rooms" runat="server" ID="card2" OnClick="card1_Click" />
                    </div>
                </div>
            </div>


        
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Show Meetings</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button Text="add a books" runat="server" ID="Button1" OnClick="card2_Click" />
                    </div>
                </div>
            </div>


        </div>

        </div>

    </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
