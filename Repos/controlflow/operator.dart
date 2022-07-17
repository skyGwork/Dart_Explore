// ignore_for_file: unused_local_variable, avoid_print

operators() {
  print(5 + 2);
  print(5 - 2);
  print(5 * 2);
  print(5 / 2);
  print(5 ~/ 2); //! (int) only
  print(5 % 2);

  //! examples
  int x = 5;
  x = x + 2;
  x += 2;
  x -= 2;
  x *= 2;
  x ~/= 2; // int only
  x %= 4;
  print(x);
  double y = x.toDouble();
  y /= 2; // with double only
  print(y);

  print(8 + 6 - 2 * 5);
  print(8 + (6 - 2) * 5);
  var a = 10;
  var d = 3;

  var div = a / d; //!  double
  var divInt = a ~/ d; //!  int
  var remn = a % d; //!  int

  print(a / d); //!   3.3333333333333335(devision)
  print(a ~/ d); //!   3 (int)
  print(a % d); //!   1 (remender)

  //! Prefix and Postfix Increment and Decrement operators
  var i = 3;
  print(++i); //3+1=4
  print(i++); //! unchanged
  print(--i); //2
  print(i--); //! unchanged

  //! Logical
  print(5 == 2);
  print(5 != 2);

  print(5 >= 2);
  print(5 > 2);

  print(5 <= 2);
  print(5 < 2);

  print(5 > 2.5);

  // print(5 > 'name');// not allowed

  print(5 < 7 || 5 < 3); //either or
  print(5 < 7 && 5 < 3); // both
  print(5 < 7 && 5 < 8); // both

  print(!(5 < 2));
  print(!(5 > 2));

  String email = 'test@example.com';
  print(
    email.isNotEmpty && email.contains('@'),
  );

  //! logical example
  var n1 = 100;
  // n1 = 300;
  var n2 = 100;
  var n3 = 200;
  var n4 = 200;
  n4 = 500;

  print((n1 == n2) && (n3 == n4)); //! both true> true
  print((n1 == n2) || (n3 == n4)); //! either one or another true > true
}
