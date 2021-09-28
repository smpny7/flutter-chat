import 'package:flutter_chat/model/user.dart';

class SendMessage {
  final String userName = UserProvider().getUserName()!;
  final String text;

  SendMessage({required this.text});

  Map<String, dynamic> toJson() => {
        'user_name': userName,
        'text': text,
      };
}
