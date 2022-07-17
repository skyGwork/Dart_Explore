
void functionParameters() {
  requiredPositionl(12, 20);

  optionalPositionl();
  //! can change the parameters
  optionalPositionl(30, 40);

  requiredNamed(a: 40, b: 80);

  optionalNamed();
  optionalNamed(b: 11, a: 22);

  hybridNamed(b: 100);
  hybridNamed(b: 100, a: 200);
}

/*
1. required positional parameters
2. optional positional parameters
3.required named parameters
4. optional named parameters
*/
//! order matters
void requiredPositionl(int a, int b) => print(
      'req_positional: $a , $b',
    );

//! default values(field)
void optionalPositionl([int a = 10, int b = 20]) => print(
      'optional_positional: $a,$b',
    );

//! with null values
void optionalPositionl01([int a = 10, int? b]) => print(
      'optional_positional: $a,$b',
    );
void optionalPositionl02(String s,[int a = 10, int? b]) => print(
      'optional_positional:$s {and} $a,$b',
    );
void requiredNamed({required int a, required int b}) => print(
      'req-named: $a, $b',
    );
//! order does not matter
void requiredNamed01({required int b, required int a}) => print(
      'req-named: $a, $b',
    );
void optionalNamed({int a = 12, int b = 24}) => print(
      'opt-named: $a, $b',
    );

void hybridNamed({int a = 30, required int b}) => print(
      'hybrid-named: $a, $b',
    );
