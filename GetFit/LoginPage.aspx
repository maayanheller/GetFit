<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
            <table>
                <tr>
                    <td>
                        <img src="Pics/Lifting Plate.png" height="142" width="162" />
                    </td>
                    <td></td>
                </tr>

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
                        <input type="button" id="btnSignIn" value="Sign In" />
                    </td>
                    <td>
                        <a href="RegisterPage.aspx">Register</a>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
