class RnaTranscription {
  final Map<String, String> _table = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'};

  String toRna(String dna) {
    String result = '';
    dna.split('').forEach((String elem) {
      result += _table[elem] ?? '';
    });
    return result;
  }
}
