import 'package:flutter/material.dart';
import 'package:flutter_chat/model/message.dart';

class LeftBalloon extends StatelessWidget {
  final Message message;
  const LeftBalloon({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 10, 100, 10),
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          color: Colors.grey.shade300,
        ),
        child: Padding(
          padding:  const EdgeInsets.fromLTRB(20, 16, 16, 16),
          child: Text(
            message.text,
            style: TextStyle(color: Colors.grey.shade800),
          ),
        ),
      ),
    );
  }
}
