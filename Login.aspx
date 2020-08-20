<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineAttendanceSystem.Login" %>

<!DOCTYPE html>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<%-- to add a background pic    style="background-image: url('43911.jpg'); width :100% ;height:100%"--%>
    <form id="form1" runat="server" >
          <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>Login Page</h1>
    <p>Online Attendance System</p>
  </div>
</div>
  <div>
      <asp:Label ID="lblMessage" Text="" runat="server" Font-Size="Larger" ForeColor="Red"></asp:Label>
  </div>
        
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                  
        <table class="table table-dark table-hover">
            <tr>
                <td>Name</td>
                <td>

                    <asp:TextBox ID="Txtname" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="Txtname" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

                    <tr>

                <td> Password </td>

                <td>

                    <asp:TextBox ID="TxtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                             <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="TxtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                 <br />
                               
                        </td>
            </tr>
            
                        
                         <tr>
                <td> </td>
                <td>
                    <asp:Button ID="ButtonLogin" class="btn btn-danger" runat="server" Text="Login" OnClick="ButtonLogin_Click"  /> 
                    

                </td>
                             
            </tr>
            <tr>
                <td>
                    <a href="Signup.aspx" target="_blank">Dont have an account?Click here to signup </a>
                </td>
            </tr>
              </table>
            </div>
            <div class="col-sm-2"></div>
        </div>
     
    </form>
        
</body>
</html>
