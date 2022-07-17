// ignore_for_file: unused_local_variable

void loopDemo() {
  // loopOne();
  // breakContinue();
  switchStatement();
}

void loopOne() {
  // List<int> list = [1, 2, 3, 4, 5];
  var list = [1, 2, 3, 4, 5];

  //!  for
  for (var i = 0; i < list.length; i++) {
    print('list items : ${list[i]}');
  }

  //! for in
  for (var value in list) {
    print('forIn : $list');
  }

  //!forEach
  list.forEach((element) {
    print('element: $element');
  });

  //! for each print
  list.forEach(print);

  //! while
  int i = 0;
  while (i != 5) {
    i++;
    print('while != 5, $i');
  }

  //! do while
  i = 0;
  do {
    i++;
    print('do while: $i');
  } while (i != 5);
}

void breakContinue() {
  var list = [1, 2, 3, 4, 5];

  //! break
  for (var i = 0; i < list.length; i++) {
    if (list[i] == 3) {
      break;
    }
    print(list[i]);
  }

  //! continue
  for (var value in list) {
    if (value == 1) {
      continue;
    }
    print('# $value');
  }

  //!switch

  var condition = 'Sunny';
  switch (condition) {
    case 'Sunny':
      print('It\'s Sunny');
      break;
    case 'Cloudy':
      print('It\'s Cloudy');
      break;
    case 'Drizzly':
      print('It\'s drizzly');
      break;
    case 'Rainy':
      print('It\'s rainy');
      break;
    default:
      print('unknown weather!');
  }
}

enum Condition { sunny, cloudy, drizzly, rainy }

//! creak, continue, throw, return

void switchStatement() {
  // var condition = Condition.sunny;
  var condition = Condition.drizzly;
  switch (condition) {
    case Condition.sunny:
      print('It\'s Sunny');
      break;
    case Condition.cloudy:
      print('It\'s cloudy');
      break;
    case Condition.drizzly:
      print('It\'s drizzly');
      // break;
      continue rainy;
    rainy:
    case Condition.rainy:
      print('It\'s rainy');
      break;
    default:
      print('unknown weather!');
  }
}

void assertItem() {
  var list = [];
  assert(list.isEmpty, 'List must not be empty!');
}
