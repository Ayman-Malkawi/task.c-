<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="task.c_.edit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body { background-color: blue; }
        .card { border: none; }
        .image { position: relative; }
        .image span { background-color: blue; color: #fff; padding: 6px; height: 30px; width: 30px; border-radius: 50%; font-size: 13px; position: absolute; display: flex; justify-content: center; align-items: center; top: -0px; right: 0px; }
        .user-details h4 { color: blue; }
        .ratings { font-size: 30px; font-weight: 600; display: flex; justify-content: left; align-items: center; color: #f9b43a; }
        .user-details span { text-align: left; }
        .inputs label { display: flex; margin-left: 3px; font-weight: 500; font-size: 13px; margin-bottom: 4px; }
        .inputs input { font-size: 14px; height: 40px; border: 2px solid #ced4da; }
        .inputs input:focus { box-shadow: none; border: 2px solid blue; }
        .about-inputs label { display: flex; margin-left: 3px; font-weight: 500; font-size: 13px; margin-bottom: 4px; }
        .about-inputs textarea { font-size: 14px; height: 100px; border: 2px solid #ced4da; resize: none; }
        .about-inputs textarea:focus { box-shadow: none; }
        .btn { font-weight: 600; }
        .btn:focus { box-shadow: none; }
    </style>
    <title>Edit Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-3">
            <div class="card p-3 text-center">
                <div class="d-flex flex-row justify-content-center mb-3">
                    <div class="d-flex flex-column ms-3 user-details">
                        <h4 class="mb-0">Zenda Grace</h4>
                        <div class="ratings"> <span>4.0</span> <i class='bx bx-star ms-1'></i> </div> <span>Pro Member</span>
                    </div>
                </div>
                <h4>Edit Profile</h4>
                <div class="row">
                    <div class="col-md-6">
                        <div class="inputs">
                            <label>Name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="inputs">
                            <label>Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="inputs">
                            <label>Country</label>
                            <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" placeholder="Country"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="about-inputs">
                            <label>About</label>
                            <asp:TextBox ID="txtAbout" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Tell us about yourself"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="mt-3 gap-2 d-flex justify-content-end">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="save1_Click" CssClass="px-3 btn btn-sm btn-primary" />
                </div>

                <!-- Add Back Button -->
                <div class="mt-3 gap-2 d-flex justify-content-start">
                    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" CssClass="px-3 btn btn-sm btn-secondary" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
