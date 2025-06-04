class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

  set name(String name) {
    /**
     * @description
     * setter 메서드는 객체의 속성을 설정할 때 사용됨.
     * 이 메서드를 오버라이드하면 객체의 속성을 변경할 때 원하는 로직을 추가할 수 있음.
     * * 예를 들어, name 속성을 설정할 때 특정 조건을 검사하도록 구현함.
     * 데이터 안전성 혹은 계산된 값 그리고 캡슐화를 할 때 사용함.
     * 지연 초기화 및 로깅 및 디버깅 용이성 그리고 호환성 유지를 위해 사용되기도 함.
     * */
    if (name.isNotEmpty) {
      _name = name;
    } else {
      throw ArgumentError('Name cannot be empty');
    }
  }

  set age(int age) {
    if (age >= 0) {
      _age = age;
    } else {
      throw ArgumentError('Age cannot be negative');
    }
  }

  @override
  String toString() {
    /**
     * @description
     * toString() 메서드는 객체를 문자열로 표현할 때 사용됨.
     * 이 메서드를 오버라이드하면 객체를 출력할 때 원하는 형식으로 문자열을 반환할 수 있음.
     * * 예를 들어, Person 객체를 출력할 때 name 과 age 속성을 포함한 문자열을 반환하도록 구현함.
     * */
    if( _name.isEmpty || _age < 0) {
      return 'Invalid Person';
    }

    return 'Person(name: $name, age: $age)';
  }
}

void main() {
  /**
   * @description
   * dart 는 js와 달리 클래스가 함수가 아니라 실제 객체임.
   * 객체를 생성할 때 new 키워드를 작성하지 않아도 됨 (문법적 특성 flutter 2.0~)
   * 객체 그 자체를 타입으로 지정할 수 있음 (문법적 특성)
   * */
  List<Person> students = [
    Person('hans', 20),
    Person('hwang', 22)
  ];

  for(var student in students){
    print(student);
  }
}

abstract class Animal {
  final String name;
  final int age;

  Animal(this.name, this.age);

  // 추상 메서드. 상속받는 객체에서 정의해야함.
  void makeSound();

  // 일반 메서드
  void sleep() {
    print('$name is sleeping');
  }
}

class Dog extends Animal {
  // 부모 클래스 Animal의 생성자를 호출
  // super('dog', 10); // 부모 클래스의 생성자에 인자를 전달
  Dog(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('$name barks');
  }

  @override
  String toString() {
    return 'Dog(name: $name, age: $age)';
  }
}

// 암시적 메서드 (모든 class 는 기본으로 interface 를 상속받음)
class Flyable {
  void fly() {
    print('Flying');
  }

  void land() {
    print('Landing');
  }
}

class Bird implements Flyable {
  final String name;

  Bird(this.name);

  @override
  void fly() {
    print('$name is flying');
  }

  @override
  void land() {
    print('$name is landing');
  }
}

/**
 * @description
 * 인터페이스
 * Implements 인터페이스는 클래스가 특정 메서드를 구현하도록 강제하는 계약을 정의함.
 * 클래스가 인터페이스를 구현하면 해당 인터페이스에 정의된 모든 메서드를 구현해야 함.
 * 이렇게 하면 클래스가 인터페이스의 계약을 준수함을 보장할 수 있음.
 * 인터페이스는 다중 상속을 지원함.
 *
 * Extends
 * Extends 키워드는 클래스가 다른 클래스를 상속받을 때 사용됨.
 * 상속받는 클래스는 부모 클래스의 모든 속성과 메서드를 상속받으며, 필요에 따라 오버라이드할 수 있음.
 * extends 키워드는 단일 상속만 지원함.
 *
 * Mixin
 * Mixin 은 클래스가 다른 클래스의 기능을 재사용할 수 있도록 하는 방법임.
 * Mixin 은 클래스에 추가적인 기능을 제공하며, 다른 클래스에 적용할 수 있음.
 * Mixin 은 다중 상속을 지원함.
 * Mixin 은 일반적으로 상태를 가지지 않으며, 메서드만 포함함.
 * Mixin 은 클래스에 기능을 추가하는 데 사용되며, 다른 클래스와 결합하여 새로운 기능을 만들 수 있음.
 * Mixin 은 주로 기능을 재사용하고, 코드 중복을 줄이는 데 사용됨.
 */