// ignore_for_file: unused_field

class Student {
  int _id;
  String _name;
  double _marks;
  Student(this._id, this._name, this._marks);

  // int _id = 0;
  // double _marks = 0;
  // String _name = '';

//! geter
  int get id => _id;
  double get marks => _marks;
  String get username => _name;
  bool get isStudentSmart => _marks > 80;

  //! setter
  set studentNewName(String name) => _name = name;
}
