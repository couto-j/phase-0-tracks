/* RELEASE 0 */
/*
- Create an array with several strings stored within it.
- Define a funtion that loops through the strings in each arrray.
- Fine and store the length of each string.
- Note which string is the longest and store that as a separate variable.
- Return the larger variable, aka the longest string.

*/

function longest_phrase(phrase){
  var longest = "";
  for (var i = 0; i < phrase.length; i++){
    if (phrase[i].length > longest.length){
      longest = phrase[i];
    } 
  }
  return longest;
}

 var phrases = ["hello world", "goodbye world", "there's no world here"];
 console.log(longest_phrase(phrases));
 var yarn = ["Madelinetosh", "Malabrigo", "Misti Alpaca", "Sweetgeorgia"];
 console.log(longest_phrase(yarn));

/* RELEASE 1 */
/*
- Define a function that requires two inputs.
- Check to see if the objects have a matching key.
- If they have the same key at least once, check if true or false.
- If yes, return true; if no, return false.
- If they do not share any keys, return false.
*/

function keyvalue_match(first_set, second_set){
  check_keys = [];
  for (var property in first_set){
    check_keys.push(property);
  }
  for (var i = 0; i<= check_keys.length; i++){
    if (second_set.hasOwnProperty(check_keys[i])){
      if (first_set[check_keys[i]] === second_set[check_keys[i]]){
        return true;
      }
    }
  }
  return false;
  return check_keys;
}

var people = {jeffrey: 31, joseph: 33, jennifer: 28};
var more_people = {maria: 67, sue: 57, lindsey: 30};
console.log(keyvalue_match(people, more_people));

/* RELEASE 2 */
/*
- Define a function that accepts a single interger
- Create a blank array within that function
- Loop through and add strings to the array equal to the interger
- Each array index will generate a random number between 1 and 10
	- Random number will be the length of the word in that position
	- This will be the new variable.
- Create a loop to do this for ten times.

*/

function random_words(num){
  generated_list = [];
  for (var i = 0; i < num; i++){
    random_number = Math.floor((Math.random() * 10) + 1);
    next_word = "";
    for (var c = 0; c < random_number; c++){
      second_random = Math.floor((Math.random() * 26) + 97);
      next_char = String.fromCharCode(second_random);
      next_word += next_char;
    }
    generated_list.push(next_word);
  }
  return generated_list;
}

console.log(random_words(3));
console.log(random_words(5));


var count = 10;
for (i = 0; i < count; i++){
  var new_random = Math.floor((Math.random() * 7) + 1);
  var current_array = random_words(new_random);
  console.log(current_array);
  var long_phrase = longest_phrase(current_array);
  console.log(long_phrase);
}