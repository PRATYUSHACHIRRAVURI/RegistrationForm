function validateForm() {
    var firstname = document.getElementById("fn").value;
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.getElementById("em").value)) {
        return (true)
    }
    alert("You have entered an invalid email address!")
    return (false)


    if (firstname == '') {
        alert("Please enter required fields");
        return false;
    }
    var lastname = document.getElementById("ln").value;
    if (lastname == '') {
        alert("Please enter required fields");
        return false;
    }
    var email = document.getElementById("em").value;
    if (email == '') {
        alert("Please enter required fields");
        return false;
    }
    var phonenumber = document.getElementById("pn").value;
    if (phonenumber == '' || isNaN(phonenumber) || phonenumber.length != 10) {
        alert("Please enter number");
        return false;

    }
}