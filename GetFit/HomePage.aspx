<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            letter-spacing: 1px;
            background-image: url("Pics/LiftingPlate.png");
            background-repeat: no-repeat;
            background-position: 50% 50%;
            
        }

        .container {
            display: flex;
            background-color: rgba(255, 255, 255, .9);
            flex-direction: column;
            flex-wrap: wrap;
            text-align: center;
            font-size: 50px;
            min-width: 100vh;
            min-height: 90vh;
        }

        .menu {
            font-size: 18px;
        }

        .link {
            flex-grow: 1;
            padding: 1em;
        }

        input {
            width: 100px;
            font-size: 18px;
        }

        a {
            text-decoration: none;
            color: darkblue;
        }

        #btnLogout {
            position: absolute;
            right: 10px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="menu">
            <asp:label id ="lblName" runat="server" />
            <input type="submit" id="btnLogout" name="btnLogout" value="Logout" />
        </div>

        <div class="container">
            <div class="link">
                <a href="Fullbody.aspx">Fullbody</a>
            </div>
            
            <div class="link">
                <a href="PPL.aspx">PPL</a>
            </div>
            
            <div class="link">
                <a href="UpperLower.aspx">Upper/Lower</a>
            </div>

            <div class="link">
                <a href="BroSplit.aspx">Bro Split</a>
            </div>
        </div>
    </form>
</body>
</html>
