import 'package:flutter/material.dart';

class RightBalloon extends StatelessWidget {
  const RightBalloon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.fromLTRB(100, 10, 16, 10),
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
        child: const Padding(
          padding: EdgeInsets.fromLTRB(24, 16, 16, 16),
          child: Text(
            'こんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちはこんにちは',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
