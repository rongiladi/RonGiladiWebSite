using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class דף_התחברות :  System.Web.UI.Page
{
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fn = Request.Form["firstname"];  // שם פרטי
            string ln = Request.Form["lastname"];   // שם משפחה
            string gender = Request.Form["gender"]; // מין
            string mail = Request.Form["mail"];     // אימייל
            string password = Request.Form["password"]; // סיסמה
            string agree = Request.Form["agree"];   // אישור תנאים



            /*
            //האם המשתמש קיים?
            //לפי אימייל
            //אם לא קיים
            //עושים ISERTR
            //ובמקום לכתוב נרשמת בהצלחה
            //Response.Redirect("login.aspx");
            //אם קיים
            //stResult="המשתמש קיים"
            */

            string sqlInsert =
                "INSERT INTO tUsers  " +
                "VALUES (" +
                "N'" + fn + "', " +
                "N'" + ln + "', " +
                "N'" + gender + "', " +
                "N'" + mail + "', " +
                "N'" + password + "', " +
                "N'" + agree + "')";


            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            stResult = "נרשמת בהצלחה!";
        }
    }
}