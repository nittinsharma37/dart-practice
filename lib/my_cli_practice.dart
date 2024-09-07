import "dart:math";

// void main() {
//   for (int i = 0; i < 10; i++) {
//     print('hello ${i + 1}');
//   }
//   Leap leap = Leap();

//   print(leap.leapYear(2023));

// }

// class Leap{
//   Leap();

//   bool leapYear(int year){

//     if((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)){
//       return true;
//     }else{
//       return false;
//     }

//   }

// }

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
