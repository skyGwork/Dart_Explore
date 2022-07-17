// ignore_for_file: unused_local_variable

void inheritance01() {
  final father = Father();

  //! single inheritance
  final son = Son();
  print('....\nSons Properties\n father and son\n.....');
  print(son.money);
  print(son.car);
  son.getValue(1000);
  son.disp();

  //! multi inheritance
  final grandSon = GrandSon();
  print('...\nGrandSon Properties\n father, son and GrandSon\n.....');
  print(grandSon.money);
  print(grandSon.car);
  grandSon.getValue(1000);
  grandSon.disp();
  grandSon.msg();
}

// Parent Class / Super Class
class Father {
  String money = '\$10K';

  getValue(m) {
    print('you WIN \$${m}');
  }
}

// Child Class / Sub Class
class Son extends Father {
  String car = "i-tEn";

  disp() {
    print('let\'s drive ${car}');
  }
}

class GrandSon extends Son {
  String note = "I love my elders";

  msg() {
    print('grandson: $note');
  }
}
