console.log("The script is running!");

function addBorder(event) {
  console.log(event);
  event.target.style.border = "10px dashed green";
}

var element = document.getElementById("My Favorite Vegetable");
element.addEventListener("click", addBorder);
