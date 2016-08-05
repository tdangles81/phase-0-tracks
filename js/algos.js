//Create a program that takes groups of words or sentences, 
//and individually searches for the items contained in them with the 
//greatest number of characters. Program should the print result
//that meets the conditions of the program or the longest word or phrase from the ARRAY.

function longestword(array){
	//Create an empty value that will store the longest word or phrase.
	var longer = '';
	//Determine the number of times to search through the STRINGS by number in array.
	for (var i = 0; i < array.length; i++) {
	//For each pass through the strings or phrases, check if it has more characters than
	//the last one searched.
		if (array[i].length > longer.length) {
			longer = array[i];
		}
	}
	//Output the STRING determined to be the longest when i = array.length.
	console.log("The longest word is: " + longer)
}

//DRIVER
longestword(["eleven", "two", "threeeeeee"])
longestword(["kitty cat", "doggy", "monkey"])

//------------------------------>
//Program takes two inputs that will be compared with one another. Order
//of input does not affect how it operates. Both inputs will be OBJECTS
//with KEY/VALUE pairs, which will be matched against eachother in the program.

function findkeyval(obj1, obj2) {
		//Check the similarities between the keys of the program. If equal, the condition is true.
	    if (obj1.name == obj2.name) {
			console.log("These object names match.")
			return true
		//Check the the similarities between the values of the keys. If equal, the condition is also true.
		}else if (obj1.age == obj2.age){
			console.log("These object ages match.")
			return true
		//Notify the user if none of the KEYS or VALUES are identical, and make the condition false.
		}else {
			console.log("These objects do not match.")
			return false
		}
}

//DRIVER
obj1 = {name: "Steven", 
		age : 53
	}	
obj2 = {name : "Steven", 
		age : 54
	}
findkeyval(obj1, obj2)

//------------------------------>
//This program should take a number which will define the number of times it should run, as well as
//the amount of words or phrases that it should randomly generate then store.
function generaterandom(arrlen) {
	//Create empty values which will later be used to store information temporarily.
	wordarr = []
	var alphabet = "abcdefghijklmnopqrstuvwxyz"
	var newword = ''
	var rand = Math.random() * 26
	var count = 0

	//Continue to randomly generate words and store them until the number of run times 
	//matches the number initially passed into the program.
	while (count < arrlen) {
	//Define the length of the random word with a random number.
		for (i = 0; i < rand; i ++ ) {
	//Generate a random letter of a random length, then attach this letter to the end of the previous one.
			newword += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
			rand = Math.random() * 26
		}
	//Add the randomly generated word into the ARRAY or group of words for as many times as 
	//original input indicates. Continue adding words until the count ends.
	wordarr.push(newword)
	newword = ''
	count += 1
}
//Output the total group of words or phrases.
	console.log(wordarr)
}

//DRIVER
var counter = 0
while (counter < 10) {
	generaterandom(10);
	var randomarr = wordarr;
	longestword(randomarr);
	counter += 1
}