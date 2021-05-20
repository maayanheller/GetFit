﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <style>
            body {
                text-align: center;
                background-image: url("Pics/LiftingPlate.png");
                font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
                background-size: contain;
            }

            img {
                margin-right: auto;
                margin-left: auto;
                position:absolute;
            }

            form {
                display: inline-block;
                background-color: white;
                text-align: center;
                background-position: center; 
                position: relative;
            }

            .center-image {
                text-align: center;
            }

            a {
                text-decoration: none;
            }

            a:visited {
                color: darkblue;
            }

        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="center-image">
                
            </div>
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
        </form>
    </body>
</html>
