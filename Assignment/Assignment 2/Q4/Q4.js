var form = document.getElementById("salaryForm")
form.addEventListener('submit', function(e) {
    e.preventDefault();
    var grossPlaceHolder = document.getElementById("grossSalary");
    var basicSalary = parseInt(e.target[0].value);
    var grossSalary = basicSalary;
    if(basicSalary >= 1500) {
        grossSalary += 500 + (0.98*basicSalary);
    }else {
        grossSalary += (0.10*basicSalary) + (0.90*basicSalary);
    }
    grossPlaceHolder.innerHTML = "Gross Salary : " + grossSalary;
});