import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

class LoginData {
  final String username;
  final String password;
  final String email;
  LoginData({@required this.username, @required this.password, this.email});

  @override
  String toString() {
    return '$runtimeType($username, $password)';
  }

  bool operator ==(Object other) {
    if (other is LoginData) {
      return username == other.username &&
          password == other.password &&
          email == other.email;
    }
    return false;
  }

  int get hashCode => hash2(username, password);
}
