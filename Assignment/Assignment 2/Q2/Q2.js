const userName = "divyanshutyagi";
const password = "9968505442";
var form = document.getElementById("userForm");
form.addEventListener('submit', function(e) {
    e.preventDefault();
    var userData = e.target;
    var inputUserName = userData[0].value
    var inputPassword = userData[1].value
    if(inputUserName === "" || inputPassword === "") {
        alert('You forget one of the required fields. Please try again');
    }
    if(inputUserName === userName && inputPassword === password) {
        alert('Welcome (' + userName + ')');
    }else {
        alert('Please enter a valid username or password');
    }
});
