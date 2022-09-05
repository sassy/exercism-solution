class Raindrops {
  String convert(int seed) {
    String result = '';
    if (seed % 3 == 0) result += 'Pling';
    if (seed % 5 == 0) result += 'Plang';
    if (seed % 7 == 0) result += 'Plong';

    return result == '' ? seed.toString() : result;
  }
}
