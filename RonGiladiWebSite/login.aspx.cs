using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string mail = Request.Form["mail"];
            string password = Request.Form["password"];

            // התחברות מנהל
            if (mail == "ronMenahel@gmail.com" && password == "menahel1234")
            {
                Session["nihol"] = "ok";
                Session["user"] = "ok";
                Session["name"] = "מנהל";

                Response.Redirect("showMembers.aspx");
            }
            else
            {
                // בדיקת משתמש רגיל מול בסיס הנתונים
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE email = N'" + mail + "' " +
                    "AND password = N'" + password + "'";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

                if (dt.Rows.Count == 0)
                {
                    stResult = "שגיאה: אינך רשום במערכת, או שהפרטים שהזנת שגויים.";
                }
                else
                {
                    stResult = "הכניסה הצליחה";

                    // ✅ תיקון חשוב כאן
                    Session["user"] = "ok";
                    Session["name"] = mail;

                    Response.Redirect("HomePage.aspx");
                }
            }
        }
    }
}