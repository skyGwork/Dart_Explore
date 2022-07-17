// ignore_for_file: avoid_print

loopsOperaton() {
  //! for
  for (var i = 2; i <= 20; i += 2) {
    print(i);
  }
  //! while
  var i = 0;

  while (i <= 5) {
    // print(i);
    print('x' * i);
    i++;
  }
  print('Done !');

  //! for in
  for (var i in [1, 2, 3, 4, 5]) {
    print(i);
  }
  
  // or
  var units = [1, 2, 3, 4, 5];

  for (var n in units) {
    print(n);
  }
}

// exercise
void frzzBuzz() {
  for (var i = 1; i <= 16; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('fizz buzz');
      break;
    }

    if (i % 3 == 0) {
      print('fizz ');
      // break;
      continue;
    }

    if (i % 5 == 0) {
      print(' buzz');
      continue;
    }
    print(i);
  }
  print('Done !');
}

void p1() {
//! while

  int n = 0;

  while (n < 5) {
    n += 1;
    print(n);

    if (n == 3) {
      print('loop ');
    }
  }

  // ! do while
  int n2 = 0;
  do {
    n2 += 1;
    print(n2);
  } while (n2 < 5);

  // ! break

  for (var i = 0; i <= 5; i++) {
    print(i);
    if (i == 3) {
      print('loop completed');
      break;
    }
  }

  // !
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print(i);
  }
}
