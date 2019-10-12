import 'package:benchmark_harness/benchmark_harness.dart';

import '../lib/helper.dart';

class ForEachBenchmark extends BenchmarkBase {
  const ForEachBenchmark() : super("forEach");

  static void main() {
    new ForEachBenchmark().report();
  }

  void run() {
    Map<String, int> map = Helper.generateMap();

    map.forEach((String key, int value) {
      Helper.increment(value);
    });
  }
}

main() {
  ForEachBenchmark.main();
}
