<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpperLower.aspx.cs" Inherits="UpperLower" %>

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

        form {
            background-color: rgba(255, 255, 255, .5);
            min-width: 100vh;
            min-height: 90vh;
        }

        .title {
            text-align: center;
        }

        .home {
            position: absolute;
            right: 10px;
            text-decoration: none;
            color: darkblue;
        }

        .content {
            font-size: 20px;
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
                Upper/Lower Split
            </h1>
        </div>

        <div class="content">
            <p>
               The upper/lower split is among the most popular ways to organize your training. <br />
               The idea behind it is very simple: You split your training into upper body exercise days and lower body exercise days. <br />
               The most common way is to spread your weekly training volume across four workouts – two upper, and two lower
            </p>

            <p>
                The upper/lower split is incredibly flexible and can be quite beneficial for people with all sorts of schedules and fitness abilities. <br />

                While many people like to label different programs for beginners or advanced, with a bit of tweaking, the upper/lower can work for almost everyone.
            </p>

            <h3>
                Pros of Upper/Lower
            </h3>
            <ul>
                <li>
                    It offers a superior training frequency for most lifters. An ever-growing body of literature suggests that training our muscles twice per week might be more beneficial for long-term improvements. <br />
                    With the typical 4-day upper lower split, you can do that quite well, and you don’t have to maintain an incredibly high training frequency.
                </li>

                <li>
                    It allows us to improve and maintain movement proficiency much better because we get to perform the different exercises more often throughout the week. <br /> 
                    For some people, training a lift once per week is not enough, and their strength barely improves because they can’t solidify proper lifting form.
                </li>

                <li>
                    It’s great for accumulating weekly training volume without having to overexert ourselves in any given workout. <br />
                    For example, if you have to do 16 weekly sets for chest, doing that in two upper body workouts will be much easier and more sustainable. <br /> 
                    Consider some of these great chest exercises for women and men alike.
                </li>

                <li>
                    It can work great for lifters of all levels, so long as you tweak the training variables correctly. If you’re a complete beginner, you can start with a twice-weekly frequency. <br />
                    Eventually, as you become advanced, you can go as high as 6 workouts per week.
                </li>

                <li>
                    It’s fantastic for preventing volume overlap as you have two distinct workouts – an upper and a lower one. Meaning, the risk of training fatigued muscles too soon is much smaller than other training splits.
                </li>
            </ul>

            <h3>
                Cons of Upper/Lower
            </h3>
            <ul>
                <li>
                    Your upper body workouts can become quite long and tedious because there are many muscle groups to account for – your back, chest, shoulders, triceps, biceps, traps, abs, and obliques. <br />
                    If you do just three sets for your back, chest, shoulders, triceps, and biceps, you’ll still have to do a total of 15 working sets.
                </li>

                <li>
                    On the other hand, you might find that your lower body workouts tend to finish much quicker, as there are fewer muscle groups to train. Because of that, you might find a hybrid approach to be better. <br />
                    In other words, if you’re adamant about doing direct work for your traps, abs, obliques, and forearms, you might want to consider adding them to your lower body days.
                </li>

                <li>
                    You will have to make some tradeoffs in terms of priority. For example, the bro split offers us the chance to give each muscle priority within the training week. <br />
                    On an upper/lower split, you have to pick one muscle group to start with, and put the remaining ones on the backburner. For example, you can start with the bench press, but you won’t do your rows in a fully recovered state.
                </li>
            </ul>
            <p>
            </p>
        </div>
    </form>
</body>
</html>
