Future<String> fetchUserData() => Future.delayed(
      Duration(seconds: 2),
      () => '...getting user data',
    );

Future<String> fetchUserDataV() => Future.value('...data fetched');

Future<String> fetchUserDataE() => Future.error(
      Exception('...lost connection'),
    );

Future<String> fetchUserDataI() => Future.error(
      UnimplementedError(),
    );

Future<void> main() async {
  print('Program started');
  try {
    final usrData = await fetchUserData();
    print(usrData);

    final usrDataV = await fetchUserDataV();
    print(usrDataV);

    final usrDataE = await fetchUserDataE();
    print(usrDataE);

    final usrDataI = await fetchUserDataI();
    print(usrDataI);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
