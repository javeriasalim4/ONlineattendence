using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAttendanceSystem
{
    public partial class Pythonn : System.Web.UI.Page
    {
        string S_Attendance;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddpy_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentpy.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentpy.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Insert into Python_Table values('" + TxtRegnopy.Text + "','" + TxtSnamepy.Text + "','" + S_Attendance + "')";
                using (var conn = new SqlConnection (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessagepy.Text = "Student added successfully";
                    TxtSnamepy.Text = TxtRegnopy.Text = S_Attendance = "";
                    GvPy.DataBind();
                }
            }
            catch (Exception ex)
            {
                LblMessagepy.Text = ex.Message;
            }
            RefreshPage();
        }

        protected void ListSNamepy_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentpy.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentpy.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Select * from Python_Table where Id=" + ListSNamepy.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    SqlDataReader reader = comm.ExecuteReader();
                    while (reader.Read())
                    {
                        TxtSnamepy.Text = reader["S_Name"].ToString();
                        TxtRegnopy.Text = reader["S_Regno"].ToString();
                        S_Attendance = reader["S_Attendance"].ToString();
                    }
                }

                BtnEditpy.Visible = true;
                BtnAddpy.Visible = false;
                BtnDeletepy.Visible = true;


            }
            catch (Exception ex)
            {
                LblMessagepy.Text = ex.Message;
            }
        }

        protected void BtnEditpy_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentpy.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentpy.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Update Python_Table Set S_regno='" + TxtRegnopy.Text + "',S_name = '" + TxtSnamepy.Text + "',S_Attendance ='" + S_Attendance + "' where Id=" + ListSNamepy.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessagepy.Text = "Student updated successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessagepy.Text = ex.Message;
            }

            RefreshPage();
        }

        private void RefreshPage()
        {
            BtnEditpy.Visible = false;
            BtnAddpy.Visible = true;
            BtnDeletepy.Visible = false;
            TxtSnamepy.Text = TxtRegnopy.Text = S_Attendance = "";
            GvPy.DataBind();
            ListSNamepy.DataBind();
        }

        protected void BtnDeletepy_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentpy.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentpy.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "delete from Python_Table where Id=" + ListSNamepy.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessagepy.Text = "Student deleted successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessagepy.Text = ex.Message;
            }

            RefreshPage();
        }
    }
    }


    
