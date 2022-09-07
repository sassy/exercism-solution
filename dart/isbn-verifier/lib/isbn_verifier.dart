bool isValid(String isbn) {
  final codes = isbn.replaceAll('-', '').split('');
  if (codes.length != 10) return false;

  int cd = 0;
  for (int i = 0; i < codes.length; i++) {
    if (codes[i] == 'X' && i != 9) {
      return false;
    } else if (new RegExp(r'[A-W|Y-Z]').hasMatch(codes[i])) return false;
    cd += int.parse(codes[i] == 'X' ? '10' : codes[i]) * (10 - i);
  }
  return (cd % 11) == 0;
}
