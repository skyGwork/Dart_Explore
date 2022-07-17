// ignore_for_file: unused_local_variable, avoid_print

//! summary
void listDemo() {
  List<int> list = [2, 1, 0, 5, 4];

  list.sort();
  
  list = list.reversed.toList();
  
  list.add(10);
  
  list.add(7);

  list.addAll([6, 8, 9]);
  // print(list);

  list = list.map((e) => e + 1).toList();

  var listOne = list.map((e) => e + 1).toList();
  // print(listOne);

  List<int> newList = [1, 0, 2]
    ..sort()
    ..reversed
    ..reversed.toList()
    ..add(4)
    ..addAll([3, 6, 7])
    ..map((e) => e + 1);
  // print(newList);

  // ! ...$ ...? (spread operator)

  var oneList = [1, 2, 3];
  var twoList = [3, 4, 5];
  var threeList = [...oneList, ...twoList];
  print(threeList);

  var al = [1, 2, 3];
  var bl;
  var cl = [...al, ...?bl];
  print(cl);
}

void menuList() {
  bool salseActive = true;
  var salesMenu = [
    'offer1',
    'offer2',
  ];

  List<String> menu = [
    'Home',
    'Store',
    'About',
    'Search',
    if (salseActive)
      for (var item in salesMenu) item,
  ];
  print(menu);

  List<int> list1 = [1, 2, 3];
  List<int> list2 = [3, 4, 5];
  print(list1.hashCode);
  print(list2.hashCode);
}

//! List<Object> daysOfWeek
var a = ['mon', 10, 'tue', true];
final b = [1, 2, 3.4, 'A', 'Z'];
const c = ['alpha', 10, 'bita', false];
List<Object> d = ['alpha', 10, 'bita', false];

//! List<String> daysList
var l = ['M', 'T', 'W', 'Th', 'F', 'S'];
final m = [1, 2, 3, 4, 5, 6, 7, 8];
const n = ['a', 'b', 'c', 'd', 'e', 'f'];

//! list type
List<int> p = [1, 2, 3, 4, 5, 6, 7];
List<String> q = ['a', 'b', 'c', 'd', 'e', 'f'];
List<double> r = [5.45, 3.67, 6.2];
List<bool> s = [true, false, true, false, true];

// !
listOperations() {
  var daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  List<int> units = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  // print(daysOfWeek);
  daysOfWeek[0] = 'next';
  print(daysOfWeek[0]); // next
  print(units.indexOf(7)); // 6

  for (var days in daysOfWeek) {
    print(days);
  }

  for (var i = 0; i < units.length; i++) {
    print(units[i]);
  }
  // or
  for (var value in units) {
    print(value);
  }

  //! or Addition of number of units
  var sum = 0;

  for (var i = 0; i < units.length; i++) {
    sum += i;
  }
  print(sum);

  const alphabets = ['A', 'B', 'C', 'D', 'E', 'F'];
  print(alphabets.length);
  print([].isEmpty);
  print([].isNotEmpty);
  print(alphabets.first);
  print(alphabets.last);
}

//! lists explore
void listExplore() {
  //! sprade operators
  List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> b = [...a];
  // print(b);

  //! . and ?. operators

  int i = 12;
  // int? k = null;//! Don't explicitly initialize
  int? k;
  print(i.isEven);
  print(k?.isEven); //! faq*

  //! .. and ?.. (cascade operator)

  List<int> list1 = [1, 0, 2];
  list1.sort();
  list1 = list1.reversed.toList();
  list1.addAll([5, 3, 4]);
  list1.sort();

  list1 = list1.map((e) => e + 1).toList();

  List<int> list2 = (([1, 0, 2]..sort()).reversed.toList()
        ..addAll([5, 3, 4])
        ..sort())
      .map((e) => e + 1)
      .toList();
  // print(list2);

//! ... and ...? (sprade operator)

  var m = [1, 2, 3];
  var n = [3, 4, 5];
  var o = [...m, ...n];
  print(o);
}
