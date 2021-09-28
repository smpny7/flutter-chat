import 'package:flutter/material.dart';
import 'package:flutter_chat/model/message.dart';
import 'package:intl/intl.dart';

class RightBalloon extends StatelessWidget {
  final Message message;

  const RightBalloon({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: const EdgeInsets.fromLTRB(100, 10, 16, 4),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  Color.fromARGB(255, 108, 132, 235),
                  Color.fromARGB(250, 132, 199, 250),
                ],
                stops: [
                  0.0,
                  1.0,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 16, 16),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: const EdgeInsets.only(right: 18, bottom: 6),
            child: Text(
              // local is not set in datetime!
              DateFormat('M/d H:mm')
                  .format(message.createdAt.add(const Duration(hours: 9))),
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 11,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
