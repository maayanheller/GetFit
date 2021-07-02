// Validate all fields on registration field
function validate(nameId, password, passwordConfirm, bigMuscleSets, smallMuscleSets, workoutSplit) {

    var name = document.getElementById(nameId);
    var pass = document.getElementById(password);
    var passConf = document.getElementById(passwordConfirm);
    var bigMuscles = document.getElementById(bigMuscleSets);
    var smallMuscles = document.getElementById(smallMuscleSets);
    var workSplit = document.getElementById(workoutSplit);

    if (name.value.trim() == "") {
        console.log("name not provided");
        alert("Please provide your name!");
        return false;
    }

    if (name.value.trim().length <= 2) {
        alert("Name should be longer than 2 charachters!");
        return false;
    }

    if (pass.value != passConf.value) {
        alert("Please check your password match!");
        return false;
    }

    if (pass.value == "") {
        alert("Please provide password!");
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