// ignore_for_file: unused_local_variable

void inheritance03() {
  // final animal = Animal(name: 'Elephant');
  // OR
  Animal animal = Animal(name: 'Elephant');
  print(animal.name);

  // final namedAnimal = Animal.formJson('Tiger');
  //!OR
  final namedAnimal = Animal.formJson();
  print(namedAnimal.name);

  // //! duck
  Duck duck = Duck(duckName: 'Munchkin');
  duck.title();
}

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
  Animal.formJson() : name = 'jerry';

  void title() => print('It\'s an animal');
  void chase(Animal a) {}
}

class Mouse extends Animal {
  // Mouse({required String name}) : super(name: name);
  //! OR
  Mouse() : super(name: 'Jerry');
}

class Cat extends Animal {
  Cat() : super(name: 'tom');
  @override
  void chase(covariant Mouse m) {}
}

class Bird extends Animal {
  Bird({required String birdName}) : super(name: birdName);
}

class Duck extends Bird {
  Duck({required String duckName}) : super(birdName: duckName);

  //! polimorphism
  @override
  void title() => print('It\'s an Duck');
}
