const form = document.getElementById("calc");
const body = document.getElementsByTagName("body")[0];
form.addEventListener("submit", (event) => {
  event.preventDefault();
  let num1 = parseInt(form["num1"].value, 10);
  let num2 = parseInt(form["num2"].value, 10);
  let operation = form["operation"].value;
  let p = document.getElementById("result");
  switch (operation) {
    case "add": {
      p.innerText = num1 + " + " + num2 + " = " + (num1 + num2);
      console.log(num1 + num2);
      break;
    }
    case "sub": {
      p.innerText = num1 + " - " + num2 + " = " + (num1 - num2);
      break;
    }
    case "mul": {
      p.innerText = num1 + " * " + num2 + " = " + num1 * num2;
      break;
    }
    case "div": {
      p.innerText = num1 + " / " + num2 + " = " + num1 / num2;
      break;
    }
    default: {
      p.innerText = "Invalid operation.";
      console.log("Invalid operation");
      break;
    }
  }
});