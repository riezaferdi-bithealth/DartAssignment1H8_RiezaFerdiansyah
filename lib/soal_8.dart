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