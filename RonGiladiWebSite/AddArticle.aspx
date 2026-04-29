<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddArticle.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

    <style>
        .article-container {
            max-width: 800px;
            margin: auto;
            padding: 20px;
            font-family: Arial;
            line-height: 1.6;
        }

        .article-title {
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .article-meta {
            color: gray;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .article-image {
            width: 100%;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .article-content {
            font-size: 18px;
        }

        .divider {
            margin: 30px 0;
            border-top: 1px solid #ddd;
        }
    </style>

    <div class="article-container">

        <div class="article-title">
            הכותרת של כתבת הדמה
        </div>

        <div class="article-meta">
            פורסם: 29.04.2026 | מאת: מערכת האתר
        </div>

        <img class="article-image" src="" />

        <div class="article-content">
            <p>
                זהו טקסט דמה של כתבה באתר. כאן תוכל להציג תוכן של מאמר, חדשות או מידע כלשהו.
            </p>

            <p>
                המטרה של הדף הזה היא להראות איך מאמר נראה באתר אמיתי, עם עיצוב נקי וברור.
            </p>

            <p>
                אפשר להוסיף כאן עוד פסקאות, תמונות או ציטוטים לפי הצורך.
            </p>
        </div>

        <div class="divider"></div>

        <div style="color: gray; font-size: 14px;">
            תגובות (דמה): אין תגובות עדיין
        </div>

    </div>

</asp:Content>


