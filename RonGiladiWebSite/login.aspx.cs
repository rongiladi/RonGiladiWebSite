using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login :  System.Web.UI.Page
{
    public string stResult = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string mail = Request.Form["mail"];
            string password = Request.Form["password"];

            // התחברות מנהל
            if (mail == "rinatMenahel@gmail.com" && password == "menahel1234")
            {
                Session["nihol"] = "ok";
                Session["name"] = "רון מנהל";
                Response.Redirect("showMembers.aspx");
            }
            else
            {
                // בדיקת משתמש רגיל
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE email = N'" + mail + "' " +
                    "AND password = N'" + password + "'";

                DataTable dt =MyAdoHelper.ExecuteDataTable(sqlSelect);
                bool userExist = MyAdoHelper.IsExist(sqlSelect);
                if (dt.Rows.Count == 0)
                {
                    stResult = "אימייל או סיסמה שגויים";
                }
                else
                    stResult = "הכניסה הצליחה";
                    Response.Redirect("HomePage.aspx");
            }
        }
    }
}