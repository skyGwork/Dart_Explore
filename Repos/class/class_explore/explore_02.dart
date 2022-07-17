// ignore_for_file: unused_local_variable

//! operator and class constructor

void exploreDay01() {
  allAbout();
}

void alpha() {
  const yes = true;
  const no = false;

  // print(yes.runtimeType);

  // !Exp
  // bool status = yes == no;
  bool status = (yes == no);
  status = (yes != no);

  var s = 'hello';
  var b = 20;
  var c = 30;

  var compair = (s == b);
  compair = (b > c);
  compair = (b >= c);
  compair = (b < c);
  compair = (b <= c);


  // print('status: $status');
  // print('compair : $compair');
  var d = (s == 'Hello' && b == 20);
  print(d);

  // ! == &&
  if (s == 'hello' && b == 20) {
    print('tested && : +ve');
  } else {
    print('tested && : -ve');
  }

  if (d) {
    print('tested && : +ve');
  } else {
    print('tested && : -ve');
  }

  // ! == ||
  if (s == 'hello' || b == 50) {
    print('tested || : +ve');
  } else {
    print('tested  || : -ve');
  }

  if (s == 'Hi' || b == 50) {
    print('tested || : +ve');
  } else {
    print('tested  || : -ve');
  } 

  const operationResult = (3 < 5) && (2 > 1) || 3 == 4;
  print('The operation result is: $operationResult');

  print('3 > 4 && (1 < 2 || 1 < 4)  : ${3 > 4 && (1 < 2 || 1 < 4)}');

  print('(3 > 4 && 1 < 2) || 1 < 4  : ${(3 > 4 && 1 < 2) || 1 < 4}');
}

void bita() {
  int age = 16;
  age = 40;
  if (age >= 10 && age <= 20) {
    // print('you\'r teenager');
  } else {
    // print('you\'r legal age');
  }

  age >= 10 || age <= 20 ? print('teenager') : print('legal age');

  final canIVote = age > 18 ? 'YES' : 'NO';

  print('Can I vote?? $canIVote');
}

// ! CLASS and constructor
void allAbout() {
  final b = B(Text.bookTitle, Text.bookYOP);
  // final b = B(inputTitle:Text.bookTitle, yop:Text.bookYOP);
  b.about();
}

class A {
  String name;
  int dob;
  A({
    required this.name,
    required this.dob,
  });
  void about() {
    print('title: ${name}\n  yop: $dob');
  }
}

//! nullSafe in class, for a constructure having{} 
class B {
  var a;

  String? title;
  int? yop;

  B(String inputTitle, int yop) {
    title = inputTitle;
    this.yop = yop;
  }

  // B({required String inputTitle,required int yop}) {
  //   title = inputTitle;
  //   this.yop = yop;
  // }
  void about() {
    print('title: ${title}\n  yop: $yop');
  }
}

class Text {
  static String bookTitle = 'The winter warrior';
  static int bookYOP = 2022;
}
