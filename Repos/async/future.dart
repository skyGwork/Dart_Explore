// ignore_for_file: unused_local_variable


//At first with void
//! no return value
void futureOne() {
  print('future testing....');

  Future(() {
    return 'its future print';
  }).then(print);

//! type
  Future(
    () => 1,
  ).then(print);

//! type
  Future(
    () => Future(() => 2),
  ).then(print);

//! type
  Future.delayed(
    const Duration(seconds: 2),
    () => 3,
  ).then(print);

//! type
  Future.delayed(
    const Duration(seconds: 2),
    () => Future(() => 4),
  ).then(print);

//! type
  Future.value(5).then(print);

  Future.value(
    Future(() => 6),
  ).then(print);

//! type
  Future.sync(
    () => 7,
  ).then(print);

  //! type
  Future.sync(
    () => Future(
      () => 8,
    ),
  ).then(print);

  //! type
  Future.microtask(
    () => 9,
  ).then(print);

  //! type
  Future.microtask(
    () => Future(
      () => 10,
    ),
  ).then(print);

  print('...testing over');
}

//! with return value
Future<String> fetchUserData00() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => '..Data\'s compiling!',
  );
}

//or Arrow function
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () => 'fetching the data...',
    );

Future<String> fetchUserData01() => Future.delayed(
      const Duration(seconds: 2),
      () => throw Exception('...data not found'),
    );

//!OR

Future<int> getNum() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => 20 * 100,
  );
}

void getNum1() {
  Future.delayed(
    const Duration(seconds: 2),
    () => 20 * 100,
  );
}
