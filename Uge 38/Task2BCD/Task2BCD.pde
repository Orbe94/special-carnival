//2.b Write a function that receives to integers as parameters and returns the sum of them.
void setup(){

mathProblem (5,10);
println (bigBoi("forza fc"));
String str = "Kage";
println(firstLetterBig(str));

}
int mathProblem(int a, int b){
  int total = a + b;
  println(total);
  return total;
}

//2.c Write a function that receives a string and returns it as uppercase. (Hint: ".toUpperCase()". Further hint: https://www.w3schools.com/jsref/jsref_toUpperCase.asp )

String bigBoi(String boi){
  return boi.toUpperCase();
}

//2.d Write a function that receives a string and returns true if the first letter of the string is uppercase. (Hints: ".charAt(0)" and "Character.isUpperCase('a');"

boolean firstLetterBig(String str) {
  return Character.isUpperCase(str.charAt(0));
  
  
}
