using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAttendanceSystem
{
    public partial class DBMSS : System.Web.UI.Page
    {
        string S_Attendance;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddpy_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentdb.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentdb.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Insert into DBMS_Table values('" + TxtRegnodb.Text + "','" + TxtSnamedb.Text + "','" + S_Attendance + "')";
                using (var conn = new SqlConnection (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessagedb.Text = "Student added successfully";
                    TxtSnamedb.Text = TxtRegnodb.Text = S_Attendance = "";
                    GvDBMS.DataBind();
                }
            }
            catch (Exception ex)
            {
                LblMessagedb.Text = ex.Message;
            }
            RefreshPage();
        }

        protected void ListDBMS_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentdb.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentdb.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Select * from DBMS_Table where Id=" + ListDBMS.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    SqlDataReader reader = comm.ExecuteReader();
                    while (reader.Read())
                    {
                        TxtSnamedb.Text = reader["S_Name"].ToString();
                        TxtRegnodb.Text = reader["S_Regno"].ToString();
                        S_Attendance = reader["S_Attendance"].ToString();
                    }
                   
                }

                BtnEditdb.Visible = true;
                BtnAdddb.Visible = false;
                BtnDeletedb.Visible = true;
                

            }
            catch (Exception ex)
            {
                LblMessagedb.Text = ex.Message;
            }
        }

        protected void BtnEditdb_Click(object sender, EventArgs e)
        {

            try
            {
                if (RadioPresentdb.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentdb.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "Update DBMS_Table Set S_regno='" + TxtRegnodb.Text + "',S_name = '" + TxtSnamedb.Text + "',S_Attendance ='" + S_Attendance + "' where Id=" + ListDBMS.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessagedb.Text = "Student updated successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessagedb.Text = ex.Message;
            }

            RefreshPage();
        }
        private void RefreshPage()
        {
            BtnEditdb.Visible = false;
            BtnAdddb.Visible = true;
            BtnDeletedb.Visible = false;
            TxtSnamedb.Text = TxtRegnodb.Text = S_Attendance = "";
            GvDBMS.DataBind();
            ListDBMS.DataBind();
        }

        protected void BtnDeletedb_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioPresentdb.Checked)
                {
                    S_Attendance = "Present";
                }
                else if (RadioAbsentdb.Checked)
                {
                    S_Attendance = "Absent";
                }
                var query = "delete from DBMS_Table where Id=" + ListDBMS.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Classes.mdf';Integrated Security=True"))
                {

                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    LblMessagedb.Text = "Student deleted successfully";

                }
            }
            catch (Exception ex)
            {
                LblMessagedb.Text = ex.Message;
            }

            RefreshPage();
        }
    }
    }
    
    
