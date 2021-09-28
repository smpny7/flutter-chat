import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/model/message.dart';
import 'package:intl/intl.dart';

class LeftBalloon extends StatelessWidget {
  final Message message;

  const LeftBalloon({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.fromLTRB(16, 10, 100, 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Colors.grey.shade300,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 16, 16),
              child: Text(
                message.text,
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.only(left: 18, bottom: 6),
            child: Row(
              children: [
                Text(
                  message.userName + ' -',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5
                  ),
                ),
                Text(
                  // local is not set in datetime!
                  DateFormat('M/d H:mm')
                      .format(message.createdAt.add(const Duration(hours: 9))),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
