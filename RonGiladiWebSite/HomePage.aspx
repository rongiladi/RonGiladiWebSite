<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- תוכן החדשות הראשי - בנוי מטבלה פשוטה לחלוקת העמוד -->
    <table style="width: 100%; margin-top: 20px; border-collapse: collapse;" cellpadding="15">
        <tr>
            <!-- עמודה ימנית: הכתבה הראשית והגדולה (תופסת 70% מרוחב המסך) -->
            <td style="width: 70%; vertical-align: top; border-left: 1px solid #ccc;">
                <div style="background-color: #fafafa; padding: 15px; border: 1px solid #ddd;">
                    <h2 style="color: #cc0000; margin-top: 0;">כותרת ראשית: אירוע דרמטי במרכז הארץ</h2>
                    <p style="font-weight: bold; color: #444;">כאן יופיע כותרת המשנה או תקציר הכתבה המרכזית של היום.</p>
                    <p>זהו טקסט דמו עבור הכתבה הראשית. באתר אמיתי הטקסט הזה יישלף מתוך בסיס הנתונים או ייכתב בצורה דינמית. כרגע זהו רק מילוי מקום כדי לראות את מבנה הדף.</p>
                    <a href="#" style="color: blue; text-decoration: underline;">קרא עוד...</a>
                </div>
            </td>

            <!-- עמודה שמאלית: מבזקים וכתבות קטנות (תופסת 30% מרוחב המסך) -->
            <td style="width: 30%; vertical-align: top;">
                <h3 style="margin-top: 0; color: #333; border-bottom: 2px solid #cc0000; padding-bottom: 5px;">מבזקים ועדכונים</h3>
                
                <!-- כתבה קטנה 1 -->
                <div style="margin-bottom: 15px; background-color: #f9f9f9; padding: 10px; border: 1px solid #eee;">
                    <h4 style="margin: 0 0 5px 0; color: #333;">חדשות כלכלה</h4>
                    <p style="margin: 0; font-size: 14px;">הבורסה נסגרה בעליות שערים חדות בסיום יום המסחר.</p>
                </div>

                <!-- כתבה קטנה 2 -->
                <div style="margin-bottom: 15px; background-color: #f9f9f9; padding: 10px; border: 1px solid #eee;">
                    <h4 style="margin: 0 0 5px 0; color: #333;">חדשות טכנולוגיה</h4>
                    <p style="margin: 0; font-size: 14px;">אפליקציה ישראלית חדשה כובשת את חנויות היישומים.</p>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>


