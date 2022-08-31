class DifferenceOfSquares {
  int squareOfSum(int number) {
    int result = 0;
    for (int i = 1; i <= number; i++) {
      result += i;
    }
    return result * result;
  }

  int sumOfSquares(int number) {
    int result = 0;
    for (int i = 1; i <= number; i++) {
      result += i * i;
    }
    return result;
  }

  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }
}
