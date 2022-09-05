class Hamming {
  int distance(String src, String dst) {
    if (src.length != dst.length) {
      if (src.isEmpty || dst.isEmpty) {
        throw ArgumentError("no strand must be empty");
      } else {
        throw ArgumentError("left and right strands must be of equal length");
      }
    }
    var srcLetters = src.split('');
    var dstLetters = dst.split('');
    int score = 0;
    for (int i = 0; i < src.length; i++) {
      if (srcLetters[i] != dstLetters[i]) {
        score++;
      }
    }
    return score;
  }
}
