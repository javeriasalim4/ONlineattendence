<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="OnlineAttendanceSystem.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<head runat="server">
    <title></title>
</head>
<body>
       <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>Signup Page</h1>
    <p>Online Attendance System</p>
  </div>
</div>
    <form id="form1" runat="server">
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

                <td> Email </td>

                <td>

                    <asp:TextBox ID="TxtEmail" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                             <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="TxtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                 <br />
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
            </tr>
            
                        
                    <tr>

                <td> Age </td>

                <td>

                    <asp:TextBox ID="TxtAge" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                             <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="TxtAge" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td> Contact</td>

                <td>

                    <asp:TextBox ID="TxtContact"  CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                     <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="TxtContact" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            
            <tr>
                    <td>
                        Password
                    </td>
                    <td>    
                        <asp:TextBox ID="TxtPassword" TextMode="Password"  runat="server"></asp:TextBox>
                </td>
                     <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="TxtPassword" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
            <tr>
            <td> Confirm Password </td>
                <td>

                    <asp:TextBox ID="TxtConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
                </td>
                     <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="TxtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                         <br />
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtConfirmPassword" ErrorMessage="Password and Confirm Password do not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
                    <tr>
                <td> </td>
                <td>
                    <asp:Button ID="ButtonSignup" class="btn btn-danger" runat="server" Text="Signup" OnClick="ButtonSignup_Click"   /> </asp:Button>
                    <td> <a href="Login.aspx"> click to go on login  </a></td>

                </td>
            </tr>


                    <tr>
                <td colspan="2"> 
                    <asp:Label ID="lblMessage" runat="server" Text="" Font-Size="Larger" ForeColor="DarkRed" ></asp:Label>
                        </td>
            </tr>


        </table>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </form>
</body>
</html>
