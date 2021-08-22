// Validate all fields on registration field
function validate(usernameId, firstNameId, lastNameId, password, passwordConfirm, bigMuscleSets, smallMuscleSets, workoutSplit) {

    var username = document.getElementById(usernameId).value;
    var firstName = document.getElementById(firstNameId).value;
    var lastName = document.getElementById(lastNameId).value;
    var pass = document.getElementById(password).value;
    var passConf = document.getElementById(passwordConfirm).value;
    var bigMuscles = document.getElementById(bigMuscleSets).value;
    var smallMuscles = document.getElementById(smallMuscleSets).value;
    var workSplit = document.getElementById(workoutSplit).value;

    if (username.trim() == "") {
        console.log("name not provided");
        alert("Please provide your username!");
        return false;
    }

    if (username.trim().length <= 2) {
        alert("Username should be longer than 2 charachters!");
        return false;
    }

    if (NoSpecialKey(username.trim())) {
        alert("Username should not contain special keys!")
        return false;
    }

    if (firstName.trim() == "") {
        alert("Please provide first name!")
        return false;
    }

    if (onlyEnglishLetters(firstName.trim())) {
        alert("First name should contain only letters!")
        return false;
    }

    if (lastName.trim() == "") {
        alert("Please provide last name!")
        return false;
    }

    if (onlyEnglishLetters(lastName.trim())) {
        alert("Last name should contain only letters!");
        return false;
    }

    if (pass.trim() == "") {
        alert("Please provide password!");
        return false;
    }

    if (pass.length < 6) {
        alert("Your password should be at least 6 charachters long!");
        return false;
    }

    if (pass != passConf) {
        alert("Please check your password match!");
        return false;
    }
    
    if (bigMuscles == "") {
        alert("Please enter how much sets you do for big muscles!");
        return false;
    }

    if (smallMuscles == "") {
        alert("Please enter how much sets you do for small muscles!");
        return false;
    }

    if (workSplit == "") {
        alert("Please enter your current workout split");
        return false;
    }
    // All valid
    return true;
}

function onlyEnglishLetters(value) {
    const reg = /^[a-zA-Z]+$/
    return !reg.test(value);
}

function NoSpecialKey(value) {
    const reg = /^[a-zA-z0-9._]+$/
    return !reg.test(value);
}