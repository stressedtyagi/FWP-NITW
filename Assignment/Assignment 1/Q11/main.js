const submit = document.getElementById("submit");
submit.addEventListener('click', (e)=>{
    e.preventDefault();
    let name = document.getElementById("name").value;
    let password = document.getElementById("password").value;
    let email = document.getElementById("email").value;
    let ph = document.getElementById("phoneNumber").value;
    var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    let check = true;
    if(name.length < 6) {
        check = false;
        alert("name length is less than 6");
    }
    if(password.length < 6) {
        check = false;
        alert("password length is less than 6");
    }
    if(ph.length !== 10) {
        check = false;
        alert("Phone number is Invalid");
    }
    if(!email.match(validRegex)) {
        check = false;
        alert("Invalid Email format")
    }
    if(check) {
        window.location.href = "https://www.youtube.com/"
    }
});