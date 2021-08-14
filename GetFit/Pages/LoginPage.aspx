<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="../CSS_Files/styles.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                <asp:Button id="btnLogIn" runat="server" name="btnLogIn" Text="Log In" OnClientClick="return validate('txtUsername', 'txtPass')" />
            </div>    
        </div>
    <script type="text/javascript" src="../JS_Files/jsLoginPage.js"></script>
</asp:Content>

