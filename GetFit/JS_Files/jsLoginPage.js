function validate(nameId, password) {
    var name;
    var pass;

    name = document.getElementById(nameId);
    pass = document.getElementById(password);

    if (name.value.trim() == "") {
        alert("Please provide your name");
        return false;
    }

    if (pass.value.trim() == "") {
        alert("Please provide password");
        return false;
    }

}