<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterPage.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="stylesheet" href="../CSS_Files/styles.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="title">Register to GetFit</h1>
        <div class="form-items-container">
            <div class="form-item">
                <label class="input-name">Username: </label>
                <input type="text" id="txtUsername" name="txtUsername" />
            </div>
        
            <div class="form-item">
                <label class="input-name">First Name: </label>
                <input type="text" id="txtFirstName" name="txtFirstName" />
            </div>

            <div class="form-item">
                <label class="input-name">Last Name: </label>
                <input type="text" id="txtLastName" name="txtLastName" />
            </div>

            <div class="form-item">
                <label class="input-name">Password: </label>
                <input type="password" id="txtPass" name="txtPass" />
            </div>

            <div class="form-item">
                <label class="input-name">Confirm Password: </label>
                <input type="password" id="txtConfirmPass" />
            </div>

            <div class="form-item">
                <label class="input-name">Number Of Sets For Each Of The Big Muscles Groups: </label>
                <input type="number" id="numOfBigSets" name="numOfBigSets" min="0" />
            </div>

            <div class="form-item">
                <label class="input-name">Number Of Sets For Each Of The Small Muscles Groups: </label>
                <input type="number" id="numOfSmallSets" name="numOfSmallSets" min="0" />
            </div>

            <div class="form-item">
                <label class="input-name">Favourite Muscle Group: </label>
                <div class="radio-inputs">
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
                </div>
            </div>

            <div class="form-item">
                <label class="input-name">Type Of Workout Split: </label>

                <select id="workoutSplits" name="workoutSplits">
                    <option value="" />
                    <option value="fbw">Full Body Workout Split</option>
                    <option value="upperOrLower">Upper/Lower Workout Split</option>
                    <option value="ppl">Push/Pull/Legs Split</option>
                    <option value="bro">Bro Split</option>
                </select>
            </div>
            <div class="form-item">
                <span runat="server" id="register_error_message" visible="false" class="hidden-error-message">
                    User with this credentials already exists
                </span>
            </div>
            <div class="form-item">
                <asp:Button id="btnRegister" runat="server" name="btnRegister" Text="Register" OnClientClick="return(validate('txtUsername', 'txtFirstName', 'txtLastName', 'txtPass', 'txtConfirmPass', 'numOfBigSets', 'numOfSmallSets', 'workoutSplits'))" />
                <a href="LoginPage.aspx">Log In</a>
            </div>

            <div class="form-item">
                <input type="reset"/>            
            </div>
        </div>

    <script type="text/javascript" src="../JS_Files/jsRegisterPage.js"></script>
</asp:Content>

