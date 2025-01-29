<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="task.c_.profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body { background: #BA68C8; }
        .form-control:focus { box-shadow: none; border-color: #BA68C8; }
        .profile-button { background: #BA68C8; box-shadow: none; border: none; }
        .profile-button:hover { background: #682773; }
        .profile-button:focus { background: #682773; box-shadow: none; }
        .profile-button:active { background: #682773; box-shadow: none; }
        .back:hover { color: #682773; cursor: pointer; }
    </style>
    <title>Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container rounded bg-white mt-5">
                <div class="row">
                    <div class="col-md-4 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                            <img class="rounded-circle mt-5" src="https://i.imgur.com/0eg0aG0.jpg" width="90">
                            <asp:Label ID="lblName" runat="server" CssClass="font-weight-bold" Text="John Doe"></asp:Label>
                            <asp:Label ID="lblEmail" runat="server" CssClass="text-black-50" Text="john_doe12@bbb.com"></asp:Label>
                            <asp:Label ID="lblCountry" runat="server" Text="United States"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <div class="d-flex flex-row align-items-center back">
                                    <i class="fa fa-long-arrow-left mr-1 mb-1"></i>
                                    <h6>Back to home</h6>
                                </div>
                                <asp:Button Text="Edit Profile" runat="server" ID="edit" class="btn btn-primary profile-button" OnClick="edit_Click" />
                            </div>
                            <div class="row mt-2">
                                <asp:TextBox runat="server" ID="firstname" placeholder="First Name" class="form-control" />
                                <asp:TextBox runat="server" ID="lastname" class="form-control" placeholder="Last Name" />
                            </div>
                            <div class="row mt-3">
                                <asp:TextBox runat="server" ID="email" placeholder="Enter Email" class="form-control" />
                            </div>
                            <div class="row mt-3">
                                <asp:TextBox runat="server" ID="country" placeholder="Country" class="form-control" />
                            </div>
                            <div class="row mt-3"></div>
                            <asp:Button Text="Save" runat="server" ID="save" OnClick="save_Click" class="btn btn-primary profile-button" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>