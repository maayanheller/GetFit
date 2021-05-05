<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterPage.aspx.cs" Inherits="RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td><img src="Pics/Lifting Plate.png" height="142" width="162" /></td>
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
                    <label>Confirm Password: </label>
                </td>
                <td>
                    <input type="password" id="txtConfirmPass" name="txtPass" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Number Of Sets For Each Of The Big Muscles Groups: </label>
                </td>
                <td>
                    <input type="number" id="numOfBigSets" name="txtName" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Number Of Sets For Each Of The Small Muscles Groups: </label>
                </td>
                <td>
                    <input type="number" id="numOfSmallSets" name="txtName" />
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
                        <option value="upperOrLower">Four-Day Workout Split</option>
                        <option value="upperOrLower">Five-Day Workout Split</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>
                    <input type="button" id="btnRegister" value="Register" />
                </td>
                <td>
                    <a href="LoginPage.aspx">Sign In</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
