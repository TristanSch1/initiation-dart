void exercices() {
  // 1
  int price1 = 10;
  double price2 = 10.0;

  print(price1);
  print(price2);

  // 2
  double sum = price1 + price2;
  print('Sum: $sum');

  // 3
  print('Type of sum: ${sum.runtimeType}');

  // 4
  int sumInt = sum.toInt();
  print('Sum int: $sumInt');

  // 5
  final String strSeven = '7';
  final int numSeven = int.parse(strSeven);
  print('Num seven: $numSeven - Type: ${numSeven.runtimeType}');
}