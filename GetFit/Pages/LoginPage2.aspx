<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage2.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="../CSS_Files/styles.css">
    <script type="text/javascript" src="jsLoginPage.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="form-container">
            <h1 class="title">Login to GetFit</h1>
            <div class="form-item">
                <label>Name: </label>
                <input type="text" id="txtName" name="txtName" />
            </div>
            
            <div class="form-item">
                <label>Password: </label>
                <input type="password" id="txtPass" name="txtPass" />
            </div>
            
            <div class="form-item">
                <input type="submit" id="btnLogIn" name="btnLogIn" value="Log In" onclick="return(validate('txtName', 'txtPass'))" />
                <a href="HomePage.aspx">Enter as a guest</a>
            </div>
            
        </div>
</asp:Content>

