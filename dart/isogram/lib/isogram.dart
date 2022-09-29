class Isogram {
  bool isIsogram(String word) {
    List<String> memo = [];
    List<String> it =
        word.replaceAll(RegExp(r'-|\s'), "").toLowerCase().split('');
    for (String char in it) {
      if (memo.contains(char)) return false;
      memo.add(char);
    }

    return true;
  }
}
