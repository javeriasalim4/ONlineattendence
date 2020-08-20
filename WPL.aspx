<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WPL.aspx.cs" Inherits="OnlineAttendanceSystem.Home" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 222px;
        }
        .auto-style2 {
            width: 443px;
        }
        .auto-style3 {
            width: 422px;
        }
        .auto-style5 {
            width: 422px;
            height: 28px;
        }
        .auto-style6 {
            width: 443px;
            height: 28px;
        }
        .auto-style7 {
            height: 28px;
        }
        </style>
</head>
<body >
    <form id="form1" runat="server">
          <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>WEB PROGRAMMING LANGUAGES</h1>
    <p>Online Attendance System</p>
  </div>
              <table class="table table-dark table-striped table-hover">
                  <tr>
                      <td class="auto-style1" rowspan="5">
                          <asp:ListBox ID="ListSName" CssClass="form-control" runat="server" Height="128px" Width="172px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="S_Name" DataValueField="Id" OnSelectedIndexChanged="ListSName_SelectedIndexChanged"></asp:ListBox>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [WPL_Table]"></asp:SqlDataSource>
                      </td>
                      <td class="auto-style3">Student Name</td>
                      <td class="auto-style2">
                          <asp:TextBox ID="TxtSname" CssClass="form-control" runat="server"></asp:TextBox></td>
                      <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="TxtSname" ForeColor="Red"></asp:RequiredFieldValidator></td>
                  </tr>
                    <tr>
                      <td class="auto-style5">Registration Number</td>
                      <td class="auto-style6">
                          <asp:TextBox ID="TxtSregno" CssClass="form-control" runat="server"></asp:TextBox></td>
                        <td class="auto-style7"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="TxtSregno" ForeColor="Red"></asp:RequiredFieldValidator></td>
                  </tr>
                    <tr>
                      <td class="auto-style3">Attendance</td>
                      <td class="auto-style2"> <asp:RadioButton ID="Radiopresent" runat="server" GroupName="att" Text="Present" /></td>
                        <td> <asp:RadioButton ID="Radioabsent" runat="server" GroupName="att" Text=" Absent" /></td>
                        <td></td>
                  </tr>
                  <tr>
                      <td class="auto-style3">  <asp:Button ID="BtnAdd" runat="server" Text="Add Student" Class="btn-primary " OnClick="BtnAdd_Click" />
                          <asp:Button ID="BtnEdit" runat="server" Visible="false"  Class="btn-success" Text="Edit Student" OnClick="BtnEdit_Click" />
                          <asp:Button ID="BtnDelete" runat="server" Visible="false" Class="btn-danger" Text="Delete Student" OnClick="BtnDelete_Click" />
                      </td>
                      <td class="auto-style2">
                         
                           
                  </tr>
                  <tr>
                      <td class="auto-style3">
                          <asp:Label ID="LblMessage"  runat="server" Text="" ForeColor="#FF5050"></asp:Label>
                      </td>
                  </tr>
              </table>
              <div>
                  <asp:GridView ID="GvWpL" class="table table-primary table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="159px">
                      <Columns>
                          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                          <asp:BoundField DataField="S_Regno" HeaderText="S_Regno" SortExpression="S_Regno" />
                          <asp:BoundField DataField="S_Name" HeaderText="S_Name" SortExpression="S_Name" />
                          <asp:BoundField DataField="S_Attendance" HeaderText="S_Attendance" SortExpression="S_Attendance" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [WPL_Table]"></asp:SqlDataSource>
              </div>
</div>
    </form>
</body>
</html>
