import 'package:flutter/material.dart';
import 'package:flutter_chat/model/message.dart';
import 'package:flutter_chat/service/connection.dart';

class FetchMessageProvider extends ChangeNotifier {
  List<Message>? messages;

  fetchMessageList() async {
    messages = await Connection().fetchMessages();
    notifyListeners();
  }
}
