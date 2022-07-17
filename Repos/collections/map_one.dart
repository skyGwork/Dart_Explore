// ignore_for_file: unused_local_variable

void mapOne() {
  mapdemo1();
}

void mapdemo1() {
  var map1 = {};

  var map2 = {
    1: 101,
    2: 202,
    3: 203,
    4: 204,
    5: 205
  };
  // print(map2);

  var map3 = Map();



  map3['title'] = 'work endivar';
  map3['print'] = 1947;
  // print(map3);

  // print(map2[6]?.isOdd);

  map1.addEntries([const MapEntry('title', 'note ksk01')]);
  print(map1);

  var mapx = {...map2, ...map3};
  print(mapx);

  //!
  List<int> listx = [1, 2, 3];

  var onex = listx.map((e) => e * 10).toList();
  print(onex);
}
