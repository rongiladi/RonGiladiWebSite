<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="דף התחברות.aspx.cs" Inherits="דף_התחברות" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1>דף התחברות</h1>
<h2>הזן פרטי התחברות:</h2>
<form runat="server" method="post">
<table border="1" height="500px">
    <tr>
        <td>שם פרטי:</td>
        <td><input type="text" id="firstName" name="firstname"></td>
    </tr>

    <tr>
        <td>שם משפחה:</td>
        <td><input type="text" id="lastName" name="lastname"></td>
    </tr>

    <tr>
    <td>מין:</td>
    <td>
        <select name="gender" required>
            <option value=""></option>
            <option value="זכר">זכר</option>
            <option value="נקבה">נקבה</option>
            <option value="אחר">אין דבר כזה אחר סתמו</option>
        </select>
    </td>
</tr>

    <tr>
        <td>אימייל:</td>
        <td><input type="text" id="mail" name="mail"></td>
    </tr>

    <tr>
        <td>סיסמה:</td>
        <td><input type="text" id="password" name="password"></td>
    </tr>
    <tr>
    <td colspan="2">מאשר את פרטי השימוש?
        <br />
        לא מאשר <input type="radio" id="notAgree" name="agree" value="לא" />
        מאשר <input type="radio" id="agree" name="agree" value="כן">
    </td>
</tr>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="שלח">
        </td>
    </tr>
</table>
</center>
</form>

    <%=stResult %>

</asp:Content>

