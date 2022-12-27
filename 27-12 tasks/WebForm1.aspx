<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_27_12_tasks.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>


                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="Name" class="form-control"  runat="server"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Name" runat="server" ErrorMessage="Must Fill Name" class="form-control" ValidationGroup="G1"></asp:RequiredFieldValidator>
                      <label class="form-label" for="form3Example1c">Your Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="email" id="Email" runat="server" class="form-control" />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" class="form-control" ControlToValidate="Email" ErrorMessage="Must Fill Email" ValidationGroup="G1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Email" class="form-control" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="G1"></asp:RegularExpressionValidator>
                      <label class="form-label" for="form3Example3c">Your Email</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" id="password" class="form-control" runat="server" />
                        <asp:RequiredFieldValidator class="form-control" ID="RequiredFieldValidator3"  ControlToValidate="password" runat="server" ErrorMessage="Must Fill Password" ValidationGroup="G1"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1"  class="form-control" runat="server" ControlToCompare="password" ControlToValidate="repassword"   ErrorMessage="Password Not Match" ValidationGroup="G1"></asp:CompareValidator>
                      <label class="form-label"  for="form3Example4c">Password</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" id="repassword" runat="server" class="form-control" />
                      <label class="form-label" for="form3Example4cd">Repeat your password</label>
                    </div>
                  </div>

                  <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label" for="form2Example3">
                      I agree all statements in <a href="#!">Terms of service</a>
                    </label>
                  </div>

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
<%--                    <button type="button" runat="server" class="btn btn-primary btn-lg">Register</button>--%>
                      <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" ValidationGroup="G1"  />
                  </div>


              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <div>
         <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card border-0 shadow rounded-3 my-5">
          <div class="card-body p-4 p-sm-5">
            <h5 class="card-title text-center mb-5 fw-light fs-5">Sign In</h5>
              <div class="form-floating mb-3">
                <input type="email" class="form-control" id="em" runat="server" placeholder="name@example.com">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" class="form-control" ControlToValidate="em"  runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="G2"></asp:RequiredFieldValidator>
                <label for="floatingInput">Email address</label>

              </div>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" id="pa" runat="server" placeholder="Password">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  class="form-control" runat="server" ControlToValidate="pa" ErrorMessage="RequiredFieldValidator" ValidationGroup="G2" ></asp:RequiredFieldValidator>


                <label for="floatingPassword">Password</label>
              </div>

              <div class="form-check mb-3">
                <input class="form-check-input" type="checkbox" value="" id="rememberPasswordCheck">
                <label class="form-check-label" for="rememberPasswordCheck">
                  Remember password
                </label>
              </div>
              <div class="d-grid">
               
              </div>
              <hr class="my-4">
              <div class="d-grid mb-2">
                
              </div>
              <div class="d-grid">
               <%-- <button class="btn btn-facebook btn-login text-uppercase fw-bold" type="submit">
                  <i class="fab fa-facebook-f me-2"></i> Sign in with Facebook
                </button>--%>
                  <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" ValidationGroup="G2" />

              </div>
          </div>
        </div>
      </div>
    </div>
  </div>

    </div>

</asp:Content>
