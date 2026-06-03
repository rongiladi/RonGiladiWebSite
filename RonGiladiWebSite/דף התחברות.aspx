<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="דף התחברות.aspx.cs" Inherits="דף_התחברות" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="javascript">

    function checkAll() {
        let result = true;

        document.getElementById("firstNameErr").innerHTML = "";
        document.getElementById("lastNameErr").innerHTML = "";
        document.getElementById("mailErr").innerHTML = "";
        document.getElementById("passwordErr").innerHTML = "";
        document.getElementById("genderErr").innerHTML = "";
        document.getElementById("agreeErr").innerHTML = "";

        if (!checkFirstName()) result = false;
        if (!checkLastName()) result = false;
        if (!checkEmail()) result = false;
        if (!checkPassword()) result = false;
        if (!checkGender()) result = false;
        if (!checkAgree()) result = false;

        return result;
    }

    function checkFirstName() {
        let firstname = document.getElementById("firstName").value;

        if (firstname.length < 2) {
            document.getElementById("firstNameErr").innerHTML = "שם פרטי חייב להיות לפחות 2 תווים";
            return false;
        }
        return true;
    }

    function checkLastName() {
        let lastname = document.getElementById("lastName").value;

        if (lastname.length < 2) {
            document.getElementById("lastNameErr").innerHTML = "שם משפחה חייב להיות לפחות 2 תווים";
            return false;
        }
        return true;
    }

    function checkEmail() {
        let mail = document.getElementById("mail").value;

        let pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!pattern.test(mail)) {
            document.getElementById("mailErr").innerHTML = "אימייל לא תקין";
            return false;
        }
        return true;
    }

    function checkPassword() {
        let password = document.getElementById("password").value;

        if (password.length < 6) {
            document.getElementById("passwordErr").innerHTML = "סיסמה חייבת להיות לפחות 6 תווים";
            return false;
        }
        return true;
    }

    function checkGender() {
        let gender = document.querySelector('select[name="gender"]').value;

        if (gender === "") {
            document.getElementById("genderErr").innerHTML = "יש לבחור מין";
            return false;
        }
        return true;
    }

    function checkAgree() {
        let agree = document.querySelector('input[name="agree"]:checked');

        if (!agree) {
            document.getElementById("agreeErr").innerHTML = "חובה לאשר תנאי שימוש";
            return false;
        }
        return true;
    }

</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1>דף הרשמה</h1>
<h2>הזן פרטי הרשמה:</h2>

<form runat="server" method="post" onsubmit="return checkAll();">

<table border="1" height="500px">

<tr>
    <td>שם פרטי:</td>
    <td><input type="text" id="firstName" name="firstname"></td>
    <td id="firstNameErr"></td>
</tr>

<tr>
    <td>שם משפחה:</td>
    <td><input type="text" id="lastName" name="lastname"></td>
    <td id="lastNameErr"></td>
</tr>

<tr>
    <td>מין:</td>
    <td>
        <select name="gender">
            <option value=""></option>
            <option value="זכר">זכר</option>
            <option value="נקבה">נקבה</option>
            <option value="אחר">אין דבר כזה אחר סתמו</option>
        </select>
    </td>
    <td id="genderErr"></td>
</tr>

<tr>
    <td>אימייל:</td>
    <td><input type="text" id="mail" name="mail"></td>
    <td id="mailErr"></td>
</tr>

<tr>
    <td>סיסמה:</td>
    <td><input type="text" id="password" name="password"></td>
    <td id="passwordErr"></td>
</tr>

<tr>
    <td colspan="2">
        מאשר את פרטי השימוש?
        <br />
        לא מאשר <input type="radio" name="agree" value="לא" />
        מאשר <input type="radio" name="agree" value="כן" />
    </td>
    <td id="agreeErr"></td>
</tr>

<tr>
    <td colspan="3" align="center">
        <input type="submit" value="שלח">
    </td>
</tr>

</table>

</form>

<%=stResult %>

</center>
</asp:Content>