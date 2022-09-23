class BeerSong {
  List<String> recite(int start, int quantity) {
    List<String> result = [];
    for (int i = 0; quantity > 0; i++, quantity--) {
      if (i > 0) result.add('');
      if (start == 0) {
        result.add(
            'No more bottles of beer on the wall, no more bottles of beer.');
        result.add(
            'Go to the store and buy some more, 99 bottles of beer on the wall.');
        start--;
      } else {
        result.add(
            '${start} ${start == 1 ? "bottle" : "bottles"} of beer on the wall, ${start} ${start == 1 ? "bottle" : "bottles"} of beer.');
        start--;
        result.add(start == 0
            ? 'Take it down and pass it around, no more bottles of beer on the wall.'
            : 'Take one down and pass it around, ${start} ${start == 1 ? "bottle" : "bottles"} of beer on the wall.');
      }
    }
    return result;
  }
}
