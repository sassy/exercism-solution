class Node {
  int value;
  Node? right = null;
  Node? left = null;

  Node(this.value);

  String get data {
    return this.value.toString();
  }

  void insert(int number) {
    if (this.value >= number) {
      this.left == null ? this.left = Node(number) : this.left?.insert(number);
    } else {
      this.right == null
          ? this.right = Node(number)
          : this.right?.insert(number);
    }
  }

  void getSortedData(List<String> list) {
    if (this.left != null) {
      this.left?.getSortedData(list);
    }
    list.add(this.data);
    if (this.right != null) {
      this.right?.getSortedData(list);
    }
  }
}

class BinarySearchTree {
  late Node root;

  BinarySearchTree(String value) {
    this.root = Node(int.parse(value));
  }
  void insert(String number) {
    root.insert(int.parse(number));
  }

  List<String> get sortedData {
    List<String> ret = [];
    root.getSortedData(ret);
    return ret;
  }
}
