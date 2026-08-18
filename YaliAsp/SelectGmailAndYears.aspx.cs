using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YaliAsp
{

    public partial class SelectGmailAndYears : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string tableName = "usersTbl";
            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style='text-align: center; color: red;'>";
                msg += "<h3> אינך מנהל! אין לך הרשאה לצפות בדף זה</h3>";
                msg += "<a href='TosterMesholashim.aspx'>[המשך]</a>";
                if (Session["admin"].ToString() == "no")
                {
                    msg += "<div style='text-align: center; color: red;'>";
                    msg += "<h3>  אינך מנהל! אין לך הרשאה לצפות בדף זה</h3>";
                    msg += "<a href='InfoPage1.aspx'>[המשך] </a>";
                    msg += "</div>";
                }
                else
                {
                    tableName = "usersTbl";
                    sqlSelect = $"select * from {tableName}";
                    sqlSelect += " where email like '%@gmail.com' and city in (N'מטולה', N'הרצליה', N'מרכז')";
                }
                //{
                //    Response.Redirect("Login.aspx");
                //}

                {
                    Response.Redirect("Default.aspx");
                }
                

                //sqlSelect = $"select * from {tableName}";

                DataTable table = Helper.ExecuteDataTable(sqlSelect);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "הטבלה ריקה. לא נרשמו משתמשים";
                else
                {
                    st = "";
                    st += "<tr><th>שם משתמש</th><th>שם פרטי</th><th>שם משפחה</th><th>אימייל</th><th>שנת לידה</th><th>מגדר</th><th>מס' טלפון</th><th>עיר</th><th>כדורגל</th><th>כדורסל</th><th>משחקי מחשב</th><th>צפייה בטלוויזיה</th><th>אחר</th><th>סיסמה</th></tr>";

                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += $"<td>{table.Rows[i]["uName"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["fName"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["lName"]}</td>";
                        st += $"<td class='left'>{table.Rows[i]["email"]}</td>";
                        st += $"<td>{table.Rows[i]["yearBorn"]}</td>";
                        st += $"<td>{table.Rows[i]["gender"]}</td>";
                        st += $"<td>{table.Rows[i]["prefix"]}-{table.Rows[i]["phone"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["city"]}</td>";
                        st += $"<td>{table.Rows[i]["hob1"]}</td>";
                        st += $"<td>{table.Rows[i]["hob2"]}</td>";
                        st += $"<td>{table.Rows[i]["hob3"]}</td>";
                        st += $"<td>{table.Rows[i]["hob4"]}</td>";
                        st += $"<td>{table.Rows[i]["hob5"]}</td>";
                        st += $"<td>{table.Rows[i]["pw"]}</td>";
                        st += "</tr>";
                    }
                }

                msg = $"נמצאו  {length} משתמשים";
            }
        }
    }
}

