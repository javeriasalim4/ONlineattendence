<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pythonn.aspx.cs" Inherits="OnlineAttendanceSystem.Pythonn" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 228px;
        }
        .auto-style3 {
            width: 363px;
        }
        .auto-style4 {
            width: 204px;
        }
        .auto-style5 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>PYTHON FUNDAMENTALS</h1>
    <p>Online Attendance System</p>
  </div> 
        </div>
        <table class="table table-dark table-striped table-hover">
    <tr>
        <td class="auto-style2" rowspan="5">
            <asp:ListBox ID="ListSNamepy" runat="server" AutoPostBack="True" CssClass="auto-style5" DataSourceID="SqlDataSource2" DataTextField="S_Name" DataValueField="Id" Height="153px" OnSelectedIndexChanged="ListSNamepy_SelectedIndexChanged" Width="133px"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Python_Table]"></asp:SqlDataSource>
        </td>
        <td class="auto-style3">Student Name</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtSnamepy" CssClass="form-control" runat="server"></asp:TextBox>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field cannot be empty"
                ControlToValidate="TxtSnamepy" ForeColor="Red" ></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td class="auto-style3">Registration Number</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtRegnopy" CssClass="form-control" runat="server"></asp:TextBox>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TxtRegnopy" ForeColor="Red" ErrorMessage="This field cannot be empty"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Attendance</td>
        <td class="auto-style4">
            <asp:RadioButton ID="RadioPresentpy" Text="Present"  GroupName="tt"  runat="server" />

        </td>
        <td>
            <asp:RadioButton ID="RadioAbsentpy" Text="Absent" GroupName="tt" runat="server" />
        </td>
    </tr>
         <tr>
                      <td class="auto-style3">  <asp:Button ID="BtnAddpy" runat="server" Text="Add Student" Class="btn-primary " OnClick="BtnAddpy_Click" />
                          <asp:Button ID="BtnEditpy" runat="server" Visible="false"  Class="btn-success" Text="Edit Student" OnClick="BtnEditpy_Click" />
                          <asp:Button ID="BtnDeletepy" runat="server" Visible="false" Class="btn-danger" Text="Delete Student" OnClick="BtnDeletepy_Click" />
                      </td>
             </tr>
 <tr>
                      <td class="auto-style3">
                          <asp:Label ID="LblMessagepy"  runat="server" Text="" ForeColor="#FF5050"></asp:Label>
                      </td>
                  </tr>


</table>

        <asp:GridView ID="GvPy" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" Width="100%" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="S_Regno" HeaderText="S_Regno" SortExpression="S_Regno" />
                <asp:BoundField DataField="S_Name" HeaderText="S_Name" SortExpression="S_Name" />
                <asp:BoundField DataField="S_Attendance" HeaderText="S_Attendance" SortExpression="S_Attendance" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Python_Table]"></asp:SqlDataSource>

    </form>
</body>
</html>
