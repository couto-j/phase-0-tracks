var colors = ["red", "blue", "yellow", "black"];
var horses = ["Ed", "Maria", "Norton", "Brownings"];

colors.push("rainbow");
horses.push("Ed");

console.log(colors);
console.log(horses);
var stable = {};
if (colors.length === horses.length){
  for (i=0; i<colors.length; i++){
    stable[horses[i]] = colors[i];
  }
}
console.log(stable);


function Car(brand, type, year){
  this.brand = brand;
  this.type = type;
  this.year = year;
  this.drive = function() {console.log("Beep beep!");};
}

var car1 = new Car("Mitsubishi", "Lancer", 2008);
console.log(car1);
car1.drive();
console.log("-----");
var car2 = new Car("Nissan", "Maxima", 2012);
console.log(car2);
car2.drive();
console.log("-----");
var car3 = new Car("Mercedes", "C300", 2015);
console.log(car3);
car3.drive();
console.log("-----");

for (var horse in stable) {
  if (stable.hasOwnProperty(horse)){
    console.log(horse + " " + stable[horse]);
  }
}
