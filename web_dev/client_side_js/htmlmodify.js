//Waits for events from index.html or main page in order to render the DOM. Uses names
//of HTML tags to reference elements, and manupulations to the JS here, specified with an HTML
//tag, will modify the HTML source in the DOM.

var click_action = document.getElementById("party-tag");
var image_view = document.getElementById("img");
var audio = new Audio('http://www.sub.wz.cz/downloads/sounds/codec.mp3')

click_action.style.border = "5px solid red"
image_view.style.display = 'none';

click_action.addEventListener("click", function(){ 
	image_view.style.display = 'block';
	audio.play()
});