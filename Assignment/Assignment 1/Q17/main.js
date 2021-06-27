const form = document.getElementById("wall");
const result_block = document.getElementById("result");
form.addEventListener("submit", function (event) {
  event.preventDefault();
  let txt = form["text"].value;
  txt = txt.replace(/[^a-zA-Z0-9]/g, " ");
  txt = txt.replace(/[\r\n]+/gm, "");
  txt = txt.split(" ");
  let m = new Map();
  for (j in txt) {
    if (j == "" || j == "") {
      delete txt[j];
    }

    if (m.has(txt[j])) {
      val = m.get(txt[j]);
      val += 1;
      m.set(txt[j], val);
    } else {
      m.set(txt[j], 1);
    }
  }

  let table = document.createElement("table");
  table.style.border = "2";
  table.style.width = "100";
  let tbody = document.createElement("tbody");
  let tr = document.createElement("tr");

  for (let [key, value] of m.entries()) {
    tr = document.createElement("tr");
    let td = document.createElement("td");
    td.appendChild(document.createTextNode(key));
    tr.appendChild(td);
    td = document.createElement("td");
    td.appendChild(document.createTextNode(value));
    tr.appendChild(td);
    tbody.appendChild(tr);
    console.log(key + " - " + value);
  }
  table.appendChild(tbody);
//   body.appendChild(table);
result_block.append(table);
});
