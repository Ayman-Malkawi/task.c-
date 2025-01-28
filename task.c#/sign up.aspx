<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign up.aspx.cs" Inherits="task.c.sign_up" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style> 

        .gradient-custom {
/* fallback for old browsers */
background: #f093fb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1))
}

.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}



    </style>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Registration Form</h3>
           

              <div class="row">
                <div class="col-md-6 mb-4">

                  <div data-mdb-input-init class="form-outline">
                        <label class="form-label" for="firstName">First Name</label>
                      <asp:TextBox runat="server" ID="firstname" />
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <div data-mdb-input-init class="form-outline">
                    <label class="form-label" for="lastName">Last Name</label>
                    <asp:TextBox runat="server" ID="lastname" />

                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div data-mdb-input-init class="form-outline datepicker w-100">
<%--                    <input type="text" class="form-control form-control-lg" id="birthdayDate" />--%>
<%--                    <label for="birthdayDate" class="form-label">Birthday</label>--%>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

<%--                  <h6 class="mb-2 pb-1">Gender: </h6>--%>

                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
<%--                      value="option1" checked />
<%--                    <label class="form-check-label" for="femaleGender">Female</label>--%>
                  </div>--%>

                  <div class="form-check form-check-inline">
<%--                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"--%>
                      value="option2" />
<%--                    <label class="form-check-label" for="maleGender">Male</label>--%>
                  </div>

                  <div class="form-check form-check-inline">
<%--                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"--%>
                      value="option3" />
<%--                    <label class="form-check-label" for="otherGender">Other</label>--%>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div data-mdb-input-init class="form-outline">
                  <label class="form-label" for="emailAddress">Email</label>
                      <asp:TextBox runat="server" ID="Email" />

                  </div>

                </div>
                <div class="col-md-6 mb-4 pb-2">

                  <div data-mdb-input-init class="form-outline">
                        <label class="form-label" for="phoneNumber">password</label>
                      <asp:TextBox runat="server" ID="password"  />
                  
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-12">

                  <select class="select form-control-lg">
                    <option value="1" disabled>Choose option</option>
                    <option value="2">Subject 1</option>
                    <option value="3">Subject 2</option>
                    <option value="4">Subject 3</option>
                  </select>
                  <label class="form-label select-label">Choose option</label>

                </div>
              </div>

              <div class="mt-4 pt-2">
<%--                <input data-mdb-ripple-init class="btn btn-primary btn-lg" type="submit" value="Submit" />--%>

                  <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
              </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
