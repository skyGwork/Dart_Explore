// ignore_for_file: unused_local_variable

class Car {
  String model;
  String bodyType;

//! optional
  // Car({this.model = '', this.bodyType = 'Taxi'});

//!required positional
  Car(this.model, {this.bodyType = 'Taxi'});

//!restructure the constructor
  // factory Car.suv() {
  //   return Car('sxt-z', bodyType: 'SUV-SXT');
  // }
  
  factory Car.suv() => Car('sxt-z', bodyType: 'SUV-SXT');
}

void main() {
  Car car = Car('Tx-ao');

  final carSuv = Car.suv();

  print(car.model);
  print(car.bodyType);
  print(carSuv.model);
  print(carSuv.bodyType);
}
