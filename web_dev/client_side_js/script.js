console.log("The script is running!");

function addBorder(event) {
  console.log(event);
  event.target.style.border = "10px dashed green";
}

var els = document.getElementsByTagName("h1");
var el = els[0]
el.addEventListener("click", addBorder);


var photo = document.getElementById("cauliflower");
photo.style.border = "5px solid blue"