<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="form.aspx.vb" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form name="example" method="get" action="html_page13.html">
    <h1>הזן פרטים:</h1>
    :שם פרטי <input type="text" name="firstname">
    :שם משפחה <input type="text" name="lastname">
        <br />
    בחר בתי עסק מועדפים: 
        <br />
    יוחננוף<input type="checkbox" name="check1" checked>
    שופרסל<input type="checkbox" name="check1">
    אבי מוצרים לבית<input type="checkbox" name="check1" checked>
    מוסך מוטי לוחים<input type="checkbox" name="check1">
        <br />
    בחר אחד מהמותגים הבאים:
        NIKE<input type="radio" name="radio1" checked>
        ADIDAS<input type="radio" name="radio1">

</form>
</asp:Content>

