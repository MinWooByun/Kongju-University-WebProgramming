function add(char) {
  let display = document.querySelector(".display");
  display.value = display.value + char;
}

function calculate() {
  let display = document.querySelector(".display");
  let result = eval(display.value);
  document.querySelector(".result").value = result;
}

function reset() {
  document.querySelector(".display").value = "";
  document.querySelector(".result").value = "";
}
