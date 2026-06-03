<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="גלריה.aspx.cs" Inherits="גלריה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 style="text-align: center;">גלריית התמונות שלי</h2>

    <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
        <!-- שורה ראשונה -->
        <tr>
            <td>
                <img src="תמונות הגלריה/דיגיטל וטכנולוגיה.png" alt="דיגיטל וטכנולוגיה" width="200" />
                <p>דיגיטל וטכנולוגיה</p>
            </td>
            <td>
                <img src="תמונות הגלריה/ספורט.png" alt="ספורט" width="200" />
                <p>ספורט</p>
            </td>
            <td>
                <img src="תמונות הגלריה/חינוך.png" alt="חינוך" width="200" />
                <p>חינוך</p>
            </td>
        </tr>
        
        <!-- שורה שנייה -->
        <tr>
            <td>
                <img src="תמונות הגלריה/כלכלה.png" alt="כלכלה וניהול" width="200" />
                <p>כלכלה וניהול</p>
            </td>
            <td>
                <img src="תמונות הגלריה/מדע.png" alt="מדע ורפואה" width="200" />
                <p>מדע ורפואה</p>
            </td>
            <td>
                <img src="תמונות הגלריה/פוליטיקה וממשל.png" alt="פוליטיקה" width="200" />
                <p>פוליטיקה</p>
            </td>
        </tr>
    </table>

</asp:Content>


