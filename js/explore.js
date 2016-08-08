//Create the ability to input a word or sentence then output it in reverse. 
// Do this by reading the word from the last character. Reading the input in reverse, 
//take each letter and save into a new STRING, forming a new word. 
//Printing this new word will show the initial word in reverse.

function reverse(string){
	var char = "";
	for (var i = string.length; i >= 0; i--) {
		char += string[i];
	}
	return char
}

var instance = reverse("This is my super short string")
var count = 0

if (count < 100) {
	var reversed_string = instance;
	console.log(reversed_string);
	count += 1
}else {
	console.log("Woops, that string is too long!");
}
