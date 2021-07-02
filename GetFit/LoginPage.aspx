<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <style>
            body {
                font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; 
                background-image: url("Pics/LiftingPlate.png");
                background-repeat: no-repeat;
                background-position: 50% 50%;
            }

            .hidden {
                color: red;
            }

            table {
               padding: 5px;
            }

            td {
                text-align: left;
            }

            a {
                text-decoration: none;
            }

            a:visited {
                color: darkblue;
            }

            .container {
                display: flex;
                background-color: rgba(255, 255, 255, .5);
                flex-direction: column;
                align-items: center;
                justify-content: center;
                min-width: 100vh;
                min-height: 100vh;
            }

        </style>

        <script type="text/javascript" src="jsLoginPage.js"></script>
    </head>
    <body>
        <form id="form1" runat="server" onsubmit="return(validate('txtName', 'txtPass'))">
            <div class="container">
            <h1 class="title">Login to GetFit</h1>
            <table>
                <tr>
                    <td>
                        <label>Name: </label>
                    </td>
                    <td>
                        <input type="text" id="txtName" name="txtName" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Password: </label>
                    </td>
                    <td>
                        <input type="password" id="txtPass" name="txtPass" />
                    </td>
                </tr>
                <tr runat="server" id="errorMessage" visible="false" class="hidden">
                    <td>
                        User with this credentials doesn't exist
                    </td>
                    <td />
                </tr>
                <tr>
                    <td>
                        <input type="submit" id="btnLogIn" name="btnLogIn" value="Log In" />
                    </td>
                    <td>
                        <a href="RegisterPage.aspx">Register</a>
                        <label>Or </label>
                        <a href="HomePage.aspx">Enter as a guest</a>
                    </td>
                </tr>
            </table>
          </div>
        </form>
    </body>
</html>
