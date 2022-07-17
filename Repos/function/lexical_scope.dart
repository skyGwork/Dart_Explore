// ignore_for_file: unused_element, unused_local_variable

void lexicalScope() {
  // scope01();
  // fn01(300);

  var carx = makeCar('Nexn')('G1');
  print(carx);

  var carY = makeCar('BMW');
  print(carY('M5'));

  var a = A();
  a();

  //! alternative to
  A()();
}

//! top level variable accessable from anywhere

int topLevel = 10;

void scope01() {
  topLevel = 10;
  void a() {
    var aVar = 1;
    topLevel = 9;
    // cVar = 100;//!na
    // bVar = 200;//!na
    
    void b() {
      var bVar = 2;
      topLevel = 8;
      aVar = 10;

      // cVar = 30;//!na.
      void c() {
        var cVar = 3;
        topLevel = 7;
        aVar = 100;
        bVar = 200;
      }
    }
  }
}

void fn01(int b) {
  //! only available for this function (local scope)
  var a = 20;
  b = 10;
  print('var: $a parms $b');
}

String Function(String) makeCar(String make) {
  var engine = '4.4-V8';
  return (model) => '$make $model $engine';
}

class A {
  void call() => print('I\'m a function');
}
