//Create the ability to input a word or sentence, and begin reading the word from
//the last character. Reading the input in reverse, take each letter and place into a new string, 
//forming a new word. This will cause initial word to appear in reverse when printed.

function Reverse(string){
	char = '';
	for (var i = string.length; i >= 0; i--)
		char += string[i];
		return char;
	}

Reverse("This is my super short string")

if (char.length < 100) {
	console.log(char);
}else {
	console.log("Woops, that string is too long!");
}
