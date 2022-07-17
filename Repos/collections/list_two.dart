// ignore_for_file: unused_local_variable

void listTwo1() {
  List<int> a = [1, 2, 3];

  List<int> b = a;
  b.add(10);
  print(b); //[1, 2, 3, 10]

  print(a); //[1, 2, 3, 10]

  List<int> c = [...a];
  print(c); //[1, 2, 3, 10]
}

void listTwo2() {
  //! . and ?. dot operators
  int a = 5;
  print(a.isEven);

  int? b = null;
  // print(a?.isEven);
  // print(a!.isEven);

  //! .. and ?.. cascade operators
  List<int> list1 = [1, 0, 2];
  list1.sort();
  list1 = list1.reversed.toList();
  list1.addAll([5, 3, 4]);
  list1.sort();

  list1 = list1.map((e) => e + 1).toList();
  // print(list1);

  //! Alternatively
  List<int> list2 = [1, 0, 2]
    ..sort()
    ..reversed
    ..addAll([5, 3, 4])
    ..sort()
    ..map((e) => e + 1).toList();
  // print(list2);

//! Alternatively
  List<int> list3 = (([1, 0, 2]..sort()).reversed.toList()
        ..addAll([5, 3, 4])
        ..sort())
      .map((e) => e + 1)
      .toList();
  // print(list3);

  //! ... and ...? (sprade operators)
  var x = [1, 2, 3];
  var y = [3, 4, 5];
  var z = [...x, ...y];
  // print('list z: $z');

  // !
  var q = [];
  q.addAll(x);
  q.addAll(y);
  // print('list:q $q');

  // !
  var p = []
    ..addAll(x)
    ..addAll(y);
  print('list p: $p');

  //! ...?
  var l = [1, 2, 3];
  var m;
  var n = [...l, ...?m];
  print(n);
}

void listThree() {
  bool salesActive = true;
  var salesMenu = [
    'offers1',
    'offers2',
  ];
  List<String> menu = [
    'Home',
    'Store',
    'About',
    'Search',
    if (salesActive)
      for (var item in salesMenu) item,
  ];
  print(menu);

  List<int> list1 = [1, 2, 3];
  List<int> list2 = [1, 2, 3];
  print(list1.hashCode);
  print(list2.hashCode);

  List<int> list3 = const [1, 2, 3];
  List<int> list4 = const [1, 2, 3];
  print(list3.hashCode);
  print(list4.hashCode);
}
