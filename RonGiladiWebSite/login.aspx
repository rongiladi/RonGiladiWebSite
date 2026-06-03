<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="javascript">

    // פונקציית הבדיקה הראשית - בדיוק כמו בהרשמה
    function checkAll() {
        let result = true;

        // איפוס הודעות השגיאה בכל לחיצה
        document.getElementById("mailErr").innerHTML = "";
        document.getElementById("passwordErr").innerHTML = "";

        // הרצת הבדיקות לשדות
        if (!checkEmail()) result = false;
        if (!checkPassword()) result = false;

        return result;
    }

    // בדיקת תקינות האימייל בעזרת ה-pattern שלך
    function checkEmail() {
        let mail = document.getElementById("mail").value;
        let pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!pattern.test(mail)) {
            document.getElementById("mailErr").innerHTML = "אימייל לא תקין";
            return false;
        }
        return true;
    }

    // בדיקת אורך סיסמה - לפחות 6 תווים כמו בהרשמה
    function checkPassword() {
        let password = document.getElementById("password").value;

        if (password.length < 6) {
            document.getElementById("passwordErr").innerHTML = "סיסמה חייבת להיות לפחות 6 תווים";
            return false;
        }
        return true;
    }

</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1>Log in</h1>

<!-- הוספת ה-onsubmit שמפעיל את הבדיקות, בדיוק כמו בהרשמה -->
<form runat="server" method="post" onsubmit="return checkAll();">

<!-- שמרנו על הטבלה המקורית שלך והרחבנו עמודה שלישית לשגיאות -->
<table border="1" height="500px">
    <tr>
        <td>אימייל:</td>
        <td><input type="text" id="mail" name="mail"></td>
        <!-- עמודת השגיאה החדשה של האימייל -->
        <td id="mailErr" style="color: red; padding: 5px;"></td>
    </tr>

    <tr>
        <td>סיסמה:</td>
        <td><input type="text" id="password" name="password"></td>
        <!-- עמודת השגיאה החדשה של הסיסמה -->
        <td id="passwordErr" style="color: red; padding: 5px;"></td>
    </tr>

    <tr>
        <!-- שינוי ל-colspan="3" כי עכשיו יש 3 עמודות בטבלה -->
        <td colspan="3" align="center" style="height:10px">
            <input type="submit" value="שלח">
        </td>
    </tr>
</table>
    אין חשבון קיים? צור חשבון 
    <a href="דף התחברות.aspx"> כאן </a>
</center>
</form>

    <!-- כאן תופיע הודעה מצד השרת ("אינך רשום במערכת") במידה והפרטים לא קיימים ב-SQL -->
    <div style="color: red; font-weight: bold; margin-top: 15px;">
        <%=stResult%>
    </div>
</asp:Content>
