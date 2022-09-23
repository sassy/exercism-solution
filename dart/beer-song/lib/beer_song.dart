class BeerSong {
  List<String> recite(int start, int quantity) {
    List<String> result = [];
    for (; quantity > 0; quantity--) {
      result.add(start == 0
          ? 'No more bottles of beer on the wall, no more bottles of beer.'
          : '${start} ${start == 1 ? "bottle" : "bottles"} of beer on the wall, ${start} ${start == 1 ? "bottle" : "bottles"} of beer.');
      start--;
      result.add(start == -1
          ? 'Go to the store and buy some more, 99 bottles of beer on the wall.'
          : (start == 0
              ? 'Take it down and pass it around, no more bottles of beer on the wall.'
              : 'Take one down and pass it around, ${start} ${start == 1 ? "bottle" : "bottles"} of beer on the wall.'));
      if (quantity > 1) result.add('');
    }
    return result;
  }
}
