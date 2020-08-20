<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DBMSS.aspx.cs" Inherits="OnlineAttendanceSystem.DBMSS" %>

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
            width: 249px;
        }
        .auto-style3 {
            width: 317px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>DATABASE MANAGEMENT SYSTEMS </h1>
    <p>Online Attendance System</p>
  </div> 
        </div>
        <table class="table table-dark table-striped table-hover">
    <tr>
        <td class="auto-style2" rowspan="5">
            <asp:ListBox ID="ListDBMS" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="S_Name" DataValueField="Id" Height="165px" Width="179px" OnSelectedIndexChanged="ListDBMS_SelectedIndexChanged"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DBMS_Table]"></asp:SqlDataSource>
        </td>
        <td class="auto-style3">Student Name</td>
        <td>
            <asp:TextBox ID="TxtSnamedb" CssClass="form-control" runat="server"></asp:TextBox>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field cannot be empty"
                ControlToValidate="TxtSnamedb" ForeColor="Red" ></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td class="auto-style3">Registration Number</td>
        <td>
            <asp:TextBox ID="TxtRegnodb" CssClass="form-control" runat="server"></asp:TextBox>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TxtRegnodb" ForeColor="Red" ErrorMessage="This field cannot be empty"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Attendance</td>
        <td>
            <asp:RadioButton ID="RadioPresentdb" Text="Present"  GroupName="tt"  runat="server" />

        </td>
        <td>
            <asp:RadioButton ID="RadioAbsentdb" Text="Absent" GroupName="tt" runat="server" />
        </td>
    </tr>
         <tr>
                      <td class="auto-style3">  <asp:Button ID="BtnAdddb" runat="server" Text="Add Student" Class="btn-primary " OnClick="BtnAddpy_Click" />
                          <asp:Button ID="BtnEditdb" runat="server" Visible="false"  Class="btn-success" Text="Edit Student" OnClick="BtnEditdb_Click" />
                          <asp:Button ID="BtnDeletedb" runat="server" Visible="false" Class="btn-danger" Text="Delete Student" OnClick="BtnDeletedb_Click" />
                      </td>
             </tr>
 <tr>
                      <td class="auto-style3">
                          <asp:Label ID="LblMessagedb"  runat="server" Text="" ForeColor="#FF5050"></asp:Label>
                      </td>
                  </tr>


</table>

        <asp:GridView ID="GvDBMS" CssClass="table-hover" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="S_Regno" HeaderText="S_Regno" SortExpression="S_Regno" />
                <asp:BoundField DataField="S_Name" HeaderText="S_Name" SortExpression="S_Name" />
                <asp:BoundField DataField="S_Attendance" HeaderText="S_Attendance" SortExpression="S_Attendance" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DBMS_Table]"></asp:SqlDataSource>

    </form>
</body>
</html>
