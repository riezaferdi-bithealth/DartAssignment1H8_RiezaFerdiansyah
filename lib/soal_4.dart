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