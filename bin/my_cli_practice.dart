import 'package:my_cli_practice/my_cli_practice.dart';

void main() {
  print("hello from dart cli");
  List<int> arr = const [23, 5, 8, -9, 11, 11, 13, 15, 16];
  print(arr);
  Map<String, int> result1 = findLargestSmallestWithreduce(arr);
  Map<String, int> result2 = findLargestSmallest(arr);
  Map<String, int> result3 = secondSmallestAndLargestwithSet(arr);
  print("$result1\n$result2\n$result3");
}
