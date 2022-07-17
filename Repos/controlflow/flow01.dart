// ignore_for_file: unused_local_variable

void flowDemo01() {
  // debugTest();
  // flow1();
  flow2();
}

void debugTest() {
  print('Hello one');
  print('Hello one');

  test();

  print('Hello one');
  print('Hello one');
  print('Hello one');

//!
  int a = 5;
  if (a.isEven) {
    print('$a is even');
  } else {
    print('$a is not even');
  }

//!
  // var i = 0;
  // for (i; i < 4; i++) {
  //   print('hi');
  // }
  for (var i = 0; i < 5; i++) {
    print('hello: in for loop');
  }

  print('hello');
}

void test() {
  print('test');
}

// ! learning objective
/*
1.if/else
2. for loop
3. while loop
4. break/continue
5. switch case parameters
6. assert 
7. try,throw,catch,finall statements
*/

void flow1() {
  int a = 12;

  // ! if
  if (a.isEven) {
    print('$a is even');
  }

  //! if/else
  a = 13;
  if (a.isEven) {
    print('$a is even');
  } else {
    print('$a is odd');
  }

  // ! condition ? evalution : evaluation

  a.isEven ? print('$a =>  even') : print('$a => odd');
}
void flow2() {}
