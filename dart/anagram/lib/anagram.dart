class Anagram {
  bool checkSpell(List<String> parts, String target) {
    List<String> checkTargets = target.split('');
    List<String> checkParts = List.from(parts);
    bool ret = true;
    for (int i = 0; i < target.length; i++) {
      final c = checkParts.removeLast();
      ret = ret &&
          (checkTargets.contains(c.toLowerCase()) ||
              checkTargets.contains(c.toUpperCase()));
      checkTargets.remove(c);
    }
    return ret;
  }

  List<String> findAnagrams(String given, List<String> candidates) {
    var parts = given.split('');

    List<String> result = candidates
        .where((element) =>
            given.length == element.length &&
            given.toLowerCase() != element.toLowerCase() &&
            checkSpell(parts, element))
        .toList();
    return result;
  }
}
