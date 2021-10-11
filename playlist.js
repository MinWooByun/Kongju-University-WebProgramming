const input = document.querySelector(".playlist__add input");
const btnAdd = document.querySelector(".playlist__add button");
const content = document.querySelector(".playlist__content");
let count = 1;

btnAdd.addEventListener("click", musicAdd);

function musicAdd() {
  const newContent = document.createElement("p");
  newContent.setAttribute("class", "newMusic");
  newContent.setAttribute("id", `remove${count}`);
  newContent.innerHTML =
    "<span class='musicTitle'>" +
    input.value +
    "</span>" +
    "<button class='btnRemove' onclick='musicRemove(" +
    count +
    ")'>삭제</button>";
  content.appendChild(newContent);
  count++;
}

function musicRemove(count) {
  const removeMusic = document.getElementById(`remove${count}`);
  content.removeChild(removeMusic);
}
