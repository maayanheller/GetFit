function validate(usernameId, password) {
    var username;
    var pass;

    username = document.getElementById(usernameId);
    pass = document.getElementById(password);

    if (username.value.trim() == "") {
        alert("Please provide your name");
        return false;
    }

    if (pass.value.trim() == "") {
        alert("Please provide password");
        return false;
    }

    if (pass.value.trim().length < 6) {
        alert("Your password should be at least 6 charachters long!");
        return false;
    }

}