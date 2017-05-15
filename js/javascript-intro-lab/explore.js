- Declare a function that accepts a variable for the word that is going to be reordered.
- Inside the function declare a blank string that will gather the new characters.
- Include a loop in the function that reads each character in the word, starting at the last one.
- Characters will be stored as a in new word in the new order.
- The new word will be returned outside the loop.




function reorder(word){
  var new_str = "";
  for (var i = word.length - 1 ; i >= 0; i--) {
    new_str += word.charAt(i);
  }
  return new_str
}

var str = "hola!";
console.log(reorder(str));
var str2 = "Suki";
var string2 = reorder(str2);
console.log(string2);

var str3 = "knitting"
if (1 == 1 && true || false){
  console.log(reorder(str3));
}
