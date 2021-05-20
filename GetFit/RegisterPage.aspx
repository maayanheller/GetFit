<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterPage.aspx.cs" Inherits="RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table {
           width: 50%;
           background-color: rgba(255, 255, 255, .9);
           margin: 0 auto;
           position: relative;
           padding: 5px;
           margin-top: auto;
           margin-bottom: auto;
        }

        td {
            text-align: left;
        }

        .container {
            position: absolute;
            width: 100%;
            height: 100%;
            background-image: url("Pics/LiftingPlate.png");
            background-repeat: no-repeat;
            background-position: 50% 0;
        
        
        }

        .container::before {
            opacity: 0.6;
            z-index: -1;
        }

        .container::after {
            
        }

    </style>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <label>Name: </label>
                </td>
                <td>
                    <input required="required" type="text" id="txtName" name="txtName" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Password: </label>
                </td>
                <td>
                    <input required="required" type="password" id="txtPass" name="txtPass" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Confirm Password: </label>
                </td>
                <td>
                    <input required="required" type="password" id="txtConfirmPass" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Number Of Sets For Each Of The Big Muscles Groups: </label>
                </td>
                <td>
                    <input type="number" id="numOfBigSets" name="numOfBigSets" min="0" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Number Of Sets For Each Of The Small Muscles Groups: </label>
                </td>
                <td>
                    <input type="number" id="numOfSmallSets" name="numOfSmallSets" min="0" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Favourite Muscle Group: </label>
                </td>
                
                <td>
                    <input type="radio" name="muscleGroup" id="legs" value="legs" />
                    <label>Legs</label>
                    <br />

                    <input type="radio" name="muscleGroup" id="chest" value="chest" />
                    <label>Chest</label>
                    <br />

                    <input type="radio" name="muscleGroup" id="back" value="back" />
                    <label>Back</label>
                    <br />

                    <input type="radio" name="muscleGroup" id="shoulders" value="shoulders" />
                    <label>Shoulders</label>
                    <br />

                    <input type="radio" name="muscleGroup" id="triceps" value="triceps" />
                    <label>Triceps</label>
                    <br />

                    <input type="radio" name="muscleGroup" id="biceps" value="biceps" />
                    <label>Biceps</label>
                    <br />

                    <input type="radio" name="muscleGroup" id="abs" value="abs" />
                    <label>Abs</label>
                </td>
            </tr>

            <tr>
                <td>
                    <label>Type Of Workout Split: </label>
                </td>
                <td>
                    <select id="workoutSplits" name="workoutSplits">
                        <option value="none" />
                        <option value="fbw">Full Body Workout Split</option>
                        <option value="upperOrLower">Upper/Lower Workout Split</option>
                        <option value="ppl">Push/Pull/Legs Split</option>
                        <option value="bro">Bro Split</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>
                    <input type="submit" id="btnRegister" name="btnRegister" value="Register" />
                </td>
                <td>
                    <a href="LoginPage.aspx">Sign In</a>
                </td>
            </tr>
        </table>
    </form>
    </div>
    
</body>
</html>
