// ignore_for_file: avoid_print, unused_local_variable

mapDemo() {
  var map1 = {};

  var map2 = {
    1: 1,
    2: 2,
    3: 3,
  };

  var map3 = Map();

  map3['name'] = 'Max';
  map3['id'] = 12;
  print(map3);

  map1.addEntries([const MapEntry('remarks', 3)]);

  print(map1);

  var map4 = {...map1, ...map2};
  print(map4);
}

const person = {
  'name': 'Ishan',
  'age': 30,
  'height': 5.11,
};

Map<String, String> examCall = {
  'String': 'String', //key value pair
  'roll': 'ex012',
  'place': 'first',
  // 'marks': '90, // no int allwed
};

Map<String, int> seattingCall = {
  'roll': 01,
  // 'place': 'first',// string not allwed in int
  'marks': 708,
};

var personOne = <String, dynamic>{
  'name': 'Ishan',
  'age': 30,
  'height': 5.11,    
  'isMarried': true,
  'list': [1, 2, 3, 4, 5]
};

// Action

void mapsInit() {
  var person = {
    'name': 'Ishan',
    'age': 30,
    'height': 5.11,
    'isMarried': true,
  };

  var newPerson = <String, dynamic>{
    'name': 'Ishan',
    'age': 30,
    'height': 5.11,
    'isMarried': true,
  };
  print(person);

  //! data mutation
  person['age'] = 31;
  person['isMarried'] = false;

  //!add value to person
  person['likePizza'] = true;

  print(person);

  var name = person['name'];
  // name. //! find usefulmethod

  var name1 = person['name']; //!Type Object

  String newName = newPerson['name']; //! String type
  //or
  var name2 = person['name'] as String;
  print(name);

  for (var key in person.keys) {
    print(key);
  }

  for (var value in person.values) {
    print(value);
  }

  for (var entry in person.entries) {
    print('${entry.key}: ${entry.value}');
  }
}

void pizzaHut() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'pepperoni', 'milkSake'];
  // print(order);

  var total = 0.0;

  for (var item in order) {
    print(item);
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    } else {
      print('$item pizza is not on the menu');
    }
  }
  print('Order total:\$ $total');
}

void dinerChoice() {
  var restorents = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var venu in restorents) {
    // print(venu);

    var ratings = venu['ratings'] as List<double>;
    var total = 0.0;

    print(ratings);

    for (var rating in ratings) {
      total += rating;
    }
    print(total);
    final avgRating = total / ratings.length;
    venu['avgRating'] = avgRating;

    print(venu);
  }
}
