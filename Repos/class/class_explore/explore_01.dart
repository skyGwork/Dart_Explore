import 'explore_04.dart';

void Explore01() {
  print('Explore_01');
  // a();
  // b();
  // print(Strings.note);
  balDeets();
}

// from explore
void balDeets() {
  final bank = BankDeets(100);
  bank.dedposit(100);
  print(bank.bal);
}

class B {
  double d;
  B(this.d);
  B.named(double h) : d = (h - 10) / 1.5;
  B.one(int ot) : d = 1.5;

  // get h => null;
  double get h => d / 2;
  int get ot => 10;
}

void b() {
  final bNamed = B.named(100);
  print('bNamed.d ${bNamed.d}');
  print('bNamed.h ${bNamed.h}');

  final bOne = B.one(100);
  print('bOne.d: ${bOne.d}');
  print('bOne.ot ${bOne.ot}');
}

class A {
  final int a;
  final int b;
  // int c;
  final int c;

  A(this.a, this.b) : c = 30;

  int sum() {
    return a + b + c;
  }

  A.q(this.a, this.b, this.c);
}

void a() {
  A exone = A(10, 100);
  print(exone.sum());

  final aq = A.q(10, 20, 30);
  print(aq.c);
}

class Strings {
  static String note = 'Text is ready';
  static int height = 12;
}
