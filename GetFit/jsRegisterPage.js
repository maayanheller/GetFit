// Validate all fields on registration field
function validate(nameId, password, passwordConfirm, bigMuscleSets, smallMuscleSets, workoutSplit) {
    // Init all the needed variables
    var name;
    var pass;
    var passConf;
    var bigMuscles;
    var smallMuscles;
    var workSplit;

    // Insert to the variables their input's value
    name = document.getElementById(nameId);
    pass = document.getElementById(password);
    passConf = document.getElementById(passwordConfirm);
    bigMuscles = document.getElementById(bigMuscleSets);
    smallMuscles = document.getElementById(smallMuscleSets);
    workSplit = document.getElementById(workoutSplit);

    // If name is a null string, alert the user
    if (name.value == "") {
        alert("Please provide your name!");
        return false;
    }

    // If name's length is smaller or equals to 2, alert the user
    else if (name.value.length <= 2) {
        alert("Name should be longer than 2 charachters!");
        return false;
    }

    // If password isn't equal to confirm password or password is a null string, alert the user 
    if (pass.value != passConf.value || pass.value == "") {
        alert("Please check your password!");
        return false;
    }

    // If big muscles sets is a null string, alert the user
    if (bigMuscles.value == "") {
        alert("Please enter how much sets you do for big muscles!");
        return false;
    }

    // If small muscles sets is a null string, alert the user
    if (smallMuscles.value == "") {
        alert("Please enter how much sets you do for small muscles!");
        return false;
    }

    // If workout split is a null string, alert the user
    if (workSplit.value == "") {
        alert("Please enter your current workout split");
        return false;
    }
}