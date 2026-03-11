using System;
using System.Collections.Generic;
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
                Response.Redirect("showMembers.aspx");
            }
            else
            {
                // בדיקת משתמש רגיל
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE email = N'" + mail + "' " +
                    "AND password = N'" + password + "'";

                bool userExists = MyAdoHelper.IsExist(sqlSelect);

                if (!userExists)
                    stResult = "אימייל או סיסמה שגויים";
                else
                    Response.Redirect("HomePage.aspx");
            }
        }
    }
}