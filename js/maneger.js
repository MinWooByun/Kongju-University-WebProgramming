window.onload = function () {
  var worker = new Worker("js/worker.js");
  worker.postMessage("ping");
  worker.onmessage = function (event) {
    var msg = "Worker says " + event.data;
    alert(msg);
    document.getElementById("output").innerHTML = msg;
  };
};
