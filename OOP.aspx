<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OOP.aspx.cs" Inherits="OnlineAttendanceSystem.OOP" %>

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
            width: 250px;
        }
        .auto-style2 {
            width: 400px;
        }
        .auto-style3 {
            width: 264px;
            height: 32px;
        }
        .auto-style4 {
            width: 264px;
        }
    </style>
</head>
<body>
              <form id="form2" runat="server">
          <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>OBJECT ORIENTED PROGRAMMING</h1>
    <p>Online Attendance System</p>
  </div> 
        </div>
<table class="table table-dark table-striped table-hover">
    <tr>
        <td class="auto-style1" rowspan="5">
            <asp:ListBox ID="ListOOP" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="S_Name" DataValueField="Id" Height="159px" Width="167px" OnSelectedIndexChanged="ListOOP_SelectedIndexChanged"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [OOP_Table]"></asp:SqlDataSource>
        </td>
        <td class="auto-style4">Student Name</td>
        <td class="auto-style2">
            <asp:TextBox ID="TxtSnameoop" CssClass="form-control" runat="server"></asp:TextBox>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field cannot be empty"
                ControlToValidate="TxtSnameoop" ForeColor="Red" ></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td class="auto-style4">Registration Number</td>
        <td class="auto-style2">
            <asp:TextBox ID="TxtRegnooop" CssClass="form-control" runat="server"></asp:TextBox>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TxtRegnooop" ForeColor="Red" ErrorMessage="This field cannot be empty"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Attendance</td>
        <td class="auto-style2">
            <asp:RadioButton ID="RadioPresentoop" Text="Present"  GroupName="tt"  runat="server" />

        </td>
        <td>
            <asp:RadioButton ID="RadioAbsentoop" Text="Absent" GroupName="tt" runat="server" />
        </td>
    </tr>
         <tr>
                      <td class="auto-style4">  <asp:Button ID="BtnAddoop" runat="server" Text="Add Student" Class="btn-primary " OnClick="BtnAddoop_Click" />
                          <asp:Button ID="BtnEditoop" runat="server" Visible="false"  Class="btn-success" Text="Edit Student" OnClick="BtnEditoop_Click" />
                          <asp:Button ID="BtnDeleteoop" runat="server" Visible="false" Class="btn-danger" Text="Delete Student" OnClick="BtnDeleteoop_Click" />
                      </td>
             </tr>
    <tr>
                      <td class="auto-style3">
                          <asp:Label ID="LblMessageOOP"  runat="server" Text="" ForeColor="#FF5050"></asp:Label>
                      </td>
                  </tr>

</table>
                  <asp:GridView ID="GvOOP" runat="server" AutoGenerateColumns="False" CssClass="table-hover" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
                      <AlternatingRowStyle BackColor="#CCCCCC" />
                      <Columns>
                          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                          <asp:BoundField DataField="S_Regno" HeaderText="S_Regno" SortExpression="S_Regno" />
                          <asp:BoundField DataField="S_Name" HeaderText="S_Name" SortExpression="S_Name" />
                          <asp:BoundField DataField="S_Attendance" HeaderText="S_Attendance" SortExpression="S_Attendance" />
                      </Columns>
                      <FooterStyle BackColor="#CCCCCC" />
                      <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                      <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#808080" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#383838" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [OOP_Table]"></asp:SqlDataSource>
    </form>
</body>
</html>
