// ignore_for_file: unused_local_variable

void nullSafety02() {
  // test null results
  const person = {'name': 'Zet Kit'};
  
  print(person['age']);

  if (person['age'] == null) {
    print('age is missing');
  } else {
    print(person['age']);
  }

  // null safety

  int? a;
  print(a);
  // a = 2; //if remove it
  int b = 2;
  // print(a + b);//! can't be
  // int c = a + b; //! can't do operations

  if (a == null) {
    print('a is null');
  } else {
    print(a + b);
  }

  //D E F I N I T E ASSIGNMENT

  int x = 10;
  int sign;
  // print(sign); //can't print now

  if (x >= 0) {
    sign = 1;
  } else {
    sign = -1;
  }
  print('sign = $sign');

  // A S S E R T I O N  operator

  int y = 10;
  int? maybeValue;
  if (y > 0) {
    maybeValue = y;
  }
  int valueOne = maybeValue!;
  // print(valueOne);

  int z = -1;
  z = 20;
  z = -20;
  int? maybeInput;
  if (z > 0) {
    maybeInput = z;
  }
  int inputValue = maybeInput ?? 0;
  print(inputValue);
}
