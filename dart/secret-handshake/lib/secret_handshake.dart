class SecretHandshake {
  List<String> commands(int code) {
    List<String> result = [];
    if (code & 1 == 1) result.add('wink');
    if (code & 2 == 2) result.add('double blink');
    if (code & 4 == 4) result.add('close your eyes');
    if (code & 8 == 8) result.add('jump');
    if (code & 16 == 16) result = result.reversed.toList();
    return result;
  }
}
