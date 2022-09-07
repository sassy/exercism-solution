bool isValid(String isbn) {
  if (!RegExp(r'[0-9-]{9,}[0-9|X]$').hasMatch(isbn)) return false;
  final codes = isbn.replaceAll('-', '').split('');
  if (codes.length != 10) return false;

  int cd = 0;
  for (int i = 0; i < codes.length; i++) {
    cd += int.parse(codes[i] == 'X' ? '10' : codes[i]) * (10 - i);
  }
  return (cd % 11) == 0;
}
