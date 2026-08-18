using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YaliAsp
{
    public partial class Login : System.Web.UI.Page
    {
        public string msg = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["sumbit"] !=null)
            {
                string tableName = "usersTbl";
                string sqlLogin;
                //string fName = Request.Form["fName"];
                //string lName = Request.Form["lName"];
                //string email = Request.Form["email"];
                string uName = Request.Form["uName"];
                string pw = Request.Form["pw"];
                sqlLogin = $"select * from {tableName} where uName = '{uName}' and pw = '{pw}'";
                DataTable table = Helper.ExecuteDataTable(sqlLogin);
               int length = table.Rows.Count;
                if (length == 0 )
                {
                    msg += "<div style = 'text-align: center; color: red;'>";
                    msg += "<h3>אינך קיים במערכת</h3>";
                    msg += "<a href.'SignUp.aspx'>[ רישום ]</a>";
                    msg += "</div>";
                }
                else
                {
                    Session["uName"] = table.Rows[0]["uName"];
                    Session["fName"] = table.Rows[0]["fName"];
                    Response.Redirect("TosterMesholashim");
                }


                //st = "<table border='1' dir='ltr'>";

                //st += "<tr><th colspan='2'>הפרטים שהתקבלו מהשרת</th></tr>";
                //st += "<tr><td>user name:</td><td>" + uName + "</td></tr>";
                //st += $"<tr><td>first name:</td><td>{fName}</td></tr>";
                //st += $"<tr><td>last name:</td><td>{lName}</td></tr>";
                //st += $"<tr><td>email:</td><td>{email}</td></tr>";

                //st += "</table>";
            }

        }
    }
}