const form = document.getElementById("myform");
form.addEventListener('submit',function (e) {
    e.preventDefault();
    const name = e.target[0].value;
    const hrs = e.target[1].value;
    const rate = e.target[2].value;
    let pay = 0;
    if(hrs > 40) {
        pay = rate*40;
        pay += ((3*rate)/2)*(hrs-40);
    }else {
        pay = rate*hrs; 
    }
    const grossPayHtml = `<strong>${name} gross pay : ${pay}</strong>`;
    const output = document.getElementById("result");
    output.innerHTML = grossPayHtml
});