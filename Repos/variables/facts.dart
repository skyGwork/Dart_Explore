// ignore_for_file: unused_local_variable

//! topLevel
String s = 'test string';
var p = 'test string';
dynamic d = 'hi';
var testTopLevelVar = 100;

//todo: The name 'variable' is already defined.Try renaming one of the declarations.
// s='change the string';
// p='change the string';
// d=10;

//! class variable

class testMutation {
  // testTopLevelVar=20; //not accessable

  //todo: The name 'variable' is already defined.Try renaming one of the declarations.
  String m1 = 'test string';
  // m1='chaange the string';

  var m2 = 100;
  // m2=200;

  dynamic msg = 'hi';
  // d=10;

//todo same as top level
  String s = 'test string';
  var p = 'test string';
  dynamic d = 'hi';
}
//!local scope

void varOne() {
  print(testTopLevelVar); // original value
  testTopLevelVar = 100 + 200;
  print(testTopLevelVar);

  int a;
  String name;
  final bool status;
  //todo: The non-nullable local variable 'a' must be assigned before it can be used.
  // print(a);
  // print(name)
  // print(status);

  var b;
  print(b); // null
  print(b.runtimeType); // null

// todo: mutation of variables
  String q = 'test string';
  q = 'change the string';

  var q1 = 'test string';
  //todo: A value of type 'int' can't be assigned to a variable of type 'String'.
  // q1 = 101;

  //todo anyTypeVariable
  dynamic msg = 'hi';
  msg = 10;
  msg = true;

  //todo: same as top level and class level
  String s = 'test string';
  var p = 'test string';
  dynamic d = 'hi';
}

void main(List<String> args) {
  varOne();
}
