import 'package:crypto/crypto.dart';
import 'dart:convert';

class User {
  String firstName;
  String lastName;
  String email;
  String _password = '';
  Digest? _hash = null;
  User(this.firstName, this.lastName, this.email);

  @override
  toString() {
    return 'User: $firstName $lastName - $email - ${_password.replaceAll(RegExp(r'.'), '*')}';
  }

  sayHello() {
    print('Hello, I\'m $firstName $lastName');
  }

  authenticate(String pass) {
    var bytes = utf8.encode(pass);
    var digest = sha1.convert(bytes);
    return _hash == digest ? 'Authenticated' : 'Not authenticated';
  }

  set password(String password) {
    _password = password;

    var bytes = utf8.encode(password);
    var digest = sha1.convert(bytes);
    _hash = digest;
  }
}