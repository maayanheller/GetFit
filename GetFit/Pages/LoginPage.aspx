<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="../CSS_Files/styles.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" action="LoginPage.aspx" method="post" runat="server" onsubmit="return(validate('txtUsername', 'txtPass'))">
        <div class="form-items-container">
            <h1 class="title">Login to GetFit</h1>
            <div class="form-item">
                <label>Username: </label>
                <input type="text" id="txtUsername" name="txtUsername" />
            </div>
            
            <div class="form-item">
                <label>Password: </label>
                <input type="password" id="txtPass" name="txtPass" />
            </div>
            <span runat="server" id="errorMessage" visible="false" class="hidden">
                User with this credentials doesn't exist
            </span>
            <div class="form-item">
                <input type="submit" id="btnLogIn" name="btnLogIn" value="Log In" />
                <a href="HomePage.aspx">Enter as a guest</a>
            </div>    
        </div>
    </form>
    <script type="text/javascript" src="../JS_Files/jsLoginPage.js"></script>
</asp:Content>

