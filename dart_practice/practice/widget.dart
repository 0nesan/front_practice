import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key})

  @override
  Widget build(BuildContext context) {
    /**
     * @description
     * StatelessWidget 은 상태가 없는 widget 을 만들 때 사용됨
     * StatelessWidget 의 Widget 의 build 를 재정의하여 위젯 트리를 정의
     * * build 메서드는 context 를 매개변수로 받아 위젯 트리를 반환함
     * BuildContext 는 flutter 에서 위젯의 위치와 상태를 나타내는 객체이며 위젯 트리를 빌드할 때 자동으로 제공함
     */
    return Scaffold(
      appBar: AppBar(
        title: Text('First Widget'),
      ),
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}