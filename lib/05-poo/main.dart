import 'package:initiation_dart/05-poo/classes/User.dart';

void exercices() {
  User johndoe = User('John', 'Doe', 'john@doe.com');
  johndoe.password = '123456';

  print(johndoe);

  johndoe.sayHello();

  print(johndoe.authenticate('123456'));
  print(johndoe.authenticate('1234567'));
}