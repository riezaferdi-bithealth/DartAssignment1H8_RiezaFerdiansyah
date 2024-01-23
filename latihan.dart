void main() {
  //latihan 3
  print("---------latihan 3---------");
  print(primeNumber([1, 3, 5, 10, 11, 17, 90, 72, 61, 123]));

  //latihan 4
  print("---------latihan 4---------");
  print(stringMod("ABCD ef g HIJKL"));
  print(stringMod("A bcde FGHIJ"));

  //latihan 5
  print("---------latihan 5---------");
  print(farToCelc(32));

  //latihan 6
  print("---------latihan 6---------");
  print(fibonacci(10));

  //latihan 7
  print("---------latihan 7---------");
  print(inverseString("Wuatauw"));

  //latihan 8
  print("---------latihan 8---------");
  print(isAnagram("Wuatauw", "Hactive"));
  print(isAnagram("silence", "license"));
  print(isAnagram("William Shakespeare", "I am a weakish speller"));

  //latihan 9
  print("---------latihan 9---------");
  print(modus([1, 2, 3, 2, 5, 6, 3, 2, 1, 2, 5]));

  //latihan 10
  print("---------latihan 10---------");
  print(isArithmetic([1, 2, 3, 4, 5, 6]));
  print(isArithmetic([2, 4, 6, 12, 24]));
  print(isArithmetic([2, 4, 6, 8]));
  print(isArithmetic([2, 6, 18, 54]));
  print(isArithmetic([1, 2, 3, 4, 7, 9]));
}

//latihan 3
//return array of prime number from array input
List<int> primeNumber(List<int> list) {
  List<int> result = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] > 1) {
      for (int j = 2; j < list[i]; j++) {
        if (list[i] % j == 0) {
          break;
        } else if (j == list[i] - 1) {
          result.add(list[i]);
        }
      }
    }
  }
  return result;
}

//latihan 4
//input string become alphabet+2, capital letter become lower case and vice versa, space become underscore
String stringMod(String input) {
  String result = "";
  for (int i = 0; i < input.length; i++) {
    if (input[i] == " ") {
      result += "_";
    } else {
      if (input[i].toLowerCase() == input[i]) {
        String newInput = String.fromCharCode(input[i].codeUnitAt(0) + 2);
        result += newInput.toUpperCase();
      } else {
        String newInput = String.fromCharCode(input[i].codeUnitAt(0) + 2);
        result += newInput.toLowerCase();
      }
    }
  }
  return result;
}

//latihan 5
//conversion farenheit to celcius
double farToCelc(double input) {
  return (input - 32) * 5 / 9;
}

//latihan 6
//print fibonacci sequence from n input
List<int> fibonacci(int n) {
  List<int> result = [];
  if (n == 0) {
    result.add(0);
  } else if (n == 1) {
    result.add(1);
  } else {
    result.add(0);
    result.add(1);
    for (int i = 2; i < n; i++) {
      result.add(result[i - 1] + result[i - 2]);
    }
  }
  return result;
}

//latihan 7
//inverse string
String inverseString(String input) {
  return input.split('').reversed.join('');
}

//latihan 8
//check if two of sentence is an anagram
bool isAnagram(String input1, String input2) {
  List<String> list1 = input1.toLowerCase().replaceAll(' ', '').split('');
  List<String> list2 = input2.toLowerCase().replaceAll(' ', '').split('');
  list1.sort();
  list2.sort();
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] != list2[i]) {
      return false;
    }
  }
  return true;
}

//latihan 9
//most frequency number from array
List<int> modus(List<int> list) {
  int max = 0;
  List<int> newList = [];
  for (int i = 0; i < list.length; i++) {
    int count = 0;
    for (int j = 0; j < list.length; j++) {
      if (list[i] == list[j]) {
        count++;
      }
    }
    if (count >= max && i != 0) {
      max = count;
      if (!newList.contains(list[i])) {
        newList.add(list[i]);
      }
    }
  }
  newList.sort();
  return newList;
}

//latihan 10
//check if the sequence of array is arithmetic
bool isArithmetic(List<int> list) {
  var diff = list[1] - list[0];
  for (var i = 1; i < list.length; i++) {
    if (list[i] - list[i - 1] != diff) {
      return false;
    }
  }
  return true;
}