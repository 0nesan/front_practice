import 'dart:io';

void main() {
  void calculate(double firstNum, double secondNum, String operator) {
    double result;

    switch (operator) {
      case '+':
        result = firstNum + secondNum;
        break;
      case '-':
        result = firstNum - secondNum;
        break;
      case '*':
        result = firstNum * secondNum;
        break;
      case '/':
        if (secondNum == 0) {
          print('0으로 나눌 수 없습니다.');
          return;
        }
        result = firstNum / secondNum;
        break;
      default:
        print('알 수 없는 연산자입니다.');
        return;
    }

    print('결과: $result');
  }

  stdout.write('첫 번째 숫자: ');
  String? firstNumInput = stdin.readLineSync();

  if (firstNumInput == null || firstNumInput.isEmpty) {
    print('첫 번째 숫자를 입력하지 않았습니다.');
    return;
  }

  stdout.write('연산자 (+,-,*,/): ');
  String? operatorInput = stdin.readLineSync();

  if (operatorInput == null || operatorInput.isEmpty) {
    print('연산자를 입력하지 않았습니다.');
    return;
  }

  stdout.write('두 번째 숫자: ');
  String? secondNumInput = stdin.readLineSync();

  if (secondNumInput == null || secondNumInput.isEmpty) {
    print('두 번째 숫자를 입력하지 않았습니다.');
    return;
  }

  double? firstNum = double.tryParse(firstNumInput);
  double? secondNum = double.tryParse(secondNumInput);
  if (firstNum == null || secondNum == null) {
    print('숫자를 올바르게 입력하지 않았습니다.');
    return;
  }

  return calculate(firstNum, secondNum, operatorInput);
}