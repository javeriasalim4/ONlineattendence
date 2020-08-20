using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAttendanceSystem
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WPL.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("OOP.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Calculus.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pythonn.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("DBMSS.aspx");
        }
    }
}