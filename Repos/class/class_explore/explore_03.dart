void inheritanceOne() {
  final dog = Dog(age: 10, tag: "bake-name");
  dog.bark();
  dog.sleep();
}

class Animal {
  const Animal({required this.age});
  final int age;

  void sleep() => print('Animal sleep');
}

class Dog extends Animal {
  Dog({required int age, required this.tag}) : super(age: age);
  String tag;

  void bark() => print('age: $age');
  @override
  void sleep() {
    super.sleep();
    print('Dog sleep well');
  } 
}
