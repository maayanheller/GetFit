<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fullbody.aspx.cs" Inherits="Fullbody" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        body {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; 
        }

        .title {
            text-align: center;
        }

        .content-container {
            font-size: 20px;
        }

        .home {
            position: absolute;
            right: 10px;
            text-decoration: none;
            color: darkblue;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:label id ="lblName" runat="server" />
            <a href="HomePage.aspx" class="home">Return to Home Page</a>
        </div>
        
        <div class="title">
            <h1>
                Fullbody
            </h1>
        </div>

        <div class="content-container">
            <p>
                Fullbody split means to work all of the muscle group in one workout. <br />
                You need to do the workout 2-3 times a week, with at least one day of rest/active recovery between workout days. <br />
                Usually, the workout is sorted by the size of the muscle group. For example: Legs first, Chest second, Back third, etc. <br />
                The "Fullbody" is considered good for beginners because it's easy to persist with it due to the low number of workouts a week. <br />
            </p>

            <p>
                Most of the workout is built from compound exercises (Exercises that involve a lot of muscles). <br />
                Those exercises, while training functional strength, Are also training the cardiovascular system, <br />
                And by doing that, it helps us to burn fat.
            </p>

            <p>
                Other benefits "Fullbody" have: 
            </p>

            <ul>
                <li>
                    It helps build the muscles
                </li>

                <li>
                    There are less workouts, so it's easy to fit them into the schedule
                </li>
                <li>
                    It fits everyone, from beginners to advanced
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
