bool isValid(String isbn) {
  if (!RegExp(r'[0-9-]{9,}[0-9|X]$').hasMatch(isbn)) return false;
  final codes = isbn.replaceAll('-', '').split('');

  int cd = 0;
  for (int i = 0; i < codes.length; i++) {
    cd += (int.tryParse(codes[i]) ?? 10) * (codes.length - i);
  }
  return ((cd % 11) == 0 && codes.length == 10);
}
