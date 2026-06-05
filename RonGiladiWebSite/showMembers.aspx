<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showMembers.aspx.cs" Inherits="showMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h1>ניהול משתמשים</h1>

<form runat="server">

חיפוש לפי אימייל:
<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>

<asp:Button ID="btnSearch"
    runat="server"
    Text="חפש"
    OnClick="btnSearch_Click" />

<br /><br />

<asp:GridView ID="gvUsers"
    runat="server"
    BorderWidth="1"
    CellPadding="5">
</asp:GridView>

</form>

</asp:Content>
