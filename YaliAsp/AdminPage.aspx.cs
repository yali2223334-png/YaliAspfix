using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YaliAsp
{
    public partial class AdminPage : System.Web.UI.Page
    {
        private string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style='text-align: center; color: red;'>";
                msg += "<h3>אינך מנהל! אין לך הרשאה לצפות בדף זה</h3>";
                msg += "<a href='TosterMesholashim.aspx'>[המשך]</a>";
                msg += "</div>";
            }
            else
            {
                msg += "<h3><a href='ShowTable.aspx'> טבלת משתמשים </a></h3>";

                msg += "<h3><a href= 'selectGmailAndYears.aspx'> כל המשתמשים בתובת Gmail שגרים ב- חיפה, מודיעין או תל אביב</a></h3>";
            }
        }
    }
}