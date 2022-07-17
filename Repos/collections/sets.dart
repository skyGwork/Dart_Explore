// ignore_for_file: avoid_print, unused_local_variable

void setDemo() {
  var list = [];
  list.add(1);
  list.add(2);
  list.add(4);
  list.add(0);
  list.add(3);

  list.sort();
  print(list);

  var set = <int>{};
  set.add(1);
  set.add(5);
  set.add(5);
  set.add(3);
  set.add(3);

  print(set);
}

void setDemo1() {
  var set1 = Set();
  // print(set1);

  Set<String> set2 = {'hi', 'Max'};
  // print(set2);

  var set3 = {1, 2, 3, 4};
  // print(set3);

  var set4 = <int>{};
  // print(set4);

  var set = {1, 2, 3, 4}
    ..add(12)
    ..addAll({7, 9, 3});
  set.add(30);
  set.addAll({20, 40, 100});
  print(set);
}

void setDemo2() {
  var set = {1, 2, 3, 4}
  ..add(12)
  ..addAll({18, 30, 60});
  var set1 = {5, 6, 7, 4};
  var set2 = {...set, set1, 100, 200};
  // print(set2);

  var set3 = {...set, set1, if (true) set};
  print(set3);
}

void setDemo3() {
  var set1 = {5, 6, 7, 4};
  var set2 = {1, 2, 4, 6};

  var intersect = set1.intersection(set2);
  print(intersect);

  var union = set1.union(set2);
  print(union);

  var difference = set1.difference(set2);
  print(difference);
}

// Set<Object> nums

var nums = {'hi', 1, 2, 3, 4, 5, 6, 7, 8, 9};

void setEx() {
  // nums[0]; // not supported
  nums.elementAt(0);
  nums.add(20);
  print(nums);
}

setOps() {
  // var set1 = Set();//! ??
  // print(set1);

  Set<String> set2 = {'hello', 'world'};

  print(set2);

  var set3 = {1, 2, 3};
  print(set3);

  var set4 = <int>{};

  print(set4);
  set4.add(11);
  set4.add(21);
  set4.add(31);
  print({set4, set4.runtimeType});

  //! No Duplicate Value will be considered
  var alpha = {'a', 'b', 'c', 'd'};
  var bita = {'c', 'd', 'e', 'f'};
  var gama = {...alpha, ...bita};
  print(gama);
}
