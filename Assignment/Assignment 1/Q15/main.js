function encrypt(s) {
    var digits = s.split("");
    digits[0] = (+digits[0] + 5) % 10;
    digits[1] = (+digits[1] + 5) % 10;
    digits[2] = (+digits[2] + 5) % 10;
    digits[3] = (+digits[3] + 5) % 10;
    var result = digits.join("");
    return result;
  }
  
  function decrypt(s) {
    var digits = s.split("");
    for (var i = 0; i < 4; i++) {
      var num = +digits[i];
      num -= 5;
      digits[i] = Math.abs(num);
    }
    var result = digits.join("");
    return result;
  }
  
  const decryptField = document.getElementById("decryptField"),
    encryptField = document.getElementById("encryptField"),
    encryptBtn = document.getElementById("encryptBtn"),
    decryptBtn = document.getElementById("decryptBtn");
  
  let encryptSym = document.getElementById("encryptSymbol");
  let decryptSym = document.getElementById("decryptSymbol");
  encryptSym.value = "3535";
  decryptSym.value = "8080";
  
  encryptBtn.addEventListener('click', function () {
      let encryptVal = encryptField.value;
      encryptSym.innerText = "Encrypted number is : " + encrypt(encryptVal);
  })
  
  decryptBtn.addEventListener('click', function() {
      let decryptVal = decryptField.value;
      decryptSym.innerText = "Dycrypted number is : " +decrypt(decryptVal);
  })
  