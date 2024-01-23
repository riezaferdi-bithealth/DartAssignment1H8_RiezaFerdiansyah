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
