import 'package:benchmark_harness/benchmark_harness.dart';

import '../lib/helper.dart';

class ForInBenchmark extends BenchmarkBase {
  const ForInBenchmark() : super("for-in ");

  static void main() {
    new ForInBenchmark().report();
  }

  void run() {
    Map<String, int> map = Helper.generateMap();

    for (String key in map.keys) {
      Helper.increment(map[key]);
    }
  }
}

main() {
  ForInBenchmark.main();
}
