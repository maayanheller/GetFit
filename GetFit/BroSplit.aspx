<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BroSplit.aspx.cs" Inherits="BroSplit" %>

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
            background-color: rgba(255, 255, 255, .9);
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

        <div>
            <h1>
                Bro Split
            </h1>
            <div class="content">
            <p>
                If you’ve ever considered lifting weights, then you’ve probably heard of the famous bro split. <br />
                For decades, the bro split has been the golden standard for organizing our weekly training, and millions of people from all over the world praise the approach. <br />
                With the bro split, you devote each workout to one or two muscle groups. Typically, you train each muscle group once every seven days and do a total of three to six weekly workouts.
            </p>

            <p>
                Over the years, the bro split has gained a fair amount of criticism because of its low frequency. The idea is, muscle protein synthesis tends to level off within 36 hours of training. <br />
                So, by not training our muscles two to three times per week, we are effectively ‘missing out’ on potential muscle growth.
                People who critique the bro split also suggest that folks who tend to do well with it are also taking performance-enhancing drugs.
                
            </p>
            
            <p>
                There are dozens upon dozens of fancy progression schemes out there, but where most of them fail is to account for one huge factor: <br />
                We are humans, not machines. <br />
                Sure, you have set amounts you need to lift from week to week, and looking at the long-term progression seems exciting. 
                “Whoa, so long as I stay consistent, I’ll be able to lift x amount for y number of reps by z date!”, The problem is, adaptations to resistance training happen non-linearly and often unpredictably.
            
            </p>

            <h3>
                Bro Split Pros
            </h3>

            <ul>
                <li>
                    It’s incredibly simple to program – all you have to do is decide how many days you’re going to train and split the different muscle groups.
                </li>

                <li>
                    You get to train each muscle group in a fresher and more recovered state, thus doing more volume with better form.
                </li>

                <li>
                    Depending on your training frequency, your workouts might be shorter. Rather than cramming a lot of volume in fewer workouts, you get to spread that same volume across more weekly sessions.
                </li>

                <li>
                    You might find it more enjoyable to dedicate a given workout to a specific muscle group, instead of splitting your attention between several.
                </li>
            </ul>

            <h3>
                Bro Split Cons
            </h3>

            <ul>
                <li>
                    According to some experts and researchers, training our muscles only once per week might not be enough to maximize muscle growth.
                </li>

                <li>
                    For you to follow a bro split as intended, you would have to dedicate at least four to five days each week. <br />
                    This might not be possible for some folks, and you might have to choose a split that is better suited for a low training frequency.
                </li>

                <li>
                    Your performance will deteriorate more significantly as the workout progresses. <br />
                    By the time you do ten to sixteen sets for a given muscle group, it will be much weaker and less able to work productively. This might have some long-term muscle growth implications.
                </li>
            </ul>

          </div>
        </div>
    </form>
</body>
</html>
