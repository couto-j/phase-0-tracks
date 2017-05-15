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