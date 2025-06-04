void main() {
  List<int> numArr = new List<int>.generate(99, (index) => index + 1);

  int maxNum(List<int> numbers) {
    int max = numbers[0];

    for(int i = 0; i < numbers.length -1; i++) {
      if (numbers[i] > max) {
        max = numbers[i];
      }
    }

    return max;
  }

  print(maxNum(numArr));

  void gugudan (int num) {
    for(int i = 1; i <= 9; i++) {
      print('$num * $i = ${num * i}');
    }
  }

  gugudan(8);

  int factorial(int n) {
    int result = 0;

    if (n < 0) {
      return -1;
    } else if (n == 0 || n == 1) {
      return 1;
    } else {
      result = n * factorial(n - 1); // 재귀 호출
    }

    return result;
  }

  print(factorial(5));
}