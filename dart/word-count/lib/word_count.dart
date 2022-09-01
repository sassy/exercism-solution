class WordCount {
  Map<String, int> countWords(String sentence) {
    var words = sentence
        .replaceAll(RegExp(r"[^a-zA-Z0-9\\']"), ' ')
        .replaceAll(RegExp(r"\s\'|\'$"), ' ')
        .trim()
        .split(RegExp(r'\s+|,+'));
    Map<String, int> result = {};
    for (String word in words) {
      String lowWord = word.toLowerCase();
      if (result.containsKey(lowWord)) {
        result[lowWord] = result[lowWord]! + 1;
      } else {
        result[lowWord] = 1;
      }
    }
    return result;
  }
}
