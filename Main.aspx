<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="OnlineAttendanceSystem.Main" %>

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
    <form id="form1" runat="server">
        <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1> Main Page </h1>
    <p>Online Attendance System</p>
  </div> 
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="WPL" OnClick="Button1_Click" />
            <asp:Button ID="Button3" runat="server" Text="OOP" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Calculus" OnClick="Button4_Click" />
            <asp:Button ID="Button5" runat="server" Text="Python" OnClick="Button5_Click" />
            <asp:Button ID="Button6" runat="server" Text="DBMS" OnClick="Button6_Click" />

  
        </div>
    </form>
</body>
</html>
