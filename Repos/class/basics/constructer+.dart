// ignore_for_file: unused_local_variable

void main() {
  // clsOne();
  clsTwo();
  // demoExplore();
}

class A {
  final x;
  const A({required this.x});
}

void clsOne() {
  var a =  A(x: 'hello');
  var b =  A(x: 'hello');

  // A a = const A(x: 'hello');
  // A b = const A(x: 'hello');

  var isIdentical = identical(a, b);
  print('isIdentical--> A : $isIdentical');
  print(a.hashCode);
  print(b.hashCode);
  print(a.runtimeType);
  print(b.runtimeType);
}

class B {
  var x;
}

void clsTwo() {
  // var a = B();
  B a = B();
  // var b = B();
  B b = B();

  var isIdentical = identical(a, b);
  print('isIdentical--> B: $isIdentical');
  print(a.hashCode);
  print(b.hashCode);
  print(a.runtimeType);
  print(b.runtimeType);
}

class Demo {
  var alfa;
  var bita;
  Demo({
    required this.alfa,
    required this.bita,
  });

  int remarks = 102;
  static String title = 'GoTo';

  greet({required int a, required String b}) {
    print('method: $alfa is $a \n $bita is $b');
  }
}

void demoExplore() {
  // var demo = Demo(alfa: 'Alfa', bita: 'Bita');
  Demo demo = Demo(alfa: 'Alfa', bita: 'Bita');

  print(demo.remarks);
  print(Demo.title);

  demo.greet(a: 100, b: 'tested');
}
