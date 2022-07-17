// ignore_for_file: unused_local_variable

// > top-level variables (accessable to antwhere)

var demo = 'set all';
const demo1 = 'demo one';
final demo2 = 'demo two';

String a = 'A';

int b = 2;

double c = 48.47;

bool allWell = true;

List<String> alpha = ['a', 'b', 'c', 'd'];

var alpha1 = ['a', 'b', 'c', 'd'];

const alpha2 = [1, 2, 3, 4, 5];

//should be unique collection
Set<String> bita = {'a', 'b', 'c', 'd'};

//key value pair
// 'String':'String',
Map<String, String> gama = {
  'a': 'apple',
  'b': 'ball',
  'c': 'cat',
  'd': 'dog',
};
// > var const final late

var p = 'quick';
final m = 23;
const q = 24.34;

var listOne = [1, 2, 3, 4, 5, 6, 7, 8, 9];
var setOne = {1, 2, 3, 4, 5};

var person = {
  'name': 'Ishan',
  'age': 30,
  'height': 5.11,
  'isMarried': true,
};

final int y = 78;
final String yah = 'hey';
const double z = 90.90;
late String n;
late int o;

int nonNullableTopLevel = 10;
//or
int? nullableTopLevel;

late String chem;
late String makers = 'Addidas';

//todo: instance variable (field/property of class A) , static varisble

class A {
//! instance variable
  double i = 25;

//!static varisble
  static int s = 12;
}

void randomFunction() {
  //local variable scope
  var l = 4;
  const intro = 'hello all!';
  final re = 'remarks matter';

  String greet = 'hi';
  int n1 = 20;
  n1 = 40;
  double n2 = 49.75757;
  bool n3 = true;
}

// !variableType to check docs `ctrl+link`

variableType() {
  Object obj;
  String s;
  int i;
  double d;
  List<String> list;
// Null n;
  var a = 'Makers'; //String
  var b = 10; //int
  var c = 10.27; //double

//! or
  String st = 'Danial';
  int e = 10;
  double f = 10.27;

  dynamic anyTypeVariable;

  anyTypeVariable = 'Mx Well';
  print(anyTypeVariable.runtimeType);

  anyTypeVariable = 16;
  print(anyTypeVariable.runtimeType);

  anyTypeVariable = 39.67;
  print(anyTypeVariable.runtimeType);
}

// ! nullSafeCode

void nullSafeCode() {
  //! nullable nonNullable
  String? nullableString;
  String nonNullableString;

  //! use of !
  nonNullableString = nullableString!;

  print({
    nullableString,
    nullableString.runtimeType,
    nonNullableString,
    nonNullableString.runtimeType
  });
}

// ! enum

enum MonthsOfYear { jan, feb, mar, apr, may }

//! MUTATIONA and varConcat

varConcat() {
  var p = ['Max', 'Wili', 'Xorz'];
  int age = 30;
  double height = 5.234;
  bool isMarried = true;

  //! MUTATIONA
  age = age + 1;
  height = 6.5;
  isMarried = true;

  //! CONCAT
  print({p[0], p[1], p[2]});

  print({age, height, isMarried});

  print('I\'m Max, $age, year old, $isMarried');

  print('Next year I will be ${age + 1} year old');

  //! special char
  print("Today I'm feeling great");

  //! best use
  print('Today I\'m feeling good');
  print('\\, \$ ');
  print(r'c:win\sys\dev\all');
  print(
      'this is line one and \n we have to print new line \n and this one is new line');
}
