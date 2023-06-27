void exercices() {
  // 1
  String sayHello(String name) {
    return 'Hello, $name !';
  }

  print(sayHello('World'));

  // 2
  num sum(num a, num b) {
    return a + b;
  }

  print(sum(1, 2));

  // 3
  num sumMany(List<num> numbers) {
    num result = 0;
    for (final number in numbers) {
      result += number;
    }
    return result;
  }

  print(sumMany([1, 2, 3, 4, 5]));

  // 4
  void sumAndPrint(num a, num b, bool shouldPrint) {
    num result = a + b;
    if (shouldPrint) {
      print('$a + $b = $result');
    }
  }

  sumAndPrint(1, 2, true);

  // 5
  num sumAndFormat(num a, num b, [String? ft]) {
    num result = a + b;
    if (ft == 'int') {
      return result.toInt();
    } else if (ft == 'double') {
      return result.toDouble();
    }

    return result;
  }

  print(sumAndFormat(1, 2, 'int'));
  print(sumAndFormat(1, 2, 'double'));
  print(sumAndFormat(1, 2));

  // 6
  String strReverse (String str) => str.split('').reversed.join();
  print(strReverse('Hello'));

  // 7
  String fibonacci(int n) {
    if (n == 0) {
      return '0';
    } else if (n == 1) {
      return '0, 1';
    } else {
      String result = '0, 1';
      int a = 0;
      int b = 1;
      for (int i = 2; i <= n; i++) {
        int c = a + b;
        result += ', $c';
        a = b;
        b = c;
      }
      return result;
    }
  }

  print(fibonacci(17));
}