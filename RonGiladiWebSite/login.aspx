<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1>Log in</h1>
<form runat="server" method="post">
<table border="1" height="500px">
    <tr>
        <td>אימייל:</td>
        <td><input type="text" id="mail" name="mail"></td>
    </tr>

    <tr>
        <td>סיסמה:</td>
        <td><input type="text" id="password" name="password"></td>
    </tr>

    <tr>
        <td colspan="2" align="center" style="height:10px">
            <input type="submit" value="שלח">
        </td>
    </tr>
</table>
    אין חשבון קיים? צור חשבון 
    <a href="דף התחברות.aspx"> כאן </a>
</center>
</form>

</asp:Content>
