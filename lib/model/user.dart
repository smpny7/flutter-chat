import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName = 'いけぴ';

  String? getUserName() {
    return userName;
  }

  void setUserName(String userName) {
    this.userName = userName;
    notifyListeners();
  }
}