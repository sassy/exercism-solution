class PascalsTriangle {
  List<List<int>> rows(int row) {
    List<List<int>> result = [];
    for (int i = 0; i < row; i++) {
      if (i == 0) {
        result.add([1]);
      } else if (i == 1) {
        result.add([1, 1]);
      } else {
        List<int> ret = [1];
        for (int j = 0; j < result[i - 1].length - 1; j++) {
          ret.add(result[i - 1][j] + result[i - 1][j + 1]);
        }
        ret.add(1);
        result.add(ret);
      }
    }
    return result;
  }
}
