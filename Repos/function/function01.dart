// ignore_for_file: unused_local_variable

void functionDemo() {
  // fnOn01();
  fnOn02();
}

void fnOn01() {
  //! 01
  // Function funcObj = first;
  var funObj = first;
  // print(funObj(1020));

  var no = first(100);
  // print('first marks: $no');

  print(first02(19));

  print(first02(20));

  //!fn02
  second(funObj, 12);

  second((int a) => a, 20);
}

//! fn01
int first(int a) {
  return a;
}

int first01(int a) => a;
int first02(int a) => a.isOdd ? 1 : 0;

//! fn02
void second(int Function(int) f, int a) {
  // print(f.call(a));1
  // print(f(a));
  print('function second: ${f(a)}');
}

void fnOn02() {
  var list = ['hello', 'everyone', 'wckd'];

  // list = list.map((e) => e).toList();

  list = list
      .map(
        (e) => e.toUpperCase(),
      )
      .toList();
  print('list: $list');

  var list01 = list.map((String s) {
    return s.toUpperCase();
  }).toList();

//! or annonimus function
  var listaFn = list
      .map(
        (String s) => s.toUpperCase(),
      )
      .toList();

  print('list 01: $list01');

  var list02 = ['hello', 'everyone', 'wckd']
      .map(
        applyUpperCaseChanges,
      )
      .toList();
  // print('list to uppercase: $list02');
}

String applyUpperCaseChanges(String s) {
  return s.toUpperCase();
}
