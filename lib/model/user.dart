import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String? userName = 'いけぴ';

  void setUserName(String userName) {
    this.userName = userName;
    notifyListeners();
  }
}