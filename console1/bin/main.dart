import 'package:console1/test/console1_test.dart/' as test1;
import 'dart:io';

main(List<String> arguments) {
  print('Hello world: ${test1.calculate()}!');


  "7";

  double p = 3e8;
  var q = 3.14159;
  var r = 0xFFFFFFFF;
  var name = "David is my name";
  int l = 11;
  int w = 12;


  // ======== Basics =========
  print("hello world\n\n");
  print("It's me again");
  print((12/5)); /*Type inference*/
  print(p);
  print(r);

  // We can use single or dbl quotes
  print('Calling variables within a string: $r, $p, ${name.length}');

  print('The product of $l and $w is ${l*w} ');
  // We can concatenate the usual way
  print('The product of ' + l.toString() + " and " + w.toString() + ' is ' + (l*w).toString());

  // =====================

  // ======== Conditionals =========
  var height = 72;

  /* conditional expressions:
   * 1. condition ? expr1: expr2;
   * 2. expr1 ?? expr2;
  */

  //1.
  height < 100 ? print("your height: $height inches, is less than required\n\n"): print('yay, youre in\n');

  var smalldim = "Small dimensions";
  var bigdim = "Big dimensions";
  var dim;
  if (l < w) {
    dim = smalldim;
  } else {
    dim = bigdim;
  }
  // the above is equiv to:
  dim = l < w ? smalldim:bigdim;

  //2. expr1 ?? expr2;
  // if expr1 is null, eval expr2 instead

  var user1;
  var user2 = user1 ?? "David";
  print(user2);

  // Switch conditions
  var grade = "A"; // must be int | String
  switch(grade) {
    case 'A': print("$grade is for Excellent");
    break;
    case 'B': print("$grade is for Good");
    break;
    case 'C': print("$grade is for Expected");
    break;
    case 'D': print("$grade is for needs improvement");
    break;
    case 'F': print("$grade is for needs retry");
    break;
    default: print('$grade is invalid');
  }
  // ============================



  // ========== Loops/Iterators ===========

  for (var i=0; i<4; i++){
    print('I am iteration $i');
    while (i < 2) {
      print('I am sub-iteration $i');
      i++;
    }

    var j = i;
    do {
      j++;
      print ('I am nested iteration $j'); //j will reach 4
    } while (j < 3);
  }

  List cars = ["Ford", "GM", "Volvo", "Ferrari", "Tesla", "Ashton-Martin", "Hummer"];
  carLoop: for (var s in cars) { // for each w/ label
    print(s);
    for (var k=0; k<=s.length; k++) {
      if (k > 10){
        break carLoop; //break w/ label
      }
    }
  }


  L1: for (var i=1; i<=21; i++) {
    for (var j=2; j<i; j++){
      if (i % j == 0){
        continue L1;  // if i is composite, iterate over i
      }
    }
    print(i);
  }
  // =============================
}
