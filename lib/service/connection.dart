import 'dart:convert';
import 'dart:io';

import 'package:flutter_chat/model/message.dart';
import 'package:flutter_chat/model/send_message.dart';
import 'package:http/http.dart' as http;

class Connection {
  String baseUrl = 'ktor-chat-app.herokuapp.com';

  fetchMessages() async => await http.get(Uri.https(baseUrl, '/chat')).then(
      (res) => (json.decode(res.body) as List)
          .map((e) => Message.fromJson(e))
          .toList());

  sendMessage(String text) async {
    // =========================================================================
    //  Package does not support.
    // =========================================================================
    //  var res = await http.post(Uri.https(baseUrl, '/chat'),
    //    body: json.encode(SendMessage(text: text).toJson()),
    //    headers: {"Content-Type": "application/json"});

    var httpClient = HttpClient();
    var request = await httpClient.postUrl(Uri.https(baseUrl, '/chat'));
    request.headers.set('content-type', 'application/json');
    request.add(utf8.encode(json.encode(SendMessage(text: text).toJson())));
    HttpClientResponse response = await request.close();
    httpClient.close();
    return response.statusCode == 200;
  }
}
