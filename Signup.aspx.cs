using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAttendanceSystem
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignup_Click(object sender, EventArgs e)
        {
            try
            {
                OnlineAttendanceEntities db = new OnlineAttendanceEntities();
                SignupTable usr = new SignupTable()
                {
                    Name = Txtname.Text,
                    Email = TxtEmail.Text,
                    Age = TxtAge.Text,
                    Contact = TxtContact.Text,
                    Password = TxtPassword.Text,
                    ConfirmPassword = TxtConfirmPassword.Text

                };
                db.SignupTables.Add(usr);
                db.SaveChanges();
                lblMessage.Text = "User has been added Successfully";
            }
            catch (Exception ex)
            {
                lblMessage.Text=ex.Message;
            }
        }
    }
}