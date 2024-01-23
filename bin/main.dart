import 'package:flutter_assignment_1/soal_3.dart' as soal_3;
import 'package:flutter_assignment_1/soal_4.dart' as soal_4;
import 'package:flutter_assignment_1/soal_5.dart' as soal_5;
import 'package:flutter_assignment_1/soal_6.dart' as soal_6;
import 'package:flutter_assignment_1/soal_7.dart' as soal_7;
import 'package:flutter_assignment_1/soal_8.dart' as soal_8;
import 'package:flutter_assignment_1/soal_9.dart' as soal_9;
import 'package:flutter_assignment_1/soal_10.dart' as soal_10;

void main() {
  //latihan 3
  print("---------latihan 3---------");
  print(soal_3.primeNumber([1, 3, 5, 10, 11, 17, 90, 72, 61, 123]));

  //latihan 4
  print("---------latihan 4---------");
  print(soal_4.stringMod("ABCD ef g HIJKL"));
  print(soal_4.stringMod("A bcde FGHIJ"));

  //latihan 5
  print("---------latihan 5---------");
  print(soal_5.farToCelc(32));

  //latihan 6
  print("---------latihan 6---------");
  print(soal_6.fibonacci(10));

  //latihan 7
  print("---------latihan 7---------");
  print(soal_7.inverseString("Wuatauw"));

  //latihan 8
  print("---------latihan 8---------");
  print(soal_8.isAnagram("Wuatauw", "Hactive"));
  print(soal_8.isAnagram("silence", "license"));
  print(soal_8.isAnagram("William Shakespeare", "I am a weakish speller"));

  //latihan 9
  print("---------latihan 9---------");
  print(soal_9.modus([1, 2, 3, 2, 5, 6, 3, 2, 1, 2, 5]));

  //latihan 10
  print("---------latihan 10---------");
  print(soal_10.isArithmetic([1, 2, 3, 4, 5, 6]));
  print(soal_10.isArithmetic([2, 4, 6, 12, 24]));
  print(soal_10.isArithmetic([2, 4, 6, 8]));
  print(soal_10.isArithmetic([2, 6, 18, 54]));
  print(soal_10.isArithmetic([1, 2, 3, 4, 7, 9]));
}