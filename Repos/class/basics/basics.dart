// ignore_for_file: unused_local_variable

void classFundation() {
  //todo- initialize class
  final lg = Mobile();
  // or
  Mobile mi = Mobile();

  //todo- access the Variables,method fo Mobile class
  print('model : ${lg.model}');
  print('ram : ${mi.ram}');

  print(
      'runtimeType=> model : ${lg.model.runtimeType} ram : ${lg.ram.runtimeType}');

  lg.aboutMobile('Mi-7', 4);

  //todo- static variables & method
  print(Mobile.memory);

  print(Mobile.mExpand(6));
}

class Mobile {
  // Instance Variable
  String model = 'mi-A1';
  int ram = 4;

  // Instance Method
  void aboutMobile(String m, int r) {
    print('model: ${m},  ram: ${r}');
  }

  // static variables
  static int memory = 4;

  // static Method
  static mExpand(int e) {
    memory += e;
    return memory;
  }
}
