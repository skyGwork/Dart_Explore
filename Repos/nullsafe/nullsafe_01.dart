//! initialized to null by default

String? carName;
int? marks;

// initialized to non-null (even the ? )

int? marksn = 36; //

// Assignment

int? someValue = 30;
int data = someValue!; // This is valid as value is non-nullable

//! working scpe one

void nullSafe01() {
String? name = null;
print('name => .. $name');

print('NullSafe01.name1 => ${NullSafe01.value}');

final nullsafe = NullSafe01();
print('nullsafe.name => ${nullsafe.name}');

// ! next one
String? s;
print('s => .. $s');

// String b;//! can't be
// print('b => .. $b');

// Car cars;//! can't be'
Car cars = Car();
print('cars.carName => ${cars.carName}');

driveTwoSeatedCar('Max', 'Zik');
driveTwoSeatedCar('Tim');
}

class NullSafe01 {
// String name01 = null;//! can't be
Null name01 = null;

static String? value = null;
String? name = null;

//! Assignment

int? someValue = 30;
// int data = someValue!; //! can't be'
}

//! car class

class Car {
String carName = "Aston Martin";
}

//! use of null
void driveTwoSeatedCar(String drive, [String? passenger]) {
if (passenger != null) {
print('$drive drive with $passenger today!');
  } else {
    print('$drive will drive alone today!');
}
}

