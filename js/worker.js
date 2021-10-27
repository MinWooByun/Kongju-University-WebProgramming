onmessage = checked;

function checked(event) {
  if (event.data == "check") {
    postMessage("입력란을 다 입력해주세요.");
  }
}
