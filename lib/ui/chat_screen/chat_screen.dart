import 'package:flutter/material.dart';

import 'left_balloon.dart';
import 'right_balloon.dart';
import 'text_input.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.supervised_user_circle,
            color: Colors.blue,
          ),
          onPressed: () {
            print('HEY');
          },
        ),
        title: Text(
          'チャットアプリ',
          style: TextStyle(color: Colors.grey.shade700),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => print('HEY'),
            icon: const Icon(
              Icons.refresh,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: [
                    Container(height: 16),
                    RightBalloon(),
                    RightBalloon(),
                    LeftBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    LeftBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    LeftBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    LeftBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    LeftBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    RightBalloon(),
                    LeftBalloon(),
                    RightBalloon(),
                    Container(height: 16),
                  ],
                ),
              ),
            ),
            const TextInput(),
          ],
        ),
      ),
    );
  }
}
