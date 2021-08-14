// Validate all fields on registration field
function validate(usernameId, firstNameId, lastNameId, password, passwordConfirm, bigMuscleSets, smallMuscleSets, workoutSplit) {

    var username = document.getElementById(usernameId);
    var firstName = document.getElementById(firstNameId);
    var lastName = document.getElementById(lastNameId);
    var pass = document.getElementById(password);
    var passConf = document.getElementById(passwordConfirm);
    var bigMuscles = document.getElementById(bigMuscleSets);
    var smallMuscles = document.getElementById(smallMuscleSets);
    var workSplit = document.getElementById(workoutSplit);

    if (username.value.trim() == "") {
        console.log("name not provided");
        alert("Please provide your username!");
        return false;
    }

    if (username.value.trim().length <= 2) {
        alert("Username should be longer than 2 charachters!");
        return false;
    }

    if (doesContainNumber(username.value)) {
        alert("Username should not contain numbers!")
    }

    if (firstName.value.trim() == "") {
        alert("Please provide first name!")
    }

    if (doesContainNumber(firstName.value)) {
        alert("First name should not contain numbers!")
    }

    if (lastName.value.trim() == "") {
        alert("Please provide last name!")
    }

    if (doesContainNumber(lastName.value)) {
        alert("Last name should not contain numbers!")
    }

    if (pass.value.trim() == "") {
        alert("Please provide password!");
        return false;
    }

    if (pass.value.trim() < 6) {
        alert("Your password should be at least 6 charachters long!");
        return false;
    }

    if (pass.value != passConf.value) {
        alert("Please check your password match!");
        return false;
    }
    
    if (bigMuscles.value == "") {
        alert("Please enter how much sets you do for big muscles!");
        return false;
    }

    if (smallMuscles.value == "") {
        alert("Please enter how much sets you do for small muscles!");
        return false;
    }

    if (workSplit.value == "") {
        alert("Please enter your current workout split");
        return false;
    }
}

function doesContainNumber(value) {
    contains = false;
    for (let i = 0; i < value.length; i++) {
        if (!isNaN(value[i])) {
            contains = true;
            break;
        }
    }

    return contains;
}