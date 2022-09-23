class CollatzConjecture {
  int steps(int n) {
    if (n <= 0) throw ArgumentError("Only positive numbers are allowed");

    int count = 0;
    for (; n != 1; count++) {
      n = n % 2 == 0 ? n ~/ 2 : 3 * n + 1;
    }
    return count;
  }
}
