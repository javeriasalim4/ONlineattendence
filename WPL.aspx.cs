using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineAttendanceSystem
{
    public partial class Home : System.Web.UI.Page
    {
        string S_Attendance;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)

        {
            try
            {
                if (Radiopresent.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (Radioabsent.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Insert into WPL_Table values('" + TxtSregno.Text + "','" + TxtSname.Text + "','" + S_Attendance + "')";
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessage.Text = "Student added successfully";
                    TxtSname.Text = TxtSregno.Text = S_Attendance = "";
                    GvWpL.DataBind();               
                }
            }
            catch(Exception ex)
            {
                LblMessage.Text = ex.Message;
            }
            RefreshPage();
        }

        protected void ListSName_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (Radiopresent.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (Radioabsent.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Select * from WPL_Table where Id="+ListSName.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    SqlDataReader reader = comm.ExecuteReader();
                    while (reader.Read())
                    {
                        TxtSname.Text = reader["S_Name"].ToString();
                        TxtSregno.Text = reader["S_Regno"].ToString();
                        S_Attendance = reader["S_Attendance"].ToString();
                    }
                }

                BtnEdit.Visible = true;
                BtnAdd.Visible = false;
                BtnDelete.Visible = true; 

               
            }
            catch (Exception ex)
            {
                LblMessage.Text = ex.Message;
            }
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                if (Radiopresent.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (Radioabsent.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Update WPL_Table Set S_regno='" + TxtSregno.Text + "',S_name = '" + TxtSname.Text + "',S_Attendance ='" + S_Attendance + "' where Id=" + ListSName.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessage.Text = "Student updated successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessage.Text = ex.Message;
            }

            RefreshPage();
        }

        private void RefreshPage()
        {
            BtnEdit.Visible = false;
            BtnAdd.Visible = true;
            BtnDelete.Visible = false;
            TxtSname.Text = TxtSregno.Text = S_Attendance = "";
            GvWpL.DataBind();
            ListSName.DataBind();
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                if (Radiopresent.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (Radioabsent.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "delete from WPL_Table where Id=" + ListSName.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessage.Text = "Student deleted successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessage.Text = ex.Message;
            }

            RefreshPage();
        }
    }
    }
    
