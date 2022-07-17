// ignore_for_file: unused_local_variable

void inheritance02() {
  final a = A();
  final b = B();
  b.note();
}

// Super Class
class A {
  String letterValue = 'a-to-z';

  disp() {
    print('I am Super Class');
  }

  disp1(String name, String city) {
    print('Name = $name and City = $city');
  }
}

// Sub Class
class B extends A {
  String letterValue = 'z-to-a';

  note() {
    print(super.letterValue);
    print(letterValue);
  }

  @override
  disp() {
    print('I am Sub Class');
  }

  @override
  disp1(String name, String city) {
    print('A = $name and B = $city');
  }
}
