import 'dart:convert';

import 'package:flutter_chat/model/message.dart';
import 'package:http/http.dart' as http;

class Connection {
  String baseUrl = 'ktor-chat-app.herokuapp.com';

  fetchMessages() async => await http
      .get(Uri.https(baseUrl, '/chat'))
      .then((res) => (json.decode(res.body) as List)
          .map((e) => Message.fromJson(e))
          .toList());
}
