// ignore_for_file: avoid_print, slash_for_doc_comments, constant_identifier_names

void chooseTicket() {
  const age = 40;

  if (age < 16) {
    print('Junior ticket\n Price \$ 8');
  } else if (age >= 60) {
    print('Senior ticket\n Price \$ 6');
  } else {
    print('Regular ticket\n Price \$ 10');
  }
}

//! some example
void salaryBalance() {
  var netSalary = 1400;
  var expenses = 1000;
  if (netSalary > expenses) {
    print('You have saved \$${netSalary - expenses} this month');
  } else if (expenses > netSalary) {
    print('You have lost \$${expenses - netSalary} this month');
  } else {
    print('Your balance hasn\'t changed');
  }
}

//! switch statements

void matchPro() {
  var pro = 'teacher';
  // pro = 'manager';
  // pro = 'doctor';
  const choice = 'coader';

  if (pro == 'teacher') {
    print('He is a $pro');
  } else if (pro == 'doctor') {
    print('He is a $pro');
  } else if (pro == 'manager') {
    print('He is a $pro');
  } else {
    print('He is a $choice');
  }
}

void switchPro() {
  var pro = 'teacher';
  // pro = 'manager';
  pro = 'doctor';
  const choice = 'coader';
  switch (pro) {
    case 'teacher':
      print('He is a $pro');
      break;
    case 'doctor':
      print('He is a $pro');
      break;
    case 'manager':
      print('He is a $pro');
      break;
    default:
      print('He is a $choice');
      break;
  }
}

enum dayOfTheWeek { Mon, Tue, Wed, Thu, Fri, Sat, Sun }

//! add comma in last day of the month
enum monthInYear {
  January,
  February,
  March,
  April,
  May,
}

enum Medal { gold, silver, bronze, noMedel }

void prize() {
  var medals = Medal.gold;
  medals = Medal.bronze;
  switch (medals) {
    case Medal.gold:
      print('you own $medals');
      break;
    case Medal.silver:
      print('you own $medals');
      break;
    case Medal.bronze:
      print('you own \$${Medal.bronze}');
      break;
    case Medal.noMedel:
      print('you own $medals');
      break;
  }
}

//! exercise
enum Operation { plus, minus, multiply, divide }
void calculator() {
  var a = 14;
  var b = 2;
  var op = Operation.plus;
  op = Operation.minus;
  op = Operation.multiply;
  op = Operation.divide;

  switch (op) {
    case Operation.plus:
      print('Result is ${a + b}');
      break;
    case Operation.minus:
      print('Result is ${a - b}');
      break;
    case Operation.multiply:
      print('Result is ${a * b}');
      break;
    case Operation.divide:
      print('Result is ${a / b}');
      break;
  }
}
