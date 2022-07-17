// ignore_for_file: avoid_print, unused_local_variable, prefer_const_declarations

//global variables

//! void function: no return value
void greet() {
  print('fuction start here !');
  print(20 + 40);
  // return 34+50; //! not valied
  // return 'Hi All';//! not valied
}

//! dynamic
sayHello() {
  print('fuction start here !');
  print(20 + 40);
  // return 'ih';
  return 30 + 40;
}

dynamic hi(int i, String s, bool b) {
  return print(
    'Hello all!$s \n${i + 40} \nMarrital status $b',
  );
}

//! arrow function
void introduce(String name, int age) =>
    print('Hi I\'m $name and I\'m $age year old');

int sumTotal(int x, int y) => x + y;

void sumEqual(int x, int y) => print(x + y);

//! dynamic value type
String theBestSelling(dynamic title, dynamic value) {
  return 'Best Selling: $title and It\'s value\$: $value ';
}

//! auto/dynamic type

int addNum(v1, v2) {
  return v1 + v2;
}

String addSrring(s1, s2) {
  return s1 + s2;
}

//! add a list of number
double sum(List<double> values) {
  var sum = 0.0;
  for (var value in values) {
    sum += value;
  }
  return sum;
}


// positional arguments
String bestDescribe(String title, int price) {
  return 'Best Selling: $title and It\'s price\$: $price ';
}

//! default value parameters
String theBestMatch({String one = '', String two = ''}) {
  return 'Best Match: $one is better then: $two ';
}

//! required parameters
String mostBestMatch({required String one, required String two}) {
  return 'Best Match: $one is better then: $two ';
}

//! another positional arguments
void foo(int a, int b) {
  print('A: $a, B: $b');
}

void fooNext(int a, [int b = 2]) {
  print('A: $a, B: $b');
}

void fooNextNull(int a, [int? b]) {
  print('A: $a, B: $b');
}


//!=>Function Explore

void demoOne() {
  var functionObject = first;
  // print(functionObject);
  // print(functionObject(40));
}

int first(int a) => a;
int nexter(int a) => a.isOdd ? 1 : 0;

int firstRegFunc(int a) {
  return a;
}

//!=>
void functionCall() {
  var funcVar = first;
  var funcVar1 = first(100);// call the function
  third(funcVar, 100);
  second(first, 10);
  //! annonimus function
  second((int a) => a, 10);
}

void second(int Function(int) f, int a) {
  // print(f.call(a));
  print(f(a));
}
 
//!#
typedef F = int Function(int);

third(F func, int a) {
  print(func(a));
}

//! =>
anotherAnonFunc() {
  var list = ['helo', 'everyone', 'wckd', 'one'].map(applyUpperCase).toList();

  var listOne = ['helo', 'everyone', 'wckd', 'one'].map((String s) {
    return s.toUpperCase();
  }).toList();

  var listAfunc = ['helo', 'everyone', 'wckd', 'one']
      .map((String s) => s.toUpperCase())
      .toList();

  print(list);
}

String applyUpperCase(String s) {
  return s.toUpperCase();
}

//! => paramiter

void funcParameter() {
  requiredPositionl(1, 2, 3, 4);
  optionalPositionl(20);
  optionalPositionlReq(5, 3, 4);
  requiredNamed(a: 20, b: 40);
  requiredNamedReqe(10, b: 20, a: 30);
}

//!# required position/order matters
void requiredPositionl(int a, int b, int c, int d) => print(a + b + c + d);

//!# optional and position/order matters
void optionalPositionl([int a = 5, int b = 10]) => print('$a and $b');

void optionalPositionlNul([int a = 5, int? b]) => print('$a and $b');

void optionalPositionlReq(int r, [int a = 0, int b = 10]) => print(r * (a + b));

//!# required and position/order NOT matters
void requiredNamed({required int a, required int b}) => print(a + b);

void requiredNamedReqe(int r, {required int a, required int b}) => print(a + b);

//!# optional and position/order NOT matters
void optionalNamed({int a = 5, int b = 10, int c = 20}) =>
    print('$a :apple $b :ball $c :cat');

//!# optional and position/order NOT matters
void optionalNamedHyb({required int a, int b = 10, int c = 20}) =>
    print('$a :apple $b :ball $c :cat');

//! FUNCTION RESET
void fn() {
  // var tripple = applyMultiplier(3);
  var tripple = applyMulti(3);
  print('the tripple of 4 is ${tripple(4)}');

  //!
  const list = [1, 2, 3, 4, 5];
  // ignore: avoid_function_literals_in_foreach_calls
  list.forEach((m) {
    print('squire of $m is ${m * m}');
  });
}

Function applyMultiplier(num multi) {
  return (num value) {
    return value * multi;
  };
}

//! arrow finction
Function applyMulti(num multi) {
  return (num value) => value * multi;
}
