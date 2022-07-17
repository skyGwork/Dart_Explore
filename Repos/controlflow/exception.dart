// ignore_for_file: unused_local_variable
import 'dart:math' as math;

void exception() {
  excepOne();
}

void excepOne() {
  int min = -1, max = 2;
  int zero = min + math.Random().nextInt(max - min);
  print('Random zero: $zero');

  try {
    if (zero < 0) {
      throw NegativeValue(massage: 'negative value');
    } else {
      throw PositiveValue(massage: 'positive value');
    }
  } on NegativeValue {
    print('The value is negative');
  } catch (e) {
    if (e is PositiveValue) {
      print('The value is positive');
    }
  } finally {
    zero = 0;
  }
  if (zero == 0) {
    print('Eero at the end: $zero');
  }
}

class NegativeValue implements Exception {
  final String massage;
  NegativeValue({
    required this.massage,
  });
}

class PositiveValue implements Exception {
  final String massage;
  PositiveValue({
    required this.massage,
  });
}
