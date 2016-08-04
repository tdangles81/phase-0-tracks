//Create the ability to input a word or sentence then output it in reverse. 
// Do this by reading the word from the last character. Reading the input in reverse, 
//take each letter and save into a new STRING, forming a new word. 
//Printing this new word will show the initial word in reverse.

function Reverse(string){
	char = '';
	for (var i = string.length; i > 0; i--)
		char += string[i];
		return char;
	}

Reverse("This is my super short string")

if (char.length < 100) {
	console.log(char);
}else {
	console.log("Woops, that string is too long!");
}
