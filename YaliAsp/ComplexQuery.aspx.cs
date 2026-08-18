using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YaliAsp
{
    public partial class ComplexQuery : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            string tableName = "usersTbl";
            string field1 = Request.Form["feild1"];
            string field2 = Request.Form["feild2"];

            string value1 = Request.Form["value1"];
            string value2 = Request.Form["value2"];

            string op = Request.Form["op"];

            string qry1 = field1 + " like '%" + value1 + "%'";
            if (field1 == "gndr" || field1 == "yearBorn" || field1 == "prefix")
            {
                qry1 = field1 + " = '" + value1 + "'";
            }
            if (field2 == "hobby")
            {
                switch (value1)
                {
                    case "1": field1 = "ch1"; break;
                    case "2": field1 = "ch2"; break;
                    case "3": field1 = "ch3"; break;
                    case "4": field1 = "ch4"; break;
                    case "5": field1 = "ch5"; break;
                }
                qry1 = field1 + " = 'T'";
            }
            if (value2 == null)
                sqlSelect = "SELECT * FROM" + tableName + " where (" + qry1 + ");";
            else
            {
                string qry2 = field2 + " like '%" + value2 + "%'";
                if (field2 == "gndr" || field2 == "yearBorn" || field2 == "prefix")
                {
                    qry2 = field2 + " = '" + value2 + "'";
                }
                if (field2 == "hobby")
                {
                    switch (value2)
                    {
                        case "1": field2 = "ch1"; break;
                        case "2": field2 = "ch2"; break;
                        case "3": field2 = "ch3"; break;
                        case "4": field2 = "ch4"; break;
                        case "5": field2 = "ch5"; break;
                    }
                    qry1 = field2 + " = 'T'";
                }
                if (op == "and")
                    sqlSelect = "SELECT * FROM" + tableName + " where (" + qry1 + " and " + qry2 + ");";
                else
                    sqlSelect = "SELECT * FROM" + tableName + " where  (" + qry1 + " or " + qry2 + ");";

                sql = sqlSelect;

                DataTable table = Helper.ExecuteDataTable(sqlSelect);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "לא נמצאו רשומות תואמות לחיפוש";
                else
                {
                    st = "<table border ='1' align='canter'>";
                    st += "<tr>";
                    st += "<th>שם משתמש</th>";
                    st += "<th>שם משפחה</th>";
                    st += "<th>שם פרטי</th>";
                    st += "<th>דוא\"ל</th>";
                    st += "<th>שנת לידה</th>";
                    st += "<th>טלפון</th>";
                    st += "<th>Computers</th>";
                    st += "<th>Music</th>";
                    st += "<th>Movies</th>";
                    st += "<th>TV</th>";
                    st += "<th>Horses</th>";
                    st += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += "<td>" + table.Rows[i]["uName"] + "</td>";
                        st += "<td>" + table.Rows[i]["lName"] + "</td>";
                        st += "<td>" + table.Rows[i]["fName"] + "</td>";
                        st += "<td>" + table.Rows[i]["eMail"] + "</td>";
                        st += "<td>" + table.Rows[i]["gndr"] + "</td>";
                        st += "<td>" + table.Rows[i]["yearBorn"] + "</td>";
                        st += "<td>" + table.Rows[i]["prefix"] + "</td>";
                        st += "<td>" + table.Rows[i]["ch1"] + "</td>";
                        st += "<td>" + table.Rows[i]["ch2"] + "</td>";
                        st += "<td>" + table.Rows[i]["ch3"] + "</td>";
                        st += "<td>" + table.Rows[i]["ch4"] + "</td>";
                        st += "<td>" + table.Rows[i]["ch5"] + "</td>";
                        // st += "<td>" + table.Rows[i]["pass"] + "</td>";
                        st += "</tr>";
                    }
                    st += "</table>";
                    msg = length + "אנשים עונים לתוצאות החיפוש";

                }

            }

        }
    }
}