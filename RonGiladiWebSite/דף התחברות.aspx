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
            <select required>
                <option value=""></option>
                <option>זכר</option>
                <option>נקבה</option>
                <option>אין דבר כזה אחר סתמו</option>
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
    <td clospan="2" >מאשר את פרטי השימוש?
        <br />
    NIKE<input type="radio" id="nike" name="radio1" />
    ADIDAS<input type="radio" id="adidas" name="radio1">
    </td>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="שלח">
        </td>
    </tr>
</table>
</center>
</form>

</asp:Content>

