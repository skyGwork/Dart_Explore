// ignore_for_file: unused_local_variable

void main() {
  // laptopExpo();
  carExpo();
}

void laptopExpo() {
  Laptop laptop = Laptop('Dell', 16);
  laptop.abtLaptop();

  //todo- initialize class Named constructor
  Laptop lp = Laptop.note('dell-india', 2019, 200);
  print('lp.model: ${lp.model}');
  lp.description();
}

class Laptop {
  String model;
  int ram;
  Laptop(this.model, this.ram);

  void abtLaptop() {
    print('laptop: ${model}:${ram}gb');
  }

  // String a;
  // final a;
  var a;
  var b;
  var c;
  // ! named constructor(if we need more than one constructor field)
  Laptop.note(this.a, this.b, this.c)
      : model = 'Dell',
        ram = 10;

  void description() {
    print('Description:\nmgf: ${a}, yom: ${b}, price: \$ ${c}');
  }
}

void carExpo() {
  // final car = Car(model: 'MS800', value: 120, engine: 'xbit-2000');
  Car car = Car(model: 'MS800', value: 120, engine: 'xbit-2000');
  car.carDescription();

  car.textDisp(c: 'isAmount', n: 100, b: true);
}

class Car {
  String model;
  int value;
  String engine;

  Car({
    required this.model,
    required this.value,
    required this.engine,
  });

  void carDescription() {
    print(
        'carDescription:\n model ${model} ,value: ${value}, engine: ${engine}');
  }

  textDisp({required String c, required int n, required b}) {
    print('fn--> $c $n : $b ');
  }
}

void classConstruct() {
//todo - null & required
  // final case1 = ConstructorCase1(firstName: 'Max Well', age: null);
  // OR
  final case1 = ConstructorCase1(firstName: 'Max Well');

//todo null & positional/required
  final case2 = ConstructorCase2(100, firstName: 'Max Well', age: 20);
}

class ConstructorCase1 {
  String firstName;
  int? age;
  // ConstructorCase1({required this.firstName, this.age});
  ConstructorCase1({required this.firstName});
}

class ConstructorCase2 {
  String firstName;
  int? age;
  int rank;
  ConstructorCase2(this.rank, {required this.firstName, required this.age});
}

//todo Examples

class Animal {
  final String name;
  // Animal(this.name)
  //!OR
  // Animal():name='Elephant';
  //!OR
  Animal({required this.name});

//! named constructor
  // Animal.formJson(this.name);
  //!OR
  // Animal.formJson() : name = 'jerry';

  void title() => print('It\'s an animal');
  void chase(Animal a) {}
}

//!classic constructor
class Bus {
  String model = 'text';
  int value = 0;
  String engine = 'msg';

  Bus(m, v, e) {
    this.model = m;
    this.engine = e;
    this.value = v;
  }

  // OR

  // Bus(m, v, e) {
  //   model = m;
  //   engine = e;
  //   value = v;
  //   print('cons called!');
  // }

  disp() {
    print({model, value, engine});
  }
}
