<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculus.aspx.cs" Inherits="OnlineAttendanceSystem.Calculus" %>

<!DOCTYPE html><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 258px;
        }
        .auto-style3 {
            width: 259px;
        }
        .auto-style4 {
            width: 397px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>Calculus</h1>
    <p>Online Attendance System</p>
  </div> 
        </div>
        <table class="table table-dark table-striped table-hover">
    <tr>
        <td class="auto-style2" rowspan="5">
            <asp:ListBox ID="ListCAL" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="S_Name" DataValueField="Id" Height="149px" Width="211px" OnSelectedIndexChanged="ListCAL_SelectedIndexChanged"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Calculus_Table]"></asp:SqlDataSource>
        </td>
        <td class="auto-style3">Student Name</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtSnamecal" CssClass="form-control" runat="server"></asp:TextBox>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field cannot be empty"
                ControlToValidate="TxtSnamecal" ForeColor="Red" ></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td class="auto-style3">Registration Number</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtRegnocal" CssClass="form-control" runat="server"></asp:TextBox>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TxtRegnocal" ForeColor="Red" ErrorMessage="This field cannot be empty"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Attendance</td>
        <td class="auto-style4">
            <asp:RadioButton ID="RadioPresentcal" Text="Present"  GroupName="tt"  runat="server" />

        </td>
        <td>
            <asp:RadioButton ID="RadioAbsentcal" Text="Absent" GroupName="tt" runat="server" />
        </td>
    </tr>
         <tr>
                      <td class="auto-style3">  <asp:Button ID="BtnAddcal" runat="server" Text="Add Student" Class="btn-primary " OnClick="BtnAddcal_Click" />
                          <asp:Button ID="BtnEditcal" runat="server" Visible="false"  Class="btn-success" Text="Edit Student" OnClick="BtnEditcal_Click" />
                          <asp:Button ID="BtnDeletecal" runat="server" Visible="false" Class="btn-danger" Text="Delete Student" OnClick="BtnDeletecal_Click" />
                      </td>
             </tr>
 <tr>
                      <td class="auto-style3">
                          <asp:Label ID="LblMessagecal"  runat="server" Text="" ForeColor="#FF5050"></asp:Label>
                      </td>
                  </tr>


</table>


          <asp:GridView ID="GvCal" CssClass="table-hover"  runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Calculus_Table]"></asp:SqlDataSource>


        </form>
</body>
</html>
