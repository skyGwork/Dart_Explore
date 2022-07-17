// ignore_for_file: unused_local_variable

void Explorer() {
  print('explore tets');
  // complex();
  temperature();
}

class A {
  //!Can't define a const constructor for a class with non-final fields.
  // int m;
  final int m;
  final int n;

  //  A(this.m, this.n);
  const A(this.m, this.n);

//!required
  // const A({
  //   required this.m,
  //   required this.n,
  // });

}

void a() {
  // final a = A(10, 100);
  // !The constructor being called isn't a const constructor.Try removing 'const' from the constructor invocation.
  // const a = A(10, 100);
  const a = A(10, 100);

//!required
  // const a = A(m:10, n:100);
  // A a = A(10, 100);
}

class Complex {
  final double re;
  final double im;

  const Complex(this.re, this.im);

  const Complex.zero()
      : re = 0,
        im = 0;
  const Complex.identity()
      : re = 1,
        im = 0;
  const Complex.real(this.re) : im = 0;
  const Complex.imaginary(this.im) : re = 0;
}

void complex() {
  final zero = Complex.zero();
  final identity = Complex.identity();

  final real = Complex.real(3);

  // final real = Complex(3, 0);
  final imaginary = Complex.imaginary(4);
  // final imaginary = Complex(0, 4);
}

//!getter and setter

class Temperature {
  double celcious;
  Temperature.celcious(this.celcious);
  Temperature.farenheit(double farenheit) : celcious = (farenheit - 32) / 1.8;
  // double farenheit() => celcious * 1.8 + 32;
  double get farenheit => celcious * 1.8 + 32;
  // get farenheit => null;
  set farenheit(double farenheit) => celcious = (farenheit - 32) / 1.8;
}

void temperature() {
  final temp1 = Temperature.celcious(30);
  final temp2 = Temperature.farenheit(90);

  print('temp1.celcious ${temp1.celcious}');
  temp1.celcious = 32;
  print('temp1.farenheit ${temp1.farenheit}');
  temp1.farenheit = 90;
  print('temp1.farenheit ${temp1.farenheit}');
}

// ! privet var

class BankDeets {
  double _bal;
  BankDeets(this._bal);

  double get bal => _bal;

  void dedposit(double amt) {
    _bal += amt;
  }

  void witdraw(double amt) {
    if (_bal > amt) {
      _bal -= amt;
    }
  }
}