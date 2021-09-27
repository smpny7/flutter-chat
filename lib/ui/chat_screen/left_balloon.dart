import 'package:flutter/material.dart';

class LeftBalloon extends StatelessWidget {
  const LeftBalloon({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.fromLTRB(24, 16, 16, 16),
          child: Text(
            'こんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちは',
            style: TextStyle(color: Colors.grey.shade800),
          ),
        ),
      ),
    );
  }
}
