using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAttendanceSystem
{
    public partial class Calculus : System.Web.UI.Page
    {
        string S_Attendance;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddcal_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentcal.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentcal.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Insert into Calculus_Table values('" + TxtRegnocal.Text + "','" + TxtSnamecal.Text + "','" + S_Attendance + "')";
                using (var conn = new SqlConnection (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessagecal.Text = "Student added successfully";
                    TxtSnamecal.Text = TxtRegnocal.Text = S_Attendance = "";
                    GvCal.DataBind();
                }
            }
            catch (Exception ex)
            {
                LblMessagecal.Text = ex.Message;
            }
            RefreshPage();
        }

        protected void ListCAL_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentcal.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentcal.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Select * from Calculus_Table where Id=" + ListCAL.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    SqlDataReader reader = comm.ExecuteReader();
                    while (reader.Read())
                    {
                        TxtSnamecal.Text = reader["S_Name"].ToString();
                        TxtRegnocal.Text = reader["S_Regno"].ToString();
                        S_Attendance = reader["S_Attendance"].ToString();
                    }

                }

                BtnEditcal.Visible = true;
                BtnAddcal.Visible = false;
                BtnDeletecal.Visible = true;


            }
            catch (Exception ex)
            {
                LblMessagecal.Text = ex.Message;
            }
        }

        protected void BtnEditcal_Click(object sender, EventArgs e)
        {

            try
            {
                if (RadioPresentcal.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentcal.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Update Calculus_Table Set S_regno='" + TxtRegnocal.Text + "',S_name = '" + TxtSnamecal.Text + "',S_Attendance ='" + S_Attendance + "' where Id=" + ListCAL.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessagecal.Text = "Student updated successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessagecal.Text = ex.Message;
            }

            RefreshPage();
        }
        private void RefreshPage()
        {
            BtnEditcal.Visible = false;
            BtnAddcal.Visible = true;
            BtnDeletecal.Visible = false;
            TxtSnamecal.Text = TxtRegnocal.Text = S_Attendance = "";
            GvCal.DataBind();
            ListCAL.DataBind();
        }

        protected void BtnDeletecal_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentcal.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentcal.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "delete from Calculus_Table where Id=" + ListCAL.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessagecal.Text = "Student deleted successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessagecal.Text = ex.Message;
            }

            RefreshPage();
        }
    }
    }

   
