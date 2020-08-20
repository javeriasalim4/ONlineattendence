using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAttendanceSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    OnlineAttendanceEntities db = new OnlineAttendanceEntities();
                    var userName = Txtname.Text;
                    var userPass = TxtPassword.Text;
                    var usr = from u in db.SignupTables
                              where u.Name == userName && u.Password == userPass
                              select u;

                    if(usr.Count() > 0)
                    {
                        Response.Redirect("Main.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Username or Password is invalid";
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = ex.Message;
                }
              
            }
        }
    }
}