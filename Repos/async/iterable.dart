import 'dart:math';

void main() {
  print(show(10));
}

void test() {
  print('..\n..\n');
  print('#1 - sqrt(4) -> ${sqrt(16)} ');
  print('#2 - multiply(15*10) -> ${15 * 10}');
  print('#3 - sum(20,30) -> ${20 + 30}');

  Future.delayed(
    const Duration(seconds: 5),
    () => print('#4 - sum(200,300) -> ${200 + 300}'),
  );

  print('#5 - differance(20,5) -> ${20 - 5}');
}




Iterable<int> show(int n) sync* {
  for (var i = 1; i <= n; i++) {
    yield i;
  }
}

List<int> showNormal(int n) {
  print('Normal Started');
  final list = <int>[];
  
  for (var i = 1; i <= n; i++) {
    print('i -> $i');
    list.add(i);
  }
  print('Normal ended');
  return list;
}

Iterable<int> showGenerator(int n) sync* {
  print('Generator started');
  for (var i = 1; i <= n; i++) {
    print('i -> $i');
    yield i;
  }
  print('Generator eneded');
}

Iterable<int> showNegativeGenerator(int n) sync* {
  print('Negative Generator started');
  for (var i = 1; i <= n; i++) {
    print('i -> ${-i}');
    yield -i;
  }
  print('Negative Generator eneded');
}

Iterable<int> showGeneratorPlus(int n) sync* {
  print('Generator started');
  for (var i = 1; i <= n; i++) {
    print('i -> $i');
    yield i;
  }
  yield* showNegativeGenerator(n);
  print('Generator eneded');
}

void listOne() {
  final list = [1, 2, 3, 4, 5];
  final eventList = list.where((element) => element.isEven);
  print(eventList.first);
}

void listTwo() {
  final iterable = Iterable<int>.generate(3);
  // generate(3, (x) => x + 1);
  print(iterable);
  // print(iterable.elementAt(2));
}
