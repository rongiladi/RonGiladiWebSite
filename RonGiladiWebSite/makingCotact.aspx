<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="makingCotact.aspx.cs" Inherits="makingCotact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- כותרת ראשית -->
    <div style="text-align: center; margin-top: 20px;">
        <h1>צרו קשר & אודות המפתח</h1>
        <p style="color: #666; font-size: 16px;">קצת עלי ועל הפרויקט שלי</p>
    </div>

    <!-- טבלת המבנה המרכזית לחלוקת העמוד -->
    <table border="0" style="width: 80%; margin: 30px auto; border-collapse: collapse;" cellpadding="15">
        <tr>
            <!-- עמודה ימנית: תמונה ופרטים יבשים -->
            <td style="width: 35%; text-align: center; vertical-align: top; border-left: 1px solid #ddd;">
                
                <!-- *** כאן משלבים את התמונה שלך *** -->
                <!-- כרגע שמתי תמונת דמו מהתיקייה שלך, שנה את השם לקובץ התמונה האמיתי שלך -->

                <img src="תמונות%20הגלריה/אני.jpg" alt="רון גלעדי" width="180" style="border-radius: 50%; border: 3px solid #333; box-shadow: 0px 4px 8px rgba(0,0,0,0.1);" />
                <h3 style="margin-top: 15px; margin-bottom: 5px;">פרטים אישיים</h3>
                <p style="margin: 5px 0;"><strong>תפקיד:</strong> מפתח</p>
                <p style="margin: 5px 0;"><strong>אימייל:</strong> 1000960433@educ.org.il</p>
                <p style="margin: 5px 0;"><strong>מיקום:</strong> ישראל</p>
            </td>

            <!-- עמודה שמאלית: רקע לימודי ותחומי עניין -->
            <td style="width: 65%; vertical-align: top; text-align: right;">
                <h2 style="color: #333; margin-top: 0;">קצת עלי</h2>
                <p style="line-height: 1.6; font-size: 16px;">
                    ברוכים הבאים לאתר החדשות הדמה שיצרתי, יצרתי את האתר כפרוייקט גמר במורחב מדעי המחשב. 
                </p>
                <p style="line-height: 1.6; font-size: 16px;">
                    במסגרת הלימודים והפרויקט הנוכחי שלי, הקמתי אתר חדשות דינמי הכולל גלריית תמונות, מערכת ניהול משתמשים (הרשמה והתחברות חכמה), התממשקות מול DATA BASE (SQL Server) וכתיבת בדיקות תקינות קלט (Validation) מורכבות בצד הלקוח ובצד השרת.
                </p>

                <h3 style="color: #333; margin-top: 20px;">הכישורים הטכנולוגיים שלי בפרויקט:</h3>
                <ul style="line-height: 1.8; font-size: 15px; padding-right: 20px;">
                    <li>בדיקות תקינות טפסים מתקדמות באמצעות <strong>JavaScript (Regular Expressions)</strong>.</li>
                    <li>ניהול הרשאות, מנהלים ומשתמשים בעזרת <strong>Sessions</strong> בשרת.</li>
                    <li>עבודה מול DATA BASE (<strong>MyAdoHelper</strong>) ושילוב שאילתות SQL.</li>
                </ul>
            </td>
        </tr>
    </table>

</asp:Content>


