//Takes two groups of information and combines their individual pieces of information.
//For example, information stored in the first group such as a name might be used to 
//reference data in the second.

var colorarray = ["blue", "green", "yellow", "red"]
var namesarray = ["Ringo", "John", "Paul", "George"]
var horse = []

if (colorarray.length == namesarray.length) {
	for (var i = 0; i < namesarray.length; i++) {
		horse[namesarray[i]] = colorarray[i]
	}
	console.log(horse)
}

function Car(brand, mileage, type) {
    console.log("this is the new car:", this);
    this.brand = brand; 
    this.mileage = mileage; 
    this.type = type;
}

var car1 = new Car("Toyota", 30, "sedan");
console.log(car1)
