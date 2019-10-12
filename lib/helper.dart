mixin Helper {
  static Map<String, int> generateMap() {
    return Map.fromIterable(List<int>.generate(100000, (int index) => index),
        key: (item) => item.toString(),
        value: (item) => item);
  }
  static int increment(int value) => value + 1;
}