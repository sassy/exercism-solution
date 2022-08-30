int score(String target) {
  int result = 0;
  for (var s in target.toUpperCase().split('')) {
    switch (s) {
      case 'A':
      case 'E':
      case 'I':
      case 'O':
      case 'U':
      case 'L':
      case 'N':
      case 'R':
      case 'S':
      case 'T':
        result++;
        break;
      case 'D':
      case 'G':
        result += 2;
        break;
      case 'B':
      case 'C':
      case 'M':
      case 'P':
        result += 3;
        break;
      case 'F':
      case 'H':
      case 'V':
      case 'W':
      case 'Y':
        result += 4;
        break;
      case 'K':
        result += 5;
        break;
      case 'J':
      case 'X':
        result += 8;
        break;
      case 'Q':
      case 'Z':
        result += 10;
        break;
    }
  }
  return result;
}
