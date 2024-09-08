import 'package:my_cli_practice/leap.dart';
import 'package:my_cli_practice/my_cli_practice.dart';

void main() {
  String str = "hello from dart cli";
  print(str);

  Leap leapYearResult = Leap();
  print(leapYearResult.leapYear(2024));

  List<int> arr = const [23, 5, 8, -9, 11, 11, 13, 15, 16];
  print(arr);
  Map<String, int> result1 = findLargestSmallestWithreduce(arr);
  Map<String, int> result2 = findLargestSmallest(arr);
  Map<String, int> result3 = secondSmallestAndLargestwithSet(arr);
  print("$result1\n$result2\n$result3");
  List arrResversedresult = reverseArr(arr);
  print("reversed arr :  $arrResversedresult");
  List revArr = reverseArrFor(arr);
  print(revArr);
  String revStr = revString(str);
  print(revStr);
  String revWrds = revWords(str);
  print(revWrds);
}
