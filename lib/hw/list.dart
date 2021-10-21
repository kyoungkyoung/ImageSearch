import 'dart:math';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Trader && runtimeType == other.runtimeType &&
              name == other.name;

  @override
  int get hashCode => name.hashCode;
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

List<int> numbers = [2, 0, 1, 3, 4, 5];
List<String> alphabet = ['a', 'r', 'd', 'w', 'z'];

void main() {
  int totalF =
  numbers.fold(0, (previousValue, element) => previousValue + element);
  int totalR = numbers.reduce((value, element) {
    return value + 10;
  });
  // int totalR2 = numbers.reduce((value, element) => null);
  print(totalF);
  print(totalR);

  numbers.sort((a, b) => a.compareTo(b));
  print(numbers); // [0,1,2,3,4,5]

  print(1.compareTo(2)); // -1
  print(1.compareTo(1)); // 0
  print(1.compareTo(0)); // 1

  alphabet.sort((a, b) => a.compareTo(b));
  print(alphabet); // [a, d, r, w, z]
  print('a'.compareTo('n')); // -1



// 1. 2011년에 일어난 모든 트랜잭션을 찾아 값을 오름차순으로 정리하여 나열하시오
  print("1.");
  transactions.sort((a, b) => a.value.compareTo(b.value));
  transactions.where((e) => e.year == 2011).forEach((e) => print(e.value));
  print("---------------------------");

  // A.
  transactions
    .sort((Transaction a, Transaction b) => a.value.compareTo(b.value));


// 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  print("2.");
  transactions.map((e) => e.trader.city).toSet().toList().forEach(print);
  print("---------------------------");

// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  // case 1.
  print("3-1.");
  List<String> name = [];
  for (int i = 0; i < transactions.length; i++) {
    if (transactions[i].trader.city == "Cambridge") {
      name.add(transactions[i].trader.name);
    }
  }
  name.sort((a, b) => a.compareTo(b));
  name.toSet().forEach(print);
  print("---------------------------");

  // case 2.
  print("3-2.");
  List<String> name2 = [];
  name2 = transactions.where((e) => e.trader.city == "Cambridge").map((e) => e
      .trader.name).toList();
  name2.sort((a, b) => a.compareTo(b));
  name2.toSet().forEach(print);
  print("---------------------------");

// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  print("4.");
  List<String> name3 = [];
  name3 = transactions.map((e) => e.trader.name).toList();
  name3.sort((a, b) => a.compareTo(b));
  name3.toSet().forEach(print);
  print("---------------------------");

// 5. 밀라노에 거래자가 있는가?
  print("5-1.");
  // case 1.
  String milanExist = 'no';
  for (int i = 0; i < transactions.length; i++) {
    if (transactions[i].trader.city == "Milan") {
      milanExist = "yes";
    }
  }
  print(milanExist);
  print("---------------------------");

  // case 2.
  print("5-2.");
  String milanExist2 = 'no';
  if (transactions
      .where((e) => e.trader.city == "Milan")
      .isNotEmpty) {
    milanExist2 = "yes";
  }
  print(milanExist2);
  print("---------------------------");

  // A.
  transactions.any((e) => e.trader.city == 'Milan');


// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  // case 1.
  print("6-1.");
  for (int i = 0; i < transactions.length; i++) {
    if (transactions[i].trader.city == "Cambridge") {
      print(transactions[i].value);
    }
  }
  print("---------------------------");

  // case 2.
  print("6-2.");
  transactions.where((e) => e.trader.city == "Cambridge")
      .map((e) => e.value)
      .forEach(print);
  print("---------------------------");

  // A.
  transactions.where((e) => e.trader.city == 'Cambridge').forEach((e) {
    print(e.value);
  });

// 7. 전체 트랜잭션 중 최대값을 얼마인가?
  // case 1.
  print("7-1.");
  List<int> values = transactions.map((e) => e.value).toList();
  print(values.reduce(max));
  print("---------------------------");

  // case 2.
  print("7-2.");
  List<int> values2 = transactions.map((e) => e.value).toList();
  values2.sort((a, b) => a.compareTo(b));
  print(values2[values.length - 1]);
  print("---------------------------");

// 8. 전체 트랜잭션 중 최소값은 얼마인가?
  // case 1.
  print("8-1.");
  List<int> values3 = transactions.map((e) => e.value).toList();
  print(values3.reduce(min));
  print("---------------------------");

  // case 2.
  print("8-2.");
  List<int> values4 = transactions.map((e) => e.value).toList();
  values4.sort((a, b) => a.compareTo(b));
  print(values4[0]);


// 9. 총합 구하기
  transactions.fold<int>(
      0, (previousValue, element) => previousValue + element.value);
}



