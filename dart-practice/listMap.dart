import 'dart:io';

void main() {
  List<int> numbers = [];

  stdout.write('숫자 입력');
  String? num = stdin.readLineSync();

  if (num == null || num.isEmpty) {
    print('숫자를 입력하지 않았습니다.');
    return;
  }

  int? inputNum = int.tryParse(num);
  if (inputNum == null) {
    print('숫자를 올바르게 입력하지 않았습니다.');
    return;
  }

  for(int i = 0; i < inputNum; i++) {
    numbers.add(i);
  }
  print(numbers);

  Map<String, int> numberMap = {};
  for (int i = 0; i < numbers.length; i++) {
    numberMap['number_$i'] = numbers[i];
  }

  print(numberMap);
 }