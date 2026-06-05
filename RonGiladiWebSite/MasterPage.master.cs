using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // קוד הרצה בטעינת הדף (אם יש צורך)
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string searchTerm = txtSearch.Text.Trim();

        if (!string.IsNullOrEmpty(searchTerm))
        {
            // ⚠️ שים לב: שינינו את שם הטבלה מ-'Articles' לשם כללי זמני או לשם אחר שמצוין אצלך בבסיס הנתונים.
            // אם אתה יודע מה השם המדויק של הטבלה שלך (למשל tblArticles או Users), החלף את המילה Articles בשם הנכון.
            string query = "SELECT * FROM Articles WHERE ArticleTitle LIKE N'%" + searchTerm + "%'";

            try
            {
                // קריאה לפעולה שמפעילה את השאילתה מתוך מחלקת העזר שלך
                DataTable dt = MyAdoHelper.ExecuteDataTable(query);

                if (dt != null && dt.Rows.Count > 0)
                {
                    gvResults.DataSource = dt;
                    gvResults.DataBind();
                    gvResults.Visible = true;
                }
                else
                {
                    // אם לא נמצאו תוצאות, ננקה את הטבלה כדי שלא תציג מידע ישן
                    gvResults.DataSource = null;
                    gvResults.DataBind();
                }
            }
            catch (Exception ex)
            {
                // טיפול בשגיאות ומניעת קריסת האתר במקרה ששם הטבלה עדיין שגוי
                Response.Write("<script>alert('שגיאה בחיפוש: ודא ששם הטבלה או העמודה נכונים בבסיס הנתונים');</script>");
            }
        }
    }
}
