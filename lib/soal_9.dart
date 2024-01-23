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