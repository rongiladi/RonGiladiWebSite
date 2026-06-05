using System;
using System.Data;

public partial class showMembers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // רק מנהל יכול להיכנס
        if (Session["nihol"] == null || Session["nihol"].ToString() != "ok")
        {
            Response.Redirect("login.aspx");
        }

        if (!Page.IsPostBack)
        {
            ShowAllUsers();
        }
    }

    private void ShowAllUsers()
    {
        string sql =
            "SELECT [first name], [second name], sex, email " +
            "FROM tUsers";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        gvUsers.DataSource = dt;
        gvUsers.DataBind();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string email = txtSearch.Text;

        string sql =
            "SELECT [first name], [second name], sex, email " +
            "FROM tUsers " +
            "WHERE email LIKE N'%" + email + "%'";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        gvUsers.DataSource = dt;
        gvUsers.DataBind();
    }
}