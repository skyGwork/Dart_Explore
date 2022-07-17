// ignore_for_file: unused_local_variable

void main() {
  // arithmetic();
  // fixPrePost();
  assignment();
  // relational();
  // logical();
  // bitwise();
}

void arithmetic() {
  print("Example of Assignment operators");
  var n1 = 10;
  n1 = 17;
  var n2 = 5;
  n2 = 4;

  print("n1+n2 = ${n1 + n2}");
  print("n1-n2 = ${n1 - n2}");
  print("n1*n2 = ${n1 * n2}");
  print("n1/=n2 = ${n1 / n2}"); //4.25
  print("n1~/=n2 = ${n1 ~/ n2}"); //4
  print("n1%n2 = ${n1 % n2}"); //1
}

void fixPrePost() {
  var x = 30;
  print('postfix++ : ${x++}'); //30

  var y = 25;
  print('++prefix: ${++y}'); //26

  var z = 10;
  print('-- prefix: ${--z}'); //9

  var u = 12;
  print('postfix -- : ${u--}'); //12
}

void assignment() {
  num n1 = 10;
  num n2 = 5;

  n1 += n2;
  // n1 += 20;
  // print('test N1 ${n1}');

  print("n1+=n2 = ${n1}");

  n1 = 10;
  n1 -= n2;
  print("n1-=n2 = ${n1}");

  n1 = 10;
  n1 *= n2;
  print("n1*=n2 = ${n1}");

  n1 = 10;
  n1 /= n2;
  print("n1/=n2 = ${n1}");

  n1 = 10;
  n2 = 3.0;
  n1 ~/= n2;
  print("n1~/=n2 = ${n1}");

  n1 = 10;
  n2 = 3;
  n1 %= n2;
  print("n1%=n2 = ${n1}");

  print('a<<=3');
}

void relational() {
  var a = 30;
  var b = 20;

  print("The example of Relational Operator");

  var res = a > b;
  print("a is greater than b: " +
      res.toString()); // We will learn the toString in next tutorial

  var res0 = a < b;
  print("a is less than b: " + res0.toString());

  var res1 = a >= b;
  print("a is greater than or equal to b: " + res1.toString());

  var res2 = a <= b;
  print("a is less than and equal to b: " + res2.toString());

  var res3 = a != b;
  print("a is not equal to  b: " + res3.toString());

  var res4 = a == b;
  print("a is  equal to  b: " + res4.toString());
}

void logical() {
  String name = "InkWell";

  if (name.startsWith('I') && name.endsWith('l')) {
    print('it\'s: I :l');
  }
  if (name.length > 4 || name.length < 10) {
    print('${name.length} is between 4-10');
  }
  if (name.length != 10) {
    print('${name.length} is not equal to 10');
  }
  int i = 10;
  
  print(i >= 0 && i <= 20); //! if both true
  print(i > 10 || i <= 20); //!ant one should be true
  print(i > 10 || i > 20); //!if both false
}

void bitwise() {
  var a = 25;
  var b = 20;
  var c = 0;

  //! Bitwise AND Operator
  print("a & b = ${a & b}");

  //! Bitwise OR Operator
  print("a | b = ${a | b}");

  //! Bitwise XOR
  print("a ^ b = ${a ^ b}");

  //! Complement Operator
  print("~a = ${(~a)}");

  //! Binary left shift Operator
  c = a << 2;
  print("c<<1= ${c}");

  //! Binary right shift Operator
  c = a >> 2;
  print("c>>1= ${c}");
}
