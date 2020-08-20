using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAttendanceSystem
{
    public partial class OOP : System.Web.UI.Page
    {
        string S_Attendance;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void BtnAddoop_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentoop.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentoop.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Insert into OOP_Table values('" + TxtRegnooop.Text + "','" + TxtSnameoop.Text + "','" +S_Attendance + "')";
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessageOOP.Text = "Student added successfully";
                    TxtSnameoop.Text = TxtRegnooop.Text = S_Attendance = "";
                    GvOOP.DataBind();
                }
            }
            catch (Exception ex)
            {
                LblMessageOOP.Text = ex.Message;
            }
            RefreshPage();
        }

        protected void ListOOP_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentoop.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentoop.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Select * from OOP_Table where Id=" + ListOOP.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    SqlDataReader reader = comm.ExecuteReader();
                    while (reader.Read())
                    {
                        TxtSnameoop.Text = reader["S_Name"].ToString();
                        TxtRegnooop.Text = reader["S_Regno"].ToString();
                        S_Attendance = reader["S_Attendance"].ToString();
                    }

                }

                BtnEditoop.Visible = true;
                BtnAddoop.Visible = false;
                BtnDeleteoop.Visible = true;


            }
            catch (Exception ex)
            {
                LblMessageOOP.Text = ex.Message;
            }
        }

        protected void BtnEditoop_Click(object sender, EventArgs e)
        {

            try
            {
                if (RadioPresentoop.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentoop.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Update OOP_Table Set S_regno='" + TxtRegnooop.Text + "',S_name = '" + TxtSnameoop.Text + "',S_Attendance ='" + S_Attendance + "' where Id=" + ListOOP.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessageOOP.Text = "Student updated successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessageOOP.Text = ex.Message;
            }

            RefreshPage();
        }
        private void RefreshPage()
        {
            BtnEditoop.Visible = false;
            BtnAddoop.Visible = true;
            BtnDeleteoop.Visible = false;
            TxtSnameoop.Text = TxtRegnooop.Text = S_Attendance = "";
            GvOOP.DataBind();
            ListOOP.DataBind();
        }

        protected void BtnDeleteoop_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentoop.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentoop.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "delete from OOP_Table where Id=" + ListOOP.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessageOOP.Text = "Student deleted successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessageOOP.Text = ex.Message;
            }

            RefreshPage();
        }
    }
    }
    
    
    
