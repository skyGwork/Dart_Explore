// ignore_for_file: unused_local_variable

void main() {
  action1();
}

Future<String> fetchUserData() => Future.delayed(
      Duration(seconds: 2),
      () => '...getting user data',
    );

void action() async {
  print('...Program started');
  final usrData = await fetchUserData();
  print(usrData);
}

//!or
Future<void> action1() async {
  print('...Program started');
  try {
    final usrData = await fetchUserData();
    // print(usrData);
    print(await fetchUserData());
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
  print('tets done');
}
