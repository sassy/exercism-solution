class NthPrime {
  int prime(int order) {
    List<int> primes = [];
    for (int i = 2; primes.length < order; i++) {
      bool isPrime = true;
      for (int j = 2; j < i; j++) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) primes.add(i);
    }
    if (primes.isEmpty) throw ArgumentError("There is no zeroth prime");
    return primes.last;
  }
}
