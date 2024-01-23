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