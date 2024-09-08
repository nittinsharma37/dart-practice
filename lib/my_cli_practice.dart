import "dart:math";

Map<String, int> findLargestSmallestWithreduce(List<int> arr) {
  int smallest = arr.reduce(min);
  int largest = arr.reduce(max);

  return {"smallest": smallest, "largest": largest};
}

Map<String, int> findLargestSmallest(List<int> arr) {
  int smallest = arr[0];
  int largest = arr[0];

  for (int i = 0; i < arr.length; i++) {
    if (smallest > arr[i]) {
      smallest = arr[i];
    } else if (largest < arr[i]) {
      largest = arr[i];
    }
  }
  return {"smallest": smallest, "largest": largest};
}

Map<String, int> secondSmallestAndLargestwithSet(List<int> arr) {
  int secondLargest = arr[0];
  int secondSmallest = arr[0];

  List<int> uniqueSorted = removeDuplicatesAndSort(arr);
  print(uniqueSorted);

  secondLargest = uniqueSorted[uniqueSorted.length - 2];
  secondSmallest = uniqueSorted[1];

  return {"secondSmallest": secondSmallest, "secondLargest": secondLargest};
}

List<int> removeDuplicatesAndSort(List<int> arr) {
  List unique = arr.toSet().toList();

  unique.sort();
  return unique as List<int>;
}

List reverseArr(List arr) {
  return arr.reversed.toList();
}

List reverseArrFor(List arr) {
  List reversedArr = [];

  for (int i = arr.length - 1; i >= 0; i--) {
    reversedArr.add(arr[i]);
  }
  return reversedArr;
}

String revString(String str) {
  String reversedStr = '';

  for (int i = str.length - 1; i >= 0; i--) {
    reversedStr += str[i];
  }

  return reversedStr;
}

String revWords(String str) {
  List<String> revWords = [];
  List<String> words = str.split(' ');
  for (int i = words.length - 1; i >= 0; i--) {
    revWords.add(words[i]);
  }
  return revWords.join(" ");
}
