// ignore_for_file: unused_local_variable

void setDemOne() {
  // setOne();
  // setTwo();
  // setThree();
  setExpo();
}

void setOne() {
  var list = [];
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(2);
  print(list);

  List<int> b = [1, 2, 3, 4, 2, 5, 2];
  // print(b);

//! duplicate element
  var set = <int>{};
  set.add(1);
  set.add(2);
  set.add(3);
  set.add(2);
  print(set);

  var c = <int>{1, 2, 3, 4, 2, 5, 2};
  // print(c);
}

void setTwo() {
  //! first type
  var set1 = Set();

  set1.add(1);
  set1.addAll({2, 3});
  print(set1);

  //! second type
  Set<String> set2 = {'Hey', 'wckd', 'one'};

  var set3 = {1, 2, 3}
    ..add(20)
    ..addAll({30, 40, 50});
  print(set3);

  var setx = {7, 8, 9, ...set1};

  var sety = {7, 8, 9, ...set1, if (true) set1};

  print('setx: $setx');
  print('sety: $sety');

  var set4 = <int>{};
  // print(set4);

  //? Why not var set={}

  //! set
  var set5 = {1, 3, 5};

  //! map
  var map5 = {1: 201, 2: 303};
}

void setThree() {
  var set1 = {1, 2, 3};
  var set2 = {2, 3, 4};
  var intersect = set1.intersection(set2);
  print('intersect: $intersect');

  var difference = set1.difference(set2);
  print('difference: $difference');
  var union = set1.union(set2);
  print('union: $union');
}

void setExpo() {
  Set<int> set = {1, 2, 3, 4};
  var a = set.elementAt(0);
  print(a);
  
  var b = set.last;
  print(b);
}
