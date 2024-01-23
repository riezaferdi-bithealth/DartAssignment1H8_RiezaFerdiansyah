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