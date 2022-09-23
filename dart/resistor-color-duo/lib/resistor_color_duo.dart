class ResistorColorDuo {
  List<String> colorList = [
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white",
  ];
  int value(List<String> colors) =>
      colorList.indexOf(colors[0]) * 10 + colorList.indexOf(colors[1]);
}
