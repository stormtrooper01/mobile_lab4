import 'dart:convert';

class Car {
  String name;
  int year;

  Car(this.name, this.year);

  factory Car.fromJson(dynamic json) {
    return Car(json['name'] as String, json['year'] as int);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.year} }';
  }
}

main() {
  String objText = '{"name": "BMW", "year": 2015}';

  Car user = Car.fromJson(jsonDecode(objText));

  print(user);
}
