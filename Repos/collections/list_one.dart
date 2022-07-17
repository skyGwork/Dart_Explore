// ignore_for_file: unused_local_variable

void listOne() {
  List<String> person = ['a', 'b', 'c', 'd'];
  print(person);

  person[1] = 'Max-Well';
  person.forEach(print);

  List<int> list = [1, 2, 3];
  //! add to list
  list.add(100);

  list.addAll([10, 20, 30]); //or..
  list.addAll({40, 50, 60});

  list.forEach(print);

  print(list[0]);
  print(list[list.length - 1]);

  List<bool> booleans = [true, false, false];
  List<A> listOfAObjects = [A(), A(), A()];

  List<dynamic> listOfIntandDoubles = [2, 4.5, 5.6, 8];
  List<num> listOfIntandDoublesNum = [2, 4.5, 5.6, 8];

  List<Object> complexList = [2, 'hi', 5.7, true];
  List<Object?> complexListWithNull = [2, 'hi', 5.7, true, null];

  var integerValue = complexListWithNull[0] as int;
  var stringValue = complexListWithNull[1] as String;
  var doubleValue = complexListWithNull[2] as double;
  var boolValue = complexListWithNull[3] as bool;
  var nullValue = complexListWithNull[4] as Null;

  print(integerValue.isEven);
  print(doubleValue.isInfinite);
  print(stringValue.isNotEmpty);

  List<int> a = [1, 2, 3, 4, 5];
  List<int?> b = [1, 2, 3, null, 5];
  List<int>? c = [1, 2, 3, 4, 5];
  List<int?>? d = [1, 2, 3, null, 5];
}

class A {}

void listTwo() {
  List<int> a = [];
  List<int> b = [1, 2, 3, 4, 5];
  List<int> c = List.filled(3, 4); //[4, 4, 4]
  // c.add(2);//!Cannot add to a fixed-length list
  print(c);

  List<int> d = List.empty(growable: true);
  d.addAll({1, 2, 34, 56, 90});
  print(d);

  List<int> e = List.generate(10, (index) => index);
  print(e);
}

void listExpo() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // print('index 0: ${list[0]}, index-last ${list[list.length - 1]}');
  var i0 = list[0];
  var il = list[list.length - 1];
  
  print('index-0: $i0 index-last: $il');
  print('index-3: ${list.elementAt(3)}');

  var i3 = list.elementAt(4);

  list[0] = 120;
  list[1] = 130;
}
