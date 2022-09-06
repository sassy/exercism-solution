class RnaTranscription {
  String toRna(String dna) {
    Map<String, String> table = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'};
    String result = '';
    dna.split('').forEach((String elem) {
      var ret = table[elem];
      if (ret != null) result += ret;
    });
    return result;
  }
}
